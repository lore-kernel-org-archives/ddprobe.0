Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C7B34BA3F
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759569595; cv=none; b=asSWXEtTwodOD99FuxOI1GZeLOR6fXH7xKHmngFvCuj8Aht3BZDyldL8znZ0L/GrEXRug/anov38Bhpoh6maIRCfg2l0neF9g90tIf2oJ+pCAhlQW50VOsHidOeYtmcnAT1e88b7msR9v1niOua3BlV9ahCH15VWr62L7s3Mvzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759569595; c=relaxed/simple;
	bh=DZWVE1u8r5QT+yYVoBV/WoXB0hPVThbhuu+zGocfSss=;
	h=To:Subject:From:Message-Id:Date; b=gmkraZYIFhsFpujeZJN2Kl0F0QXsL3p4RKGRaU61sXvek3rPL8El4WoLajOuAMaxP5v18oFJ61KpWjeiPLsnpTyylO7txzceyNKtCmleUKlPC0xxLJ8r1AG1F2NM68BMutefLrJeJeqkXc8sw5xFrj4B+oCr3xH2PW3GMGnP39k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dR4bPNvd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dR4bPNvd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4C2C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759569593;
	bh=DZWVE1u8r5QT+yYVoBV/WoXB0hPVThbhuu+zGocfSss=;
	h=To:Subject:From:Date:From;
	b=dR4bPNvduafIPGOTsL0RumGT31lawtNqMJJi9ysbzGVYqF5w+xn2DiNH10Gg1mC4o
	 pYQ/2AiL6K3eZOHBq2sPJV+HuP59EwJ99UH78A4PYRVbga5qm2gKh7FePOhfecdgb+
	 qeLA7GmtWgZ9MMNk8k0iNRIFPC+o3bKTHC55enjS/flVbDCkwXlLIRMC+b6ciS/Gw9
	 2i65cm5yyLVmnfCRCYkxwXY2WjK15IKIPcenPutRMX+3rjbK7HzG2P/ShmEDmCbv0g
	 YHm2XAbmifZDeBIvE8bOX+xmrAk6hkksibmzEZeyAo/ddXM4AIL1t8BTocXSDSAfy3
	 0xl3LDbTV+vig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A0BCAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175956959359.5010.1712516829202261850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c0517358c8fcd342a656f3cfd102cd4332cd8e555cc9d9b65e1380b13294b07
Date: Sat, 04 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759569593
