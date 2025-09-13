Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C41212557
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757737794; cv=none; b=i9AANrlQwmtXcThpoolNqo/wcg2TKCUzrbZkZ/5wp1qY0YGb9s2AciLnOZWw0iQtxEdP0FkCCpGmg4JRpHxhF5dWBlYGjstEn3/9m9P7AYCosinqCf91eW1vCV/gk6a2jLnpiou3hZtfBoGmaqW8c0YuMWZ/PGQJfDb+x6D7bjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757737794; c=relaxed/simple;
	bh=oUo/n2uRjA10NdQ4ckrzwQr0GPtZ5p7Ivhg6EiU6oMs=;
	h=To:Subject:From:Message-Id:Date; b=ZKlXj3GHTX/QgBcTRTgjSV+flalDm/ClzMgzUSAQ7mo6lt14CG1c8CZNiM8PDUfp9roXqpS9JsKiDKF3pzFtys9WjsS+feyVhhKwgnFxQMvYlL11gzdslXSavUOa+//DA5Fzj7M5mLs7bLuoSQRJcSCEtNVsh4j39uyzqKFB02M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2uyOlTR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2uyOlTR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE81C4CEF9
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757737793;
	bh=oUo/n2uRjA10NdQ4ckrzwQr0GPtZ5p7Ivhg6EiU6oMs=;
	h=To:Subject:From:Date:From;
	b=q2uyOlTRGLF+Z15SAP9CVoixAs7iNEERsFyg1DujsSlBKE7mCa1HjQ65eE0BpPMje
	 d06SvEpeJjBZx124dASDP4ypGUAOIK5Kh6b30ziXHoSHRzb8XehLYvJohbSIFv/A1M
	 wlTMIdxSprS4f3/vt3Yf8EOzzQa8Yh1udp9ME3NLzH1An4Krk/d80jzP6JDbavUDIA
	 upiXo6iMcsKL5iBUGxUwEvK83aPn4gvCfWPPra8o/wY1o1B58zdgXN1UvG2q4WgH6K
	 T/HLCXrRYrp/z05L8dzhLtNC2G0af3UV1GN0/zJvJX0bdIwyUn69vm1+K+ookM/Eln
	 zMuQkepgD1roQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936F7CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175773779359.23320.8208316148186774003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61451d0f688cb821e22de2225cf7458b76f9f2bddc459d33d6942026ce3f9693
Date: Sat, 13 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757737793
