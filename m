Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3436E40DFC6
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776639454; cv=none; b=AeBK1xmRXzNV1T0xONqZ1PLAeLNiV1hXA+zODBD/XNu2yR4XhKeo0xldJyCSb4ll2HNmNA+UO6bokA39ZMpjxN5DvZP/utnLQHj195SQgWHZ59P97e0pSjInk1Wy7PasyGgqIpVbEnSBDfrSe7Ju+o/OwbfM6XQzuCqWea5xnCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776639454; c=relaxed/simple;
	bh=88aQomZcPRdpkSHKVEtCgKJcd98g9NNXGNC1BOpwQJA=;
	h=To:Subject:From:Message-Id:Date; b=Qpu0TIR92nEC384nuEBLYal4vnWZBzaYlp5a7f5E1oBNUjELysbZm4RxtoMn6oThCbt1mKd9/ZbxR9tV6CIemWZDrjh6MXObCsjQdxh7HeNs/JWmzbNJocO02+/D57bqWNKPhDM1tjiZfoNRCj+Fa+hAPnpmjlrfKJDAcIt7twA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kelqc9Dr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kelqc9Dr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFD2C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776639453;
	bh=88aQomZcPRdpkSHKVEtCgKJcd98g9NNXGNC1BOpwQJA=;
	h=To:Subject:From:Date:From;
	b=Kelqc9Drvsqv1z1gb/BczcGuIszDieTTkMW0nriaYwWeSWiiuWfIr6v8hzkvbYr8Y
	 ty4oAff12LtL3FQbFujoPw8BYQ2QFQenTE7QYjgqLU92Qq85hB8wYoVnPa5hBVeh3F
	 x683STJ9rcSpsviT1zrzSV/07zCBdmuYnKQ4TVNR4cw2q8I3zMKuF0ItYsBb/LOi3F
	 XGmiAaYdrVQRyRz2TTNKMdbv3jq7Wt1pJgzopXQLqBkbrjh4Qf6Dsz2iGannaq2E/C
	 4spmipCGMz7WdiRnmtqMdKRPFOpYoREzfq1ynjCt2nCrZBfuIaxLUODIvgxcFXqaG+
	 4jVN3LWeoyuLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF718EA71AA
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177663945368.16840.2280053461312532193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 520696aa6daeb86f72786dfa9a861caecfc45bf94a0721866e9db6dcac93d95d
Date: Sun, 19 Apr 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776639453
