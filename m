Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA83221FD0
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 21:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765489374; cv=none; b=UDci+Tv/FfBkznvZ+BJ6c65ouZjjh9nV2rDgpeLjTpoN9USJ5T7JP30oOCVlUOKavZkjDUvbj8zVzdoGRwON+MlsVD5t0sGMejDw67/Dd1RhqPYKJlisvnDjyP8LG6rJbWizgS3B6WdUdQiSyLwNsewfuQfyKKixRodR9wlnApw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765489374; c=relaxed/simple;
	bh=oKYjb7r0VBXqFSz/QykLxNDxDrarL0pzggN9FN1eeYA=;
	h=To:Subject:From:Message-Id:Date; b=PMydhYczFxugmL2n7rY4DcUXaLW2pVBwSW5U/3syFhrf2MnC3jLFFtL+Ejp6N6OvXvm3BM8XGg1Me1isixBM0AEXgzm3vRCbEh+c2kLxSw2s3mxTKRFlUGG0qYCoCwIve8ywSOVejxL3MVUxGibF0jY/iZ/kVnYvuWXgI2mCy/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0YKcWcc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0YKcWcc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B147EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 21:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765489373;
	bh=oKYjb7r0VBXqFSz/QykLxNDxDrarL0pzggN9FN1eeYA=;
	h=To:Subject:From:Date:From;
	b=u0YKcWccnRbxwGY1+oc+G72luHEE3K43/g7gsDVnOfRSrJGKzQLS+iy/JftyckyuE
	 cjprxiNHZkfxveYvCSSrtq4CDkx0dBRl9eZ0g22dnjj/3WfT8ymI8KAPpgcuyCAOnY
	 btNxHnNMVBp2pQkyrTAwGzJHKVJzoNuH2FijxwzGfXFAB16br1AflTtIMfWGA46Qgw
	 7GL08Wl2UfJhqeJpgI5h6s4m1PlGeLu1CXmHfAxToCPNmttXuqQFEp0HuW+yxWmxD8
	 wflt1xNFNIstSAtAVjiEuSlu4JEqxUUmOpZCfHUix+ntcymCAEPPkAeZ/NUyfHIj0b
	 lkLsr264ovRlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97879D43358
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 21:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176548937359.26222.2113142340143717954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d30042a5cf3fa88962ae2faa6cd6b87fa7a17fcbff9315b50c25372989f19932
Date: Thu, 11 Dec 2025 21:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765489373
