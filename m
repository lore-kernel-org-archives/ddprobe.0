Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26ABB7083C
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778118454; cv=none; b=QAswaRLJKxCDLUvmtb6MqTyv8sGT7s1X8kq1frcNEJgiKiCMNNXvDaUT+lDYgqfxBq1KD8NyJBVXadrgBhLzWfL0yKv+3dUj+t42m13CHtiGzw24up8Uc3aLeqEeDQ1XQ9Vk+dh6udLcIs7UkKXxBKP5nMKhPNJPoWnl8u6KeXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778118454; c=relaxed/simple;
	bh=lMMe510ydRwDQ33Rg1/Xxl47E/oBHRPbGnPGVtHxWhM=;
	h=To:Subject:From:Message-Id:Date; b=JYedaiGKEQu3tyJNTvDY+QMAWZxC1SdGJfBwBh8UEkrzppj5jp0y9qNQp2G1J9frVooGJsRT/PiD1afhIdsPHBD9PmxMG7ONDUR9sW+X9e05vuHSQOJsqPGLYWWzSyV7i4oKYn7yO2CO2nZraSAMLkgqC7EHdWjoKQzstMd8s+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hY2MzGWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hY2MzGWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC481C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778118453;
	bh=lMMe510ydRwDQ33Rg1/Xxl47E/oBHRPbGnPGVtHxWhM=;
	h=To:Subject:From:Date:From;
	b=hY2MzGWoh+0PYLeyZ/lV2gBmiH+S9926DXi3RV86zXi54UC3zhKhxlmaFXf0MAtrA
	 p+r4PKMbh/FAR9hVYneuNGLFuVjrhMeWcuFP6Hauu9EXqYP6LresWMtRxw4pcBgEbk
	 DQhH0aJ500H2zea7sOIRqmdQ7m32bynRP6tU6wVdql5EhDVw9EPGS7CIJ/1chPIFka
	 hL3NEDn72Ssoiw57lcoFoVMnWfGIyI9g60Uq51wwngJ5bSXwnBRK4jrY+KhAHRPAlK
	 ODYmAwfwF9H6aavARALbKnCjbPDeMHs9zGgKwS/YPHypgHQtXgQMXUrxG3Glq1A0bZ
	 aOtfYLXcHZ3fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAECCD3436
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177811845368.21462.2376514107272390224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 708dc90457255354d4ebbd7f319f1b6e32419089e8475465a890dfcbcf4026bc
Date: Thu, 07 May 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778118453
