Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A952CCC0
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756106394; cv=none; b=DV8rX11ENGe/mtViclTpEvPpfuJckgCV5UpIVdOFTJ5cnD6vJAu4Dams6MAXafL3dBVvDmfsjTYDlNZvTGsP4/lfKQm2RSWtC6rmqobSsQVropeOZbT8Iv5OPaFz04JUwjm6LvbEuANrgm8cp1pva4BT76FWpjtBEx60LIVcGvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756106394; c=relaxed/simple;
	bh=V6Olr47fm8hgYeC/96DqxmbwtysTlOTlVr80YKRU2/0=;
	h=To:Subject:From:Message-Id:Date; b=GalgYm7RrcpH5OGtSEKuFCe4hBZ0aHYoU9Hv0aNyPhHhQGrv1aUYfQeJtnOH/mWNBQGslGZ7uiYEAFaVQ/3vXmAPxOHKyneFMCI4zTXl3imoQSxpnC7TK1i97043Ajvt81J8f5CeGgleQCulSy2Vs2liqOeyWc5pW9i4bc18mcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sp9XVTWk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sp9XVTWk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BBBC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756106393;
	bh=V6Olr47fm8hgYeC/96DqxmbwtysTlOTlVr80YKRU2/0=;
	h=To:Subject:From:Date:From;
	b=Sp9XVTWkjTeSQNnI6JpJ2xVC4ZqIIIoC0AEpE89B5FTHJ+Bt/p0YGgXZLxReqqRGt
	 VHWM2N/GrsG4lMCwlvzuBuCfQQ0n4uSJuLVrGAgeqoZbkggzu2xXo2TYqGm7bIGRzt
	 8vviNCeCxl6yeV2rHzI58mba6tFyQOISeQmq3+5H+WApOnNb+bI0F8GjTaygd5UNWL
	 zQQVwClLwQCoInCSuJddEOFhqoFGM2bEWvOcXU54Mle6oJT/H7zd+NryTxAQV70g7X
	 hz9hdltLyoM2vjzMPfqMfSsQX2+ylb4a/eyuXbjCHS0vxoIIDijkSU0D3Y2c1wMNB2
	 CVkE+KgNeJkPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF60CA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175610639357.13588.10068801892391720892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7860abe37b7bc6e13d2b911128b8c9acfe4d77cd260b3171ac01485dec82a635
Date: Mon, 25 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756106393
