Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375674A01
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762650594; cv=none; b=u3hAatEsyOZZp6po//OEGdq9781sEQogEBsi3JA4aZrA4a0RRDlcSS7NKKxVkMwbqTk3rwQNSBLmZJkvb2Ji31Acvrw/hMBBh4kRLz2oeqiLY+ZsqxjQb+CvFniCZeyYXqlcT3RRUJEqJ2uQJ6ehwONsZ2zLtSCJGpGdFveAT6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762650594; c=relaxed/simple;
	bh=4XJwIcrt1Bw8MY83HdZhmrOVHcHkaa9nAZttv3FDeoI=;
	h=To:Subject:From:Message-Id:Date; b=XdIG2T2dqbWVHWbJC8iQiT5TqOJmNQhWjW1vjWmbgudu0ZVMwbsAgfji9vyzYVnuJEiaxj3cagRVEj/l1VLRzkDaEXPu9RHX3o9HPd6fQhnBeitRZSoiXv/p0Vdk6RYUwHep3c7ueeq+Uz8Mk+InReSIo8OlZbAyb5Xf/TU1h5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShU6m0Hy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShU6m0Hy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A93C116D0
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762650593;
	bh=4XJwIcrt1Bw8MY83HdZhmrOVHcHkaa9nAZttv3FDeoI=;
	h=To:Subject:From:Date:From;
	b=ShU6m0HyzkhgNXjRSnRlzT3s0HMzNVyRXmLeB7BiHr15HiuJKFqMdAH2SsCwb9WUY
	 T41scez/++8JuoU+60wipTEpDnGGGHtGPoBRKVYfll+vp+82Y5upzwpBNQDV41z9g9
	 Rno0W7O2gIZ7KKEih7ehF3E9vNqQsiS5vsEJOtU8sgbwU21nVjnfNyxQmRI4iiawNI
	 tjaJoSxaIwCEgve7XNtTXZzdlaouCm4qFXuC9H251L7sj58XVHISbRItJNzB8XhMDN
	 Y/CJCmhjv8pbqFidYLF8sSjvocnhWHGT5gIs2OmdLilrrC4Zn7+EiTLX1iPqObm18H
	 p/tbZT5CCBwIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911B3CCFA18
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176265059358.20909.697061234838492024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2a35a4b81f560788ee696750bbb5040a166317885f787ec1b714b42f855e18c
Date: Sun, 09 Nov 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762650593
