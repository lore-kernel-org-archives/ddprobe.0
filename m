Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2007E12FF69
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778037454; cv=none; b=THO1jPpK42/gO4yySYkkAyrYaJvoX2/aHezE40A6W3OZDzLPVJqB3vwDbUOtrANAofRjERppXHB32dYiFeXajpmzi29M1Zq7wZr3Nh9CAP1ueAR+QIihtJOiww802sgqgYYSpt+n3CP2fUZ+GaFcsMSYOI9Rn2i9GYNpDaPka5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778037454; c=relaxed/simple;
	bh=NejxI48wuqyjhY5YNrT919wwS26lOuRFeMmhkkRk9GQ=;
	h=To:Subject:From:Message-Id:Date; b=WgkG7zuEnrlQgc+7hmlMPSznoUaaXv8azr2Z5fnbtT57BNJoSqrDZ102m/9NRL4Uxcaf89KsaujeHAO+gAFCUcj6UuBVmWnuwnJl1BVpWaRne3h3+D6F8p40UVC/5WTfrxoapB0KtLVAsU1d67Wfh2ixffCSSmuMWTRhVYmEpbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDv3MRXn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDv3MRXn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB8C8C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778037453;
	bh=NejxI48wuqyjhY5YNrT919wwS26lOuRFeMmhkkRk9GQ=;
	h=To:Subject:From:Date:From;
	b=HDv3MRXn2G9en3Z9mVVx8BuJ6Fw+5WeiaVaOR4rdGl3JvMQaUuqOvbAsEDkt6soA0
	 WZIpAwCUYzGpEpU1i9Oa0WD6JD7403sFewWiVElXjdLlugcFMBB8geakR1Ooc5VgoI
	 VFaUyVzVVCfS4MX1BVAEUJOfjhFuUvDlNdg8oq4n5XYKWIpD4QRxFI76si0hkcxq5n
	 mQXL6f9vvhifi8uNCPgVmA1locbz7gX5MgTfRUo06qgmuKC5GzRIyX5k/7tU6wfqNl
	 I9kA5mHBfPJjPcIri1DpQ264f8taCEY4rTU6Yla5xMfQOyV50y6YNFdAH/moRQgnhe
	 lrwxXahfWYL4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B8DCD342F
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177803745368.28643.6368385914034424263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9bbc987442d1cc4f1e39b8b4fa4faf7f43bcd1b852d3eee53f6c88a8d3be214
Date: Wed, 06 May 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778037453
