Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7BFACA6B
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745560793; cv=none; b=KOtzT+z9F4cUUlQhuNyw3FZ/kORz+KUnQG1y1RfRgC3zAOnx20a0G7k0VhrkvU/7RYRXMKN5/t5tnnHIpUabmmCahkBv22n+bIb0MEbwPddTC104d2G5SdTexp+aFrM0iYAsQGZFLB1LjfDryPxH37mmlGjbst49gprl1PePxhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745560793; c=relaxed/simple;
	bh=Rh4e4e9D5A/Kg54R2phkmlJCaXt2mDMvKTH1KIeBX8o=;
	h=To:Subject:From:Message-Id:Date; b=XCIU87AWrjQd55yXsyjiDYVUDan109CxRMo5lHHtOd8NH93eo/xjBMhMOcshfLyiCgoadyLFdu1Xo8CGaVmZgDk3W1mqYaKWzd2qTwWvIeYnmRC+ootFJWsRagmh5nEWsoYNrJwbcBdx8ErV+6H5/r7PEF1mRUgNLPucbjnHxjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TK05JgF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TK05JgF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B7FCC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745560793;
	bh=Rh4e4e9D5A/Kg54R2phkmlJCaXt2mDMvKTH1KIeBX8o=;
	h=To:Subject:From:Date:From;
	b=TK05JgF07dpqvXZgr0Ni/XsaPPClqeyBW7y38yTXXRUqJ5s39vzJ61ONlM52e3QRc
	 Yf2k9o6DxHQMTZJ7YGNOtM/JoCt/EU33vP8+vinbSymjOp+jFQMpbftSFUC4E/Fa/G
	 qgOfdbaVYhZvuG+XftNe0lOX4ZV2G1FhsN6c+WIjC7z15c0bvqNZJVXQT/a7CKvT2H
	 5S5SSG/w4pmN6/p2HOuOltjNCEMgIjxJEb8Bn2ynS7U5MGrCGzP9Fs88dmXoId3pUE
	 g6MVLfYgoGMQNAn1N2yBePlFXpvJy4d1ZuMZUVjSlFx47jNOOaws9aLMmX45KNcH5m
	 N09PAEB1V3WeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E38DC369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174556079357.13103.10638696971030040933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e03f4dab6283fa10f1edfe2d484bbe7d88321a899c558ca3c890ab88524ece0
Date: Fri, 25 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745560793
