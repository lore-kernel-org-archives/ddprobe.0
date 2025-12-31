Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C12742BD00C
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767217433; cv=none; b=KkMLj0U/yD3O/fOgWGUF4eKYkLQuYfcP2Jwek4I2nhRSuGUfE5WobBUJ6A5wNXbTG6DEvchMQrfMty6tOICOPwZsJH8wdAoz3XzNveCvO/K9G8qCAVycTVoQ3RGb0m2tKeY1uwrO6qtjQ/gkuQw4IDzJ80R0uKrY0UDUr1SoXR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767217433; c=relaxed/simple;
	bh=dsAj5Us4lFGabb2E05bR9E62qtV+cDYiHbJMPUprVLA=;
	h=To:Subject:From:Message-Id:Date; b=Wvy0zgW/Ibj67dPkXFqx5ndaYBNGxXTGAM0NDu750FnoulBhFtpFXmaS5f07y1ilBldBJQI0cKa4IK8gMyD9QJZF3D1XI9tZ/Kkxt1AD3o92hSvFfTVHJBfl6QnLflSTogLF4oCAX7ZwSUvOQzonWLf5ZLCxOD1lTHLtF9DpAvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nK/74Ap4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nK/74Ap4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B12C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767217433;
	bh=dsAj5Us4lFGabb2E05bR9E62qtV+cDYiHbJMPUprVLA=;
	h=To:Subject:From:Date:From;
	b=nK/74Ap4W8ALOOW7OgPd9B0oRRjdpbITCVq3agkIOCk/ZJElWr5VaM5rb/D4bBMoJ
	 BW+lrtKUd8jqRk+NxpLu6fDJVA4WzlCgFQkqC072w2ICf8Lyde1BeiLOA2z/3DFzR4
	 zKUp2PfHA86/jW1iuub62COyM7x4Pxfzqr4MouV1y6jk3i0mujJiDHZCmwbiVDpNXR
	 rmGY62HuKUvuCu+BhYTabjievmjvPhfNCrTo6G2HG85+9+KYqa6XL1vvuGaFgO9klg
	 sF2fI4SvCqpYbSM9uVTD+RxGbFCNq2wgOT1b5JyMMwS4vHkddGawWsDNUvet7KrCZS
	 haSNtNcbFVWbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918B2EE57F1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176721743357.25666.4619065193186006260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 646aa92f200b740db947db8c5b11254bd0cb7ec5122acf3ecdfbea5b8ce35e59
Date: Wed, 31 Dec 2025 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767217433
