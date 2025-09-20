Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1516FC3
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758351594; cv=none; b=f1nNJ83KCaxcOYJ2C9wE9glCk6GecRjGAEfliB0R1WJLiNzJpi0cp2b2h+lEPMtX2ewpt1NJ/id7YrjaHKemZI5oT0IxqMi2swO0P6RvARfzHHXccDQpZrY9fFZxlwOKAQ0izBD4m/gcBQY/a4d4IrxpOf+x7dD4q34Wjc/bg2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758351594; c=relaxed/simple;
	bh=/PuGfiMhu8ctHLqX23aAQSjwcNBbb94Yz0D/bmkRcSA=;
	h=To:Subject:From:Message-Id:Date; b=OPjFsZ5EBM4ixYH8CTxeC4uN/kYNR0CINzk2adoanJCoXsUMDbAtBodUuC+dOcuFPeL/+Nd2ymve9bvv9ygKDElNNwXcxCB9Rm+/T6jXEDw8WPguQdDpRFIU9LLJsvfAmIOqIbokrxcwpuv5xsb1G32gtoPjmtSLiPS923jSKVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQDtoUgN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQDtoUgN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81E2C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758351593;
	bh=/PuGfiMhu8ctHLqX23aAQSjwcNBbb94Yz0D/bmkRcSA=;
	h=To:Subject:From:Date:From;
	b=DQDtoUgNDHw/trMQBFnnC7QG4CtSrgSchLdgS1sFEUip1gRHpav44pxyrg88Kcsxu
	 TI/zoTKRNv8BoeRQThSkfDiBxtBysscjmzeGV/DvGPRyx2TEw+jSNlYpa979aDKxKy
	 4WeYYzWXR/2HsExc8X5go+wZkWAtenQMYEm79IrnQUKLz9+kkq83wZ0YyAt2V/1fBh
	 SjpTYxOD91yTnThf+xaKlSpRzd9gAGhKTz5qqCa136BSu+T7aXdDrmKIu6ZzmX8xdT
	 TpgjP69M9ZGvBqslX2vmBvsoW5RH3orQVvy2YKNDhVWS3Nqh55V70WDVuHgZmQMx0b
	 ncreSy2r/vftg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9608BCAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175835159358.4049.1047079200361534870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f0da07a763ef12a6520813cb8838e8b54393073a8598da15c5fddedb7ec78e4
Date: Sat, 20 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758351593
