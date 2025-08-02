Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E641607AB
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754159394; cv=none; b=KkxXtZKo0SGmTlu97Lk2assM/aAfprnG6OeZz7HHNRfzaXaTbjccW1vsVl7ccDnEkRsEMEW+4C0H8muHBtEGdw6JO21rvUu4pshwuk6UnRBeDxlP0F2o0bH4IQpQhN1Mmh6CCV43utv6TTWd3ueZqM/9PA3LQRISb+KSamx+FiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754159394; c=relaxed/simple;
	bh=9Ab1eKg1BRhuspoqdNgEOqJSCAFRt/ZDPCx/8dcNsRQ=;
	h=To:Subject:From:Message-Id:Date; b=gd1xFKgY546UHOHA1xWEP3Qr01pzd2vPfXryanRvttvn+CZEaM3HrIski3tNT0oP/C8r0I2XuHeCi43R6pYMaD1acD96ThgQnhP8jB5R7C0VsISMtZSvjEnHhTDLjZg7gUJGw6XpMCUAiwAnWTSc0wHzXssDPfi/PBDqX5rdsD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFN+mOez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFN+mOez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32ECC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754159393;
	bh=9Ab1eKg1BRhuspoqdNgEOqJSCAFRt/ZDPCx/8dcNsRQ=;
	h=To:Subject:From:Date:From;
	b=fFN+mOezakEF5JrCffiOsPUXPTUCA6Vu626diOlNEtpSR7iX1tcViWSwbEljOOxB5
	 RUaGaghZD+bzBfPcYuGJXUm/ffOGs6mXGxtJ7TRujFij1P4EAMBnWa8gHZv/pUb75A
	 4hIlpwiXPsIg1k6yfwUJEX8FgDqRswfScnAsGLiqvJb9wX6/jawMyd7516XCwGcvcw
	 fXgKtRtS8mE5V0PSa3pGX0IDVBsqkU9wIFhWS+8mznh9AuWCf/k/xfixUm4Klv0IJd
	 H+HihHK5w48my31wyJLINY/QRDjNdq4CKRTivHHmpQSIlDouRt0URjPX/dez+bDgwQ
	 ikden2cB3ItOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A87C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175415939357.12360.1839242325419827704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56210848879419c6b4897863262ffe311ebde196e6a469d62985abb93eba53fd
Date: Sat, 02 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754159393
