Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C0E200DE
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725644754; cv=none; b=pR1dGyLwiWOVgaA3y+P6o4fUvBTzPIMnRecjftUjrkg0kDPOTRPG6/b4Rnt9lbYyYGG3L9G/3zyUPpcaBX3EUK8AwQwEm2+TZ9pTKeGxbB1ChwiDTuyE05aKdfXn6tns+tLwWG1dipWPsq9WME8JC8etqsE8dygdAMC3HOFOveU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725644754; c=relaxed/simple;
	bh=1hE8mLZDWXmQx5inEeASMpLPEdb19oYYMy3qZqWxvR4=;
	h=To:Subject:From:Message-Id:Date; b=J7b5TU2F3wnWo5TmhyRjBMV+Hvuz0NT4ifJUsDHfDTejdk3chCbf66zfrNwT2Y2zsrYR/lhL3gjoi1uJAr43sUllkv5Yv6tV3LWsz+6qQ7F+Ths42jtuuI99mEAnTRmwBpxPPjkQUNsIOS6A0zbFp8i7SNlr/muYq4UweZxYYG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LgAVIrTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LgAVIrTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A805FC4CEC8
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725644753;
	bh=1hE8mLZDWXmQx5inEeASMpLPEdb19oYYMy3qZqWxvR4=;
	h=To:Subject:From:Date:From;
	b=LgAVIrTq9UUODClx2mDjDlguT42AmfJhk/HnSylYk7XPp97RjfSOh3t/vIIgrmS4h
	 6suf5PSO4N0cPDFmwKYWc7pbOFfDXGFOCoAVy5XJhRkFt22acQ9Ym/tnw4vagO4f2a
	 L2HQERde4hyGSHzSkwesf8EnCX05PLDh3PPqpcZ65KOiPKLVNfN60bJbzCAV01omwP
	 54/7hZXemlJ4mDAZrMxRQW8ugiT4kXKa63t38OuChgv/76j/v+NNq7GF/VqyyhWyVr
	 BwRWkqABF/CRqUVW/RynN7YUPv0F0Aa45690GN88ArGFSyuHd1JOto3yCrNbf5Au+u
	 htoFZnk3vsn8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940A8E6FE34
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172564475359.19128.8868736167651603913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c3fe6bf5dedb431c8ae53f9614b834687e4c1e8e5e993ce972f0fed1c91d7bf
Date: Fri, 06 Sep 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725644753
