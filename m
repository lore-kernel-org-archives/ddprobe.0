Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59DC5412BF3
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791967834; cv=none; b=YCLG50RmKO+PvdCT89G75WLvyVZSsX0jszQgGK+cSDIEjs5IvaioX4+A3GCv93ZyYm+BHyrL82m25G4Nvj4orry6n+JuakjDsEcBRvjyF2rrh68OwcUJ0vlHjlG9pidEMzwAe8FXJ8u5iMvlsSXiPnnIMovgefNx2go2DblCpHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791967834; c=relaxed/simple;
	bh=lgspM93J7DZck3BbRcim51cWXYZb+EGBpN2L8NOnUnY=;
	h=To:Subject:From:Message-Id:Date; b=U/LACcGIJ1219SCYqapvz9Zoquy1YRruubhcP5GO9UDlfTrOXiO/8bIdav944+eKg38VekGeUxLYt3I6Pb68MWj5bN8ThLDZTTATOvi15tZX+8+Bqam2x5pKPezsM/oEaw0umclGlCA60aLs1Imelo6yowlCjKU5AhvHKEsDz9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pg/x+662; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pg/x+662"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0397C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791967833;
	bh=lgspM93J7DZck3BbRcim51cWXYZb+EGBpN2L8NOnUnY=;
	h=To:Subject:From:Date:From;
	b=Pg/x+662MFq9mVktULe6qJuaKm1BePfLxc7RfEdDBGVU512fkPZLNrCemClJLuygS
	 Zc22TqrS6qiM0cwajOMjEMGYbeFMQGVHq0OeAGh/kQZ46bPTIvb6ea2Xp75/NgUJGP
	 r8e8Ha5gyIssatEhaa31G51J6KC2CqpNYrZWMt+kyvZmOFCT+I8RdRZuNgdgWg0/s4
	 A+eXTCjN5Ir9ZSZ8TVSNnCUIvBk7LTH3Kk3rUHvOwRhVRznhYQACA8fxgDaa6Ov7/l
	 trux4f6Xa1TzbdxhKQzrPHnTDlXrN05cTEsmeeSzVj8Ah03Nql27S+3KzAHPNUWUER
	 8yDIuv/KA+zmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD84CC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179196783369.29171.1150645795438708412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee5849b5f9861ce7960e88016f322ccd336d9428c598621c9aacc55f9df26bfb
Date: Wed, 14 Oct 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791967833
