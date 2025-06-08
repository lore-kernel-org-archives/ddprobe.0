Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3230E194137
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749411594; cv=none; b=QCTGJPyvC3B+EGGzCX3frQGOdsb23GxxM1ebEvUb4Vl0dl+iJJloJ4ktfz18sMqiV5iLg3lzfzI9nxomOVO4JKzkM3Deoy3yxUg1lD/uBd8UpfZntp+m84pkCu/gcP5pxU/6nTVbqopOqSfYLvnUFyAQicSWxVBv8igNAHq/E3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749411594; c=relaxed/simple;
	bh=32rUVVYoqIf0l30opheblgaPoWZwLsXTo0TA4w+VLh8=;
	h=To:Subject:From:Message-Id:Date; b=YAJZ9XqrTGNf+mUfnhfEkPtsU/jiKeCqeIgym3tWQ92tvAcd3SA8PEaSYTyib+X1V5I36+xjWz2h1j2HG5h0ELBWEhXfD+B4sAH4LKciERdRw4AR3gyG+s7qWEV4Rx4wZdYZCZJWyrIlvdVTOR5ck66rOCMyOnhRvo8+IOmYwmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdYMVx+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdYMVx+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A358DC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749411593;
	bh=32rUVVYoqIf0l30opheblgaPoWZwLsXTo0TA4w+VLh8=;
	h=To:Subject:From:Date:From;
	b=HdYMVx+Z+yRmVaplppMWM36C4aAnMVo97ccuptg1BaoNS1DKYqsFkh3SNnWlziL6Q
	 6KCFHIxXC7iYzy2QbtepUn+iGPKwNFfyeI5u2N1yQWLeAPNw1Su2xsBgK7xYsZqQDM
	 dbHA34QooW63rFCZN08gvfURDQgwR1bh7UnmUIiDWhLf+VYCCx15pC+cOJHnh5S70x
	 cv+QrCstvbpUywsjgUlHy89qd49jVL833PK6LdvU4eFM62lNFPfIeeX9ccdvOgQce9
	 ZRruK6ErbdGSKk9slN3oororbOapkgFRT7/1eenQHs/u1jo0IIgSi539TsmBk5o/zp
	 wxm2+0PSa3gPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94773C5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174941159357.31433.18133097755564246891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89df04b7a00632c8661ee1e65770f6adb0e6e1e0c0751a948ecfb09bf4e7e0a2
Date: Sun, 08 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749411593
