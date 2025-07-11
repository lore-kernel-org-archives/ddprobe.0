Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3E21C4A13
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752211194; cv=none; b=X6knDtvJn4g8chvAjGFHbC7YTKvOvLfiXS//4xxAI0+01UjV3mguR4sdymjqD/scOZh18LA7sOItvfu2rQOje1NwtqjRyj4SGJUt5Wd+qmz+NsfjTNxCf7ZmMFsw0Qoqf6fUIVKQd1ri7LMqcAcXH+y3aFn3mzSj60gM90htcnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752211194; c=relaxed/simple;
	bh=dxkmindh6MXvHVrowlxfC/c10P5/2nFLJiH6ENrRDtw=;
	h=To:Subject:From:Message-Id:Date; b=EW8GVUxmDjQU26jaIDWlTvMT6N4FYrAzxa4q59u7/pQSRyNpHJfxN1p6/3zoVsYb8ueNvlpyuEBfZtPkDUt78IDsMPpJ6E782qXhqC3XPSrmCWOci91Dgm7fx2sAaFviOAk+jRrwCogFNQegonpW0C5Mf+R9uWv9xByPECfok6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/hn19w4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/hn19w4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D00C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752211193;
	bh=dxkmindh6MXvHVrowlxfC/c10P5/2nFLJiH6ENrRDtw=;
	h=To:Subject:From:Date:From;
	b=a/hn19w4spr5srVT4DUSOyBrL93PmEo9uLwLynFJsUAV8KlF6sPBFnG5xNHR3K5Hk
	 K1gldQN55nLKF3Dbjk82L1yLblKHsrlxwAsLaPAiMeFW6w41TUAcqNGXSWV80AetMl
	 Kym2YOJl+X+A0H3gUX60rRMAakHnrR2xsr6vG/zSglmqV1Nxc0ViioLwaC8ikz+g1p
	 bUvE57s8JyRa3c2Kc11r9Z/zsYCpmFNkkgOzzaymv2OQU0+pvdKtAkzDvnaULo8T2m
	 bBaclE2ty07MIrheHKDhLIT7tQ5cp8Kr8u7HtOpaKHjwRbZFiu1sk+1XmJT5DF0oHj
	 QGdzt1WmsCEJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7B7C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175221119357.25048.3058528961905419036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67be30c4800600c7a9934def8c3fbbb311e0566cfec933730697612be641eef6
Date: Fri, 11 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752211193
