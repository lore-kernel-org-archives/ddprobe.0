Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211FD2EBDFD
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757761794; cv=none; b=AV27O8Q13S40g+0i+JABMarD9qEU049q70jTTqTg3pnOCwaFlA7N2cxCkVMwtjYLVusYQbGwxH1bh3qo/smqAS/jgc0+q5xl7FnSGIzOfU0dPBwGxhKtPtAPJ9FCEHzWTA+tOFahwSle5VNkCkP2qu8IRYau0vgseSP0L7qBQKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757761794; c=relaxed/simple;
	bh=xb7VMiD+JYpubUOMk+mT4z50eTVx+pxEQxf5esM7wWs=;
	h=To:Subject:From:Message-Id:Date; b=n1kofyKF8IaGL/u0yB5cqZnRF+l7j3HENPqg67gsCnJ67F3lz3TpyJh9eSfhk7TdLwnwKj1GDrsrHlEK1ob6JdQWGRgAiHT3iRyWKrqHRhui8Qj4S68ebT1b6tZVlJUg5vPDhBxShQiPIQFY5lCZQgS0bM+fXt+ZOjhZ0lRlH6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uIP0/sMT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIP0/sMT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57B3C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757761793;
	bh=xb7VMiD+JYpubUOMk+mT4z50eTVx+pxEQxf5esM7wWs=;
	h=To:Subject:From:Date:From;
	b=uIP0/sMTLpdt1BJ+blicBmH/Y1mr4kDRZ2RAdNxK9zC8zIcgKeOF2t0Lb0fhsxJvv
	 wCGeutjBVPQHurl351fxtre7cx9KRU28I+nWNSi0u1a6hVya4qPqWjLiyeNHo/LymC
	 zVwDbSxEIJA5KhfjCWm7SUnRquDiT+me+ETQOV/sYRqhFhxzxCnDzazC86Oovotxdi
	 A/OMdcB26k41gMtuY9F+pO477e4tFJVwJCAS20wLMLRa7r8Uaj9Bmm6JK54HJf4QFJ
	 j48W7HXuQ2WAQ73/ZLzxq1dcbm7aZJnMIMRmovCz5egVXGDOUCANb3ERiFRLtMX9e3
	 bH0QJaCmF9cMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F71CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175776179358.13969.12122067633639934201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ed0a7b87f4b409bc19e4acdc9ce6ec6527f2d3f7e2c1e84ad5777065dc05e35
Date: Sat, 13 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757761793
