Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEDB10F9
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745386794; cv=none; b=tXFHVOxM/Bp5xZHthq0aRhbY7PLlgY4ei7GQZoo6lwnPO72l2h5CHG4ofLajKy6kBsiZ6gP663KIneeTHdIAFUT7AqujHHgx7LHMmxziyeZ+idyEuaP+xIHs76Z41PxrAXO8UwJ4cMup7Zu78xYXo6BTy8ofkNlCQSWgpp9OyuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745386794; c=relaxed/simple;
	bh=xbyhup6IGNQ4UL1d9jCfwRshFEturOo4lFTKfLaq2DE=;
	h=To:Subject:From:Message-Id:Date; b=VLe2Wp1+g7WMly0sUvmu4jwdQ4j7oR3Z+QPew43sxfozCmVh8JLyFOB8lehuHH786pxhVq1xO/7hrTfKWZOnH1CUVfyQ487uqNM9Llcy7KGlnh7Xd89mh00BfwfFwRfJjNVbcarZ5a1DI5t4aISqkcjBnqIjUCh6kzZLs9ajeG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChbsVTN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChbsVTN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FABC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745386793;
	bh=xbyhup6IGNQ4UL1d9jCfwRshFEturOo4lFTKfLaq2DE=;
	h=To:Subject:From:Date:From;
	b=ChbsVTN+NdqaJykJZJ7XGHosh5gx2fwflXsHyZl9svtaWkgMi/7ZX1Am8rj3dNs4Q
	 irim+sIMqDHQipYpus9n9nNBUyHrUXlzhEzL3kpoXYRbjdOqfYC9cIWDxVoABRO9v5
	 6XDmvhKuJ7REEWp8dna6QrQPMWA+R0X23ZlF9xgGdGRyiN/c/fe1CmvE6DCF5lIM1g
	 cQ9cFtAnESjQ7llOY7iHlfIe53/yLftmYwYad6InqApdsdWAEJ3P7RTDmZ9r05T0RL
	 m1Zn8KAwryv7fZgAV8PfL4AOFwTrSNzt1nSKcG/5G3VBZZmqKw3A+i4zSZEi34208r
	 eZBPu101h/ZzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901F9C369D7
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174538679358.27896.4777944853179532075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a056a0662fe0cd5e2c75f062b2d7cc6b07ce8065d32cb91578a610efc95849c
Date: Wed, 23 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745386793
