Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C22E282F0
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745277594; cv=none; b=B7ZUB5VL9/DbijpKj5mtvhgU7XkWsmhvOXXbkU7K6AGfhzDLhZrUbppIifL6ps7C5d00y7VW/7/qtqRyQhQJv2pmdUFSBCqVyWkvQXDuGcVJJ9c182/EcHhXvXy8wTs+SD87jQOpZ7wJDTgdOPcOnoxbn+xF7QlpLBuyxirgqHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745277594; c=relaxed/simple;
	bh=39naPIG6m/an1gDjgSEn76qindZb9eBxLf0/d2yRLtg=;
	h=To:Subject:From:Message-Id:Date; b=CK+1dJcbCXEKx6R6Y9wRHmMi63mSzjAi3S66i0brg6xTpy+LO2/yGAT0ZEdNXt/AovJh1KFvBnvhQDpNi6+rNNg2PBba9Dyn5u/LjYShFm35qMpM2aeMKgOs0U+mqFs/ZMElEQSLZk/lkN5wmgKsPydQ5TQKOmG9orOT2fNdaoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bsQpEVTy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bsQpEVTy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B208BC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745277593;
	bh=39naPIG6m/an1gDjgSEn76qindZb9eBxLf0/d2yRLtg=;
	h=To:Subject:From:Date:From;
	b=bsQpEVTyMWvfZz/VskOkupnajB/LzcyGzinPpIFDicF6BnWkhWgkuuuJ5PJpmBBjk
	 +4Yt2xeLiGGXgdAI/RGIAt2VgnbTevIkCPap83Q90XbpPUWdAs/w2O/UfVEsmRtiAn
	 oFH88lXqpa0HWUYMLUsSkT8fRpqc6B8YlLrVhGsl0+G9oDMyjwS/skINNkjRe6N7Nu
	 E7OXkUkFSfHWPMX4JGHlynI5VJXVlL21IFDKJmaCXOV1JFmkL711NfO1AF792tqySe
	 58zsZA2c3zc6iw8vFxRi7NlKVBeNN3zNRo18CxNzv7TzfDMzXN8nRAziEeRkdklK9O
	 VO++MKwYBUSZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999C9C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174527759360.12452.15943252438190093778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 153e9008244af7924e17c34b3b1c6f5c5b60e85c043eda94fd6536a84c66df7d
Date: Mon, 21 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745277593
