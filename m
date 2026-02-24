Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2782336EABA
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771931094; cv=none; b=ky8mZgWYhWjHG/CuWHelcgaOWpxK9acO35aGWw0eziBjXNFnzgD/rnOrT9HXaGqnyhXgly1FOmFY9ghlOz7LXl6R/r4RWsCdliQqyVEhjW/w6jHI3eqgftwweLC4lHQ6+619vgQajedCka1xfWBT5BAGW6XSs1SWKZL6Jr8M7ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771931094; c=relaxed/simple;
	bh=Wlp3I2xrU34DoOKKDhpbuEBVUdETWn3WdD8NJk/qKFU=;
	h=To:Subject:From:Message-Id:Date; b=hJC5v55I58IQ9x6yJ5MOZZNm5z+zZ9hor+PhBJbvwpoHzOOeiUHF7vB9lA0BHHOAhe4lFBZHnc8HSTzyXK6CZPj2eettPS2sGBBxd8SGq1pSr4v0n8dyYzZR/kXE9Zx/zHXaMnAsG/dckpCluiapPvj3I+2z7b01mMhEtrTrtDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHWIMWlm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHWIMWlm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB19C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771931093;
	bh=Wlp3I2xrU34DoOKKDhpbuEBVUdETWn3WdD8NJk/qKFU=;
	h=To:Subject:From:Date:From;
	b=LHWIMWlmHR+Y3bC72P6/ho42JJIKw9uTH4MhJ4IzhUeIAauvI2MRw5kvxIGg8Z2TW
	 i9YqUrVxo6M8d8jdoXGidkw1FP53C1URZFDxC4/iRJeiFtarpY9EzeEULqTnYam/vz
	 Hv3nzpL80Sq5yo9Tk1JwogFb3OewB46GzYufRF1TZz3ZtjZuhfL5qWELD9Gx6piGzD
	 Lt2OLT+t/8P8nwVgots2Jef+hJCPij8gfn9p5MSmuZbbiJduIPtnygeZWKYR7wjzKW
	 1bQImL19a7xIybZoyxakmpZY3ZyXn5vlnuFfsSuaY98K81keF2cnvYozsz4AjaItmC
	 0G3yV/rJ96ezw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A34A1E9B253
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177193109364.19958.1852183481109724807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 142e0ffef5e8008a29bcca3e0870f172521e9768893b352b1e9a1c01bcb99f01
Date: Tue, 24 Feb 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771931093
