Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ACAD347FEC
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785495634; cv=none; b=hTt3708nZhK7R83w4a/HDG96um8Tj4jE9l0vAD/f+npc6YHJJ8ShzCJuC2ZEPQ+Fx/bkFfovPL1fl9d8EETR2bVL3/cQeo/MgkpxIiMizCcEDXArsPZgGMua6Fpp48aYk2rSkQf8vxgB/bNGC9CsX6rkm+Jn3pBV+VesM2jXQb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785495634; c=relaxed/simple;
	bh=RBu6rfLeAzf2PH5OmreUzZA+UzvRLDBKlOnK6+5C1ok=;
	h=To:Subject:From:Message-Id:Date; b=ECakiHynvPXRNXgDVcgXVW1V47agSPrUriwOX61IfSIfZnKfA3ngc6zla0pX8la99rBi6pt6wmesXKtN3DqU4Crnr2zmC9tbYdBgLv04ywusJiu42Kjt8hG+VFsA/fsT72agbiHTyaJBEGa/Hdc3wVIdxlnz1DVphpUzg2L55Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FoXoKuor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FoXoKuor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0EFC2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785495633;
	bh=RBu6rfLeAzf2PH5OmreUzZA+UzvRLDBKlOnK6+5C1ok=;
	h=To:Subject:From:Date:From;
	b=FoXoKuorJihmBT/35gbZba/PRVaSD6RHlRCEzRfut+dOxU0ZJd2FBvyA/YxwdqQcN
	 gryy95vYn2OIm1UUvbbvVwZyOIytj+yQyaPaB0x0FWFs4fONjFBtH3wFyTpk44vb+v
	 CWyKxiEaoH4ZehGuTRhhoOGfBwugY5p/QXmClynOS5H1T6ph0d9wze5S1cYcTq1xzW
	 b1LyfBvNnRkRwGgrreA6bSfeR2zE5W5LguJQLPK60acCv/SPM/DLWtmeyD79R5DcX/
	 uY6Oxwv7nhIVBNmMIDB1xPeCA50p0kPriZMbFodTDYcc8HtmUpmFxzwXmd/ES8SNBA
	 yTGich3bMc8Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CFEC54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178549563368.10192.13130607989449887727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6491bfc86b68c966e8f08c8f22edbe6e69f218174d258faee3cc596a281938f1
Date: Fri, 31 Jul 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785495633
