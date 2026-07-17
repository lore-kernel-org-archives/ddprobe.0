Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5586B367295
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 03:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784258914; cv=none; b=uMDbegbRjunP0MR4xOA/of2r3rCScx21xclOKmaW3v1eHzCaxxz+qaWtTDQyHqnb98qL2+maxc8ar2nJiFZRgJXRr0Td8DyUivs17K56cZ+wxu3QfBGM79fYJROJiotBeRtg8oi5epRmFT644T3+WRhIW0uEqq815fcC2Xi64pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784258914; c=relaxed/simple;
	bh=lNGm1oeRw3uaxwtFbyXSnvJ7WskcPKPNLPX8p0tkrnY=;
	h=To:Subject:From:Message-Id:Date; b=slsu3l43nhXTT9LMywAtXqKtPFh+ZRhkblteNbcSUk+TrPAZcKIIzeDbIkGDbuSdpcb7o9YlGbY/dyxdFUdlYcr1EbUhhl03exayYRnRSuhLXjavAc3zp3kKDSgAXtHXkKpffpVC8uZsCTd1OT2tn/QKsXWU9XRDUMnpZ9GHMiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nczk7GZp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nczk7GZp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE4B1C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784258913;
	bh=lNGm1oeRw3uaxwtFbyXSnvJ7WskcPKPNLPX8p0tkrnY=;
	h=To:Subject:From:Date:From;
	b=nczk7GZp5hEfm0Wl6NUSXHFsu9Ih0Sx8xiN7Vgi6a30FD8odfhdWEdZIk10AXp0ZC
	 vuoFA7abzzN7WA75EvptuzmMKhgJ53RIYmNXpArT2XwLtGiGAkUvDKjFozCRuQLFYv
	 YtIdrmXaCnzzj9F3dV18Q14K5G1pi9ElMpWXGf62Kg1xX0EoQaHIYjlBBEo16ecFGB
	 hXFfmjturhObsMWzWifXtjhsxcj2jMhVDqcOc+AzHpoWSiOMzBDGlxvhxM1eXxoWQt
	 K4pbvhDCnI3+1XA1+Ch8YSaRlg9Dwn/a+xsEYcxHlRb6udGLeX/P4nZgimzaJ0wcMe
	 IydDbCLxeeqjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1FCC4450F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178425891368.21431.11216738280504097722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a704c2d517cfa53ae233e0c76d34111bcd13b6fe5e163307b0932c7253c0026
Date: Fri, 17 Jul 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784258913
