Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63821126C05
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735424154; cv=none; b=jxqouPf8b/1R0Z2KlzjRljE8qbrzHHKGYx0PyN3DGMzn4DXw5/01FB0Q+y9FqB0LDFExJPwSQOkOuxS+24BIZl/GBCncBkNO5Jg7o4JUAiTbR5ZNod+UwgkC193E6sY1/2JVezMqZtWlgNScckMBvBZjad0YtH2vR7RayjzzGpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735424154; c=relaxed/simple;
	bh=H60+BBstdZqc9SiAQgRPLasad3JPHl8h04EWTuAwJGM=;
	h=To:Subject:From:Message-Id:Date; b=eaNKMFePis7xX6yj6dP6YpLmcf1hjhG1q1SonVFPLbnP1Zic1Q3TkQxa0sZgQcLYuWryLbWknfcuanuEYc5zdhWOZCvqD2n1+J1PXBsz/o5ZnE3xXoER7yGrIIV+WiziJz1RmLJu65uYkjDNppaxPh3Ly+XPi79MDxqCeLDIFow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4yRxN7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4yRxN7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B2DC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735424153;
	bh=H60+BBstdZqc9SiAQgRPLasad3JPHl8h04EWTuAwJGM=;
	h=To:Subject:From:Date:From;
	b=a4yRxN7KAwF4x+2bl/0i1A1DP74F2miWjRfhHypI2s/z1EPHHpBBd5yCDToAm79In
	 LbPtR9vsiRni2WI1r58e1jCNRiBGkzNtGWJMKknVI/7wFCV6nOyfUrQLvSNmoQs2EF
	 qk09Zcug1TCgzkYD1pL6h8T4qGqXmo79PF6sMiATeoKocJFcLPQ+pmXpXRFtxiow3A
	 CBDb7DOAVDIwc67a/GVCIV4uPPmM+ScU9UrI2MunutedkPEqwhCBZTu9HuHzZmspm1
	 MEBAxtpYCA0i3O7BlyuwINZspJvi4Nd9GTO4+kSPG6JmF+YiIZW/Kvnr+ioVHKLzqu
	 sFRBFftO5x/wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3195E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173542415362.21438.16189130882181122416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 800d7c3769ddb5d903201cf609df3885694f928687993a58ea541278cae2027f
Date: Sat, 28 Dec 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735424153
