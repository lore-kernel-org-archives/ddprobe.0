Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6407B364049
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 12:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779022234; cv=none; b=k84SQSzVjUcz2eMC6p4x3RkqCsQGgrOLx0DFE8Y1DXoZ9kRpDA7Z/thqe/Hfh+vXrUnWaMUbzieY4RlfbB+bYym1p1rPlf5Vbi+9ap7CGUIkVOWUI8XwiG7yR1Hwas5z//qrh/f3NEW4APxhoLPN4/SXqa0yxM4eKHOyUVl1ylU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779022234; c=relaxed/simple;
	bh=QowvJlZCjzvg85mzIBOLeM8PiOVp7C3foNPaRtlAVzo=;
	h=To:Subject:From:Message-Id:Date; b=oYpezkXG98pPRbQXRWs1v9yxsHPRxDzZeAnfT868AdWThHNC+oVfbiUDlli340WCYdvy3A1gGzsEgp5Rsl1H+72ropGqMHc2di1t7ccc+qGAVd6O757ZXRjGg0ojrS6UMHEYuAhW3Q3Jo91wkTt9oZr9tE77z7dcW3LotGrtxl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cuYWKEV0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cuYWKEV0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0EF4C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779022233;
	bh=QowvJlZCjzvg85mzIBOLeM8PiOVp7C3foNPaRtlAVzo=;
	h=To:Subject:From:Date:From;
	b=cuYWKEV0yrdca4YhBfHQJhOqGxO2z/OcHwmCePSMb275zwPZyeCWDKJchgglf1dfA
	 Sc6/z11IrIFXLWaeiCEDmid9qHnoQ7uVLr2CsgZfcm82GESo3lu3saRWXZawzCsMbb
	 Lo3ZMLT2Kdn4Hag3Y2DsMr8131n/bSuJTkFbyWBEj0N/q/Tj/dzJ4xiBIX99Uz1JWC
	 lB4Fj+qPH2SawX9deTj4Naj7Wgyez6uC2YoLMqG53//xkBeUY3HikmNqPkQPDNMSJI
	 Ew+ImbzRDulfLl1liKWmmFVimcg6vmaWcegYAkS0u9HFcypvx50mqDtPeksCtpc5av
	 PjAOO5EWQr0tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB87CD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177902223371.25006.15530475917127502256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07c5b69e9bdbbc7f2a0d3e6417e5d552a284d15676cd124c3012587784519586
Date: Sun, 17 May 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779022233
