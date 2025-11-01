Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2287261E
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762013394; cv=none; b=S4iMwd+keWmK3nSXtUCWecJefwPkcn5k5MVL4gXw2owgRjKTks4nlmOvDSzQVRKnIIogLEJ92oGujdZnyAsWvXSRJtdzYAw3NDI7SURMJ4bEFVyit9h0RtO7bZIwWOUqqdoxiXbsZhIAgXdlejOKCViDJvdsqte1HB73rgaRoDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762013394; c=relaxed/simple;
	bh=y7NEyoXTCHqGn9JongyRQn3iZrVApdIt9hsswe1flA8=;
	h=To:Subject:From:Message-Id:Date; b=fyjPvzmjKw1nwDybhL9gzmmho5T5xOvkfOHGnQRFJHpl3rxrBvpO75Kwe35gWGOFkeagdutB+jB/KBR8fePFDfqdqhSfR5YMucfkGDMZzSMpj+m5plOsyefkfxsX/XeA8h6N6o+oilizwWr0Dyl2QHQCnV+xcNuhgdmBr8BjPn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHb0mwCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHb0mwCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B22B7C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762013393;
	bh=y7NEyoXTCHqGn9JongyRQn3iZrVApdIt9hsswe1flA8=;
	h=To:Subject:From:Date:From;
	b=SHb0mwCmFiMvFW5cRSLn3cZleKbfpmRObsYLujxqqbtGldIrtU6t0cz3pGClsPavt
	 k02o8AclS1zzpsa65Vkqd4IFH/rpbk/mT1Ng+EA06eaOHJF+5qsN/7qT78+fH7SwiX
	 3udOxF54vFchAq2maEPlBp7c0zpgbKma9Q2wvnkREajkrymMDiXAda+xiCY/efFa45
	 cTJasB9MIHg2lOlJss88/dhVdZ05jXlBHILGhosdyiZ3N6xmBrWpGyrblBisG1Tgqd
	 nQknukNg18ONMhL5YP/4O2GTk/QbKIG+jQc7MUcy26B2oS0StYusPqBhJuyFWM/Yp5
	 +mS6Arp2cy0Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA97CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176201339360.25924.7816934753798391315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5432d54369c47b00aa34841e7ceb025d3d910d3dec95c0365ca2f22333868dcf
Date: Sat, 01 Nov 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762013393
