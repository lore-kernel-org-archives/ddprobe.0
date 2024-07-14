Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D7C79CE
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 02:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720924223; cv=none; b=VY8ZzZMgbtamqoHbUuxEOTLzawI3G8ayZZaAxLyYw8NzN+l4OLQa+XbCisUAc5IdnEOuaoebkfse7E0XSWcUf0XT5nWsLZHe1OK4zW0Rcrn1I2uIujJ6cPqXzgjqBjJMxURDJm4ZjJXBML7e26Q5joDNiOVmRSyfH0tDDbWXOhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720924223; c=relaxed/simple;
	bh=WVF9isHS0Fzs18PdES62Ek1eix+Bt65tkKaGnXxHmkg=;
	h=To:Subject:From:Message-Id:Date; b=pj2aM1lkjM/81cH5RzPh2CfxYAQJmGMzU3Y50eNpNzXcCdLt10Mjf0MZtSe6zyv7Kz9Emv8/E7abtl+d6u3Yu+zrmXMUrLSeSNFgyD5/+9R2G6ZIaOHvcMJCN3LVDf8cgJdJSG7UpCchRaF4nIXtPDEqr8goH1rxHpA0E4KI+KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZk+d2lM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZk+d2lM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF74C32781
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 02:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720924222;
	bh=WVF9isHS0Fzs18PdES62Ek1eix+Bt65tkKaGnXxHmkg=;
	h=To:Subject:From:Date:From;
	b=iZk+d2lMAEo1twXp1IKMSNOu1Blwbo0IJPSHpVpFNMiPRgurVSY7z1I4BzDJlI4co
	 2rUurx4owIg8+Wx/sY0LGqo77TYTLW5NckjTVQE34j8tNEk89PgpdeKrrxuJj86SyX
	 WNNF7PPrRw5OwwXKbK37RMbLDTQ+8eOV/yGp/NOXozCQW6/YabN4e1HM+B+n8UH3PK
	 zgG/CIRF+IbUg6dC0SWVuq/1lv4avsBPI+sS3frwyvb2NGNTBCrF1AUsbJzbhX73cU
	 g7Vwg127g93zQWaV87M3pLyv/qA1c7q9rEoYNLU42I3V+ildRCFKrZBZ9LgMDWuWpz
	 vuvOljksmyrJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E45C3DA45
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 02:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172092422276.7998.12046732695490918117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2532bc708e6c2d8b7448dabbbb5f0f3ea0164836e7203acd43a084ec7c5060a
Date: Sun, 14 Jul 2024 02:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720924222
