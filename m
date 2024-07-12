Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4604717BBE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 06:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720765043; cv=none; b=KQwfqEVLWjN+SCk9UkOlZV5d+cR2do36Ej5c5YDPezp/V4B0IM/UptSijf9H9MDT98lMYbbS93oq7obzUJ0lCqBn4lyMRdw0SRIQY+NAygM5gy1XzSiN6sHYDexr+lNjvt8OBsu+P7xrfwD6rMHLCKaRs8LSHsrcLje0CbcrVT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720765043; c=relaxed/simple;
	bh=bQ7apLCSpq/F8GYcqfrHjoMBc+wd4CvHE0ykT3+HeMc=;
	h=To:Subject:From:Message-Id:Date; b=gtVhag8wsHuhoPMmbpy2uzWxZpmT9u+gMERsoaKE2wM+C7RIV/gCMyuT9+ZYhR3cKKDZTUkzpJpsUZn4MOSYya0DxKjJWkrxXRqLYMxPNoFbZc0f7rwd/uZDvE4W6SaWSFv4vV38vSmM871+H/D22AlJX4AsZ0n9tYirSSxgyQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3/r3j6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3/r3j6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1F6C3277B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 06:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720765042;
	bh=bQ7apLCSpq/F8GYcqfrHjoMBc+wd4CvHE0ykT3+HeMc=;
	h=To:Subject:From:Date:From;
	b=P3/r3j6zqFmTYJ0hx6oiGguRk9mRnYY5rV02vkzLuPY88jNI8oEARmQJ4VPYdS4hd
	 KKZFE43dhRDLnZzZJZs9R02E3pnwD+gKg65PoJzwf+iC1SKBW/LMk0zJmDisAUbom5
	 nzyIphy3Df9jqHilonUJeTqJ7tWlPM0CuReSpOIFLrIIAp7Qy6XsomC3FllW8qrgcB
	 ULs1IpmieBir5oCdi9zH5MSHv2hJ3/b1xHW5D82XcB+VknQfDZgAtCQHr/8zIl3qAP
	 s3K7JZOEIsUI8LXgljUNBTp4jyHKwJVHicH+m4SEIFcalUi1KnlBi42X127X42Foem
	 Q53Ek0Qw/IXXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE22BC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 06:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172076504276.27705.16653437754092732017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b1b4a36b12c555f0995834b3d12529bc4d455b8ff01cda6714b89bb5bf44360
Date: Fri, 12 Jul 2024 06:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720765042
