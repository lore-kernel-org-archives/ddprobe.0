Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2616B381B0C
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777738054; cv=none; b=DioCF7kgSm+RoaVvtrtQu1JGV73k7RIB+WlKR8HM0XH8/8QnuLapDFbEs6oof8GDQs52agfPQpjGkEAN+VmmJ1AMGWHRRnhV/ulNBJ37ZRmvqTT6k/VceDlTkVAKsdLvnn7/ZZI9KuJlWSSLEogD+10ChdSfvVIPLzXzwn72GvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777738054; c=relaxed/simple;
	bh=lvBRZ/B1JWlDECeotP3VjUtekWGiBozY4WramIwFJyU=;
	h=To:Subject:From:Message-Id:Date; b=DOBFMsFgJMiqyNINnheDv487VWoGy+zBzX3J8APMGO3Qzp00MPPJE1QLoVWlargYmUBeVlYgHkTPbyB6rozYHuyX54jfUK7rxBJVq7ISpmCUaH1GyujMRJTJmerOaS1gpVOkAM0RQc0or4TFInjaHWW/Zyq/BlMmFAVggTa3s1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwwpgOQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwwpgOQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF7A9C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777738053;
	bh=lvBRZ/B1JWlDECeotP3VjUtekWGiBozY4WramIwFJyU=;
	h=To:Subject:From:Date:From;
	b=EwwpgOQ69ooR2rlRNYQRunt0jaK61ipr95EQmiER+bG+RruOffJe44NDZtL9IKtia
	 WZ5KJLxY0yj8WXe+HKNtmy56y1aduUYFYgh/hCNWS7lT/mfxu2K8hptyRfIOxu8esv
	 7WmW6LVEG3r4YeBVbeut69U/9GYcnq8A3Dugb16SFouZQ5fwdopBWTSXOaxGe1Zgqc
	 kauZA53NraxUwybWNl00znlqqMmNf02vlofM3zjZs7XW4avey0RE65/6Wr8dsFXX23
	 bWb20YTpkV8q3kYVLrTb8X5kBfck8e2pYoTrNywMQzuf2MIQEoIxZ6rhVNVfokRsnM
	 yh/hAHUcMGm3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF556CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177773805368.19093.8990869287416981894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5217a32345f2131e7409d653273e0ef6d0c2da9af773736025cdb7dbbbe8bbf1
Date: Sat, 02 May 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777738053
