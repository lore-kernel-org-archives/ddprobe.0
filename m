Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EE546C841
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792278634; cv=none; b=H/09ayN8trWQvx5ScOru1NrIpg9YgQcBUEJ4Y2zhMllbXxGAqhgDB+8ZvCjkWZT5MFchYCxPBLRJ59/dEdqe20VSUfkYeEXbIbGUyZqh8j/5d5iyEU22zpsIOmXvMhUKPKV9+f6mfG/iFaQqkqvN3Q69OhCyM1ZujS7sqOovgnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792278634; c=relaxed/simple;
	bh=1TtMBzkxG0/9z3M5gGAG1HpJICTg221cNv/Ec1u2z7Y=;
	h=To:Subject:From:Message-Id:Date; b=Moqn/aq5i+uPL4X2Iz1szM3QRYQ02nEosILV7LaDDEikXXQm8z8oVCpE1Is3j/e31qQPLT7CawFJV00SkXHsnoRsNZtGiIZlALD/zs2krwrHjYyJXhyNxkrFF2g9xmODiovv6DRN0iFg7o2c5lO2ezZxgY4MEGhFfi9TyWf/SmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBEjRmoi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBEjRmoi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6EBEC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792278633;
	bh=1TtMBzkxG0/9z3M5gGAG1HpJICTg221cNv/Ec1u2z7Y=;
	h=To:Subject:From:Date:From;
	b=KBEjRmoig1fIjIKTUmK0VdCPINSknfvCnTZRCub6Brn8kYhgUPS1KTB/mlcmR2iec
	 Om0XdZoN/s+YanLCDNJXSSznmrIawDxgH56dD5IcuyNuNCEjWol81GBum/70L72UNO
	 30o9/cXOPhTF0NY5s42bNZmOYTw2g60T19X1aNoJ2yHsPjGe11wDrBDiCLQBr97Tr7
	 o+azRSaHkuDNVUDbpBAkjw5hRvDRXfwTVvUPGfREcwQlRYRWB9bINex4hQHWAXUSTW
	 ld+LAUwyP39MRRUwsmpG5xAqb+ttoFEpmvUZ02GnVmzL6Ui4+YY+/CgObPwA1xoB2n
	 xT8y1h0q41K4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B44C2CCF2C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179227863369.25359.13508964761134962556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39d48416577d3fde1cc6c8de2ca772a8022eb75e755bca68cbe369ae320b15d9
Date: Sat, 17 Oct 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792278633
