Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A448442C
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758330595; cv=none; b=cD2QioBnP5zCxrvc9X9SBC+PLuvtKCWUBMUNaird9umqOaU5r0XWBlI1mMHLOh5d1fRifNWOE9zz0Ubi8wNnwuLCOeAwEEQmRDIICMwfxcP7RS8/VmnAVdBLVNS6LMeiOJPBbP9davMMIrt+wFzWPxMW2amWeLILHyRNspoAmTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758330595; c=relaxed/simple;
	bh=Nmlm92ypCbJoF/Eh+6bDCLLzd0ndRuxAAIyjZBv0xY8=;
	h=To:Subject:From:Message-Id:Date; b=PSl27rpKrt5VuUdzetqimBRubGVXnRqUWSnmOqM3SKG2IomphGMfPQGkKFix8t3QMw6gw1HcZINVUjYBIhBCi36wpwWfUx0ia+PFeUAEguM4APVyxy44JQ0TMml8fJl/unjUA+Y0EsYBR4P279hlZMTCfA8uqhKzRMRF2npiHRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSdMrkgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSdMrkgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3566C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758330593;
	bh=Nmlm92ypCbJoF/Eh+6bDCLLzd0ndRuxAAIyjZBv0xY8=;
	h=To:Subject:From:Date:From;
	b=mSdMrkgmLc0CeMPyIy0fqTKYlWynydni8q0CmK2DAILnMVlbisRfdEL1QxB92LjKc
	 cXAqRYDhzaOWnHdPcvGTqEEEXNAMrwPJsG7jsmknw3T+hmoQYSC+D9ThUBaUdg/xf5
	 72SwOPJhxNmmN/Y23GIXl0Jlx2gSJlDesoCYJD7Rz7jIx5qsS9os3MBTc8WfT2unmT
	 i6euCuGi8tttNnjiDSa3bpsQABtIwkpZwMPErI21JdQAS4uGcQM9+lP6Nq/jH4d48M
	 G6Y1XMU3OrM0ZAIsplu381Ix4K/cVvBXqblcYnnKb+C/GJHhmAfx+6aGsmoFXXRq69
	 kKhHZcQrT5oVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CA4CAC59A
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175833059357.28472.5042104703505154478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 622c03048a85a774de5104e58ac92abddd55d49a6355769cfb39472c5bf860be
Date: Sat, 20 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758330593
