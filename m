Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1121A4E68
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725311154; cv=none; b=YgTR+kc9jTX+/DUWF/MZ0Rb+t6YcFFSraLvGAHe6HCsfd2zGQ4knV5KWlkDlfU7icBvxTIEcSyo3v2ovGMqjfE2efqEOw1DeOCi2ddqjRcH76IErjMpElCs70W5WBvU2lYT80y3zIDSo9WKUiMf1YG9lQBr7FlgW1b/L/UTKNNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725311154; c=relaxed/simple;
	bh=VhlbftMTTVYBnkBIS/ZvUTc82odDISAF39Xuoge1hig=;
	h=To:Subject:From:Message-Id:Date; b=VTENFMDH3pTlGuU4qBR9hNhGDQtxXknXdNXW4mk1yZDdqp1dfykNZnn3dFD/gydZd1h9F9+st6P3Xjx50RMJZjmzhVnY4qj6rzX/AAigh2LCqiiRKNOoLyRFM8Bqg4/+J2UCouQsdbO7dIu+VOqg+NAKwT+Jnt3Icn5oN5bzF90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jK71EOGG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jK71EOGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37EDC4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725311153;
	bh=VhlbftMTTVYBnkBIS/ZvUTc82odDISAF39Xuoge1hig=;
	h=To:Subject:From:Date:From;
	b=jK71EOGGPt4nBYapyGL1z5/kSKXzfr/nSMbVihVSfga4WwMIB7UAV9i2w2Dyhr52a
	 yo7G1QzlZ9miPL/a2bTVMd8S0CDPXfsVAK+lvTSxAnZSSpW+2VNzef+9Jtv46v/hHS
	 6is+hmMtfU/7ht2hKvP1+FHYyCjLEzh9N7pZBnn8Ziqqi4Oi2fD1cyfCT3R9dOqW7X
	 h5syXLakRMbURWhBSRMRn8AKrVDrbg+DIswNRNElh5TD/vzY8aJ3L5WC+RhGtUfRZe
	 3KPGlfvQ/gZseFXlEt1ga2ELbkWj+DoVXenR2maW+kOE79n8Nj5ota9OU3amvw7bWK
	 xo5z5bYrlWEKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93742CD13CF
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172531115359.25763.10517139452831582681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07c372b040449f8c6b8f930a651b69bbd01b82f3d5ef33d65301126e33202f61
Date: Mon, 02 Sep 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725311153
