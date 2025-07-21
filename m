Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219B721FF3E
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753124394; cv=none; b=HfbYpSo6zovvOD/xj+qddkba86uB57LAon/5b74+4lyOYMjoYnhmCsP2C5l1YLGDf4MPJOWYfUfiGu2+eI9k4E/VayIeVENU74oeWFKYt1jmz5tjxl9/n2o9b8eZtQDzzBNXvqeEDAvi1AoczbeQOquGVCo7D/XF2HflBrxuZXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753124394; c=relaxed/simple;
	bh=crq3/iwwe7XhU6eyW/kPujlG7RF+2aI0SHfi5IsTzrE=;
	h=To:Subject:From:Message-Id:Date; b=Oqs9kpa7XbKMDlb2472TO52uhqF1iJze1PA1xUPwGmqd7/iL/73dZA0o5dIcvDjz/UI8a71kuuF9qNW4l+dxamd7MkRdbxP8+/bq8cUYo4yHlFMjoWTlgZ+cj3Y8L8Eo3nN5i5GBVo30MzmXXmp/w6WLX50AHx80KbCuQtDuld4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKGRk6BS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKGRk6BS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D32C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753124393;
	bh=crq3/iwwe7XhU6eyW/kPujlG7RF+2aI0SHfi5IsTzrE=;
	h=To:Subject:From:Date:From;
	b=vKGRk6BSCcsxDHUy9vlPM1q5Mx5D56RCKGFqm6VSl0Ew9MZR1iqA0i5wvv9o6dHNn
	 49QB3isaM2LLBmtG7eqAD79MnV5mfpF0YsTet7RQQ991CWpL3+B1hdzfRtTB/J9kfM
	 l0UMWLh1M1m2T5ip7+8y5t/M16NBlvHySxhA4iccy0BbsuFzcIe653QLhphf8Pr7oN
	 kc4adic0GNSdBjDnQHFp21wz2PVjumjXFd967u0AJudHUtNMW3cNaFM8vH377kkEIX
	 eAGM+aOt28WlLwEmyaOLlSCGnAu8BqAGFiUocl6x7o3cVwnvy5WzQbHVmjZr/g2NQE
	 aXMUH+w1uauVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1CCC83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175312439357.26600.7429631346368325814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4035bb8ccc621f85c1c5eb08bd64d3f210d77a298dfaf67298a8dd6cd045845
Date: Mon, 21 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753124393
