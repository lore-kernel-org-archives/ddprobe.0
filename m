Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC1C2FABFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762415994; cv=none; b=Bz0OB1hQeEEVeOLuaJuRgUT/xsr71rRrOTQEnYK7HQBNLeC7s9o7pfkZBCyB8wE+MbMvWUm4InbBMXl5diebj10j9CFACR9Tf9TbQd/i8ETcEzptIAR8cvZAuwSUQsaZ9nUelbcAA1S+HiLpaRQpG3DvC3Q/9yA58CT+hPgs9GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762415994; c=relaxed/simple;
	bh=Ru5V6dWMa4F/Q6muk3S0zjS2/+Oiu7MHU4n3H7BbljA=;
	h=To:Subject:From:Message-Id:Date; b=r1Ac1pCNKHGMGSraoATIWumzcrUtSsoLtjrwZiF4zV1CbJorPfo/pxYNoe6f3WwsKpOsq0gj5m0AThd4nCIAWUhjaX9DvpXCKvcg2ViJv7XOFgFR74hx+jXNW/+7U+bncVrbrfbR93AIUt7AmdeU2HU4C1v2DbBiqqVH4ZsZJgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JkJv1E4z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JkJv1E4z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02E7C116B1
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762415993;
	bh=Ru5V6dWMa4F/Q6muk3S0zjS2/+Oiu7MHU4n3H7BbljA=;
	h=To:Subject:From:Date:From;
	b=JkJv1E4zkGTgvJkNZ4DtKtAjHpv4kgXz6DuflHZrVQPbXL8zMj78+Eps+o9ArPfMM
	 t02k7kq9LEnXY3YlQL1klmEQ2EIvtub3/10A7IcGKtaOn/EYt/MH5owUD2a2KeejC+
	 VU+4Li/5scyZa4z/Mt3YTn2WUzrlRsplRWKPTAVf0QTa8YOFwRn7KbC4GDjrCqxGGm
	 txnMSFXZxkJEejdgD3OS5wvq0bmrF8llRhPllbsoJp3j+GrPYeMIUw4jXFtSMDWT7F
	 Xx4q3IuPWx+k6kSr/IlSmI9LGPiAH+a+yYtSk6fDhffMLhEDjzQgbb4BUOuYu8ip+U
	 89wtdctsDd97Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9267CCCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176241599358.6043.8318933829631726173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b34ae12851fe172368c19f7be97b0133ed782d2194c999d67d619bf08d0bfb
Date: Thu, 06 Nov 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762415993
