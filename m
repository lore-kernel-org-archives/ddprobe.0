Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241A11F461D
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754253594; cv=none; b=Il5+YhBUh350n6GKXkMJrWuo1oni08Qgl3EFN3YLXTlQ+Zk9RBnf+8A8wP6wm/rJGPw35vkIPkjrM7qUDPU6dsJAkqGKHIVMpqVSgobuQHBdNYNY6GGwYCMnJ4AiAvUX2pJPr7Y1FYigLqe0HjYygI2BfLEvx1keVA72MQrJ0Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754253594; c=relaxed/simple;
	bh=q1p3EZmWzmWDR9V6AaEcBX8/tzTrgScYSfRluIhWkLo=;
	h=To:Subject:From:Message-Id:Date; b=l2n/w8GC4Zw1Mgw5XyDBjEW7jNmyHZ/dg0aIRDi5T5n0kibZ0qZQNZxkuW3mtO+7RqgkhLh01eCS8t0LJTsCA59lGnvt3eXXrl08liLqPxTWPw8gJTddGRYRussj2isEhpePLRTN9ZVnSWITL2CPjs7J2Dpw3oDJcBVBRpAz7+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l57AkSu8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l57AkSu8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A705FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754253593;
	bh=q1p3EZmWzmWDR9V6AaEcBX8/tzTrgScYSfRluIhWkLo=;
	h=To:Subject:From:Date:From;
	b=l57AkSu8m+Dex1iiMysExwjEmzLIUdKMIEYsiOaypeWQU/Zx5QHAn/n2oyb0ovJMV
	 KSVbJnXxmC223XXb1kEVSF2iprE8FEMLTNO5DCRkGG6qJfzexz83skDjQP0YIWupdd
	 S30Jekd6lm3zyS25MF5zC9VMfzPu2RXaxlc6mt9dy37PdeEeuN3zRtjLElET/84IXS
	 E/YGPWtLwOD7v2/mUs1BaKgAaggRb/QJYh/BL9rMluPZZcz632MAS7n6gpTV928l0e
	 Dz7W7a5jhg/otduUTVZeSvbeXrOOobCakXj5jRGGIOh2w9l5Cc4emeVrW640XK62T9
	 5oSYEGUf0CatA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92632C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175425359357.17030.14989412707280281576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc7d5dbf929c49f12105e5a6c0460226b3c1da84e4b132c47aa5ca02d7806555
Date: Sun, 03 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754253593
