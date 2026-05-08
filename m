Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B71510F1
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778198854; cv=none; b=LBGRD86ga8fjemo7S3OrIpxQ1XtZbdpYYG+GHHLVE6rmZx6TqqCMystVjxq0o5Yy2C+IKWdqTOTeDDzhc91WU3mTHE7DG7XGAPUceQ29pM72HxpTI0u9pDuq7+Tmalm6ITSd688Qsn6OLs5E30qXIew+OtLSZ7Ncgc2HI9q2SYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778198854; c=relaxed/simple;
	bh=JiC7HlRPJEQgGe8261he6RGbvB/P/qYAkZxcY8wsxLg=;
	h=To:Subject:From:Message-Id:Date; b=ip9ufnWVrMJCTGuW04U269lm9z/xAqNQtGGMSXL3rgRjtKtpwFpcr6Ihpp709teUri8q9jG+ZlCA1Da+D7ArQTHmRKh1rwFutXQzb3d8DCqI0eAWdIivLG4kZ0z0DF8Sr/T8B3FBY3dI/MTImCZotluqFO/Wn+ke+Bi5GnsiGzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6JQdLP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6JQdLP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C187AC2BCB2
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778198853;
	bh=JiC7HlRPJEQgGe8261he6RGbvB/P/qYAkZxcY8wsxLg=;
	h=To:Subject:From:Date:From;
	b=J6JQdLP4r1Kl6S0yvNmLBPdD+Q8XUNVYum9i/aQN3m+gzz2Ipp08OVy61m66F0Bjh
	 TM0saBFLgpndA8klSTrxFPPub1jmsJ6VO/ZYh0Xo2tOGbZV0LemoFrvUbBM8d21bG0
	 orNDP5bDjeOPTHW+A5+Hfk8RD/sG8qIfYJjgTIx0LqgD2T7KRpgz0eVKRe+E1T9fKm
	 3T0iaBFR1D2A/xfkIMBaUmcQ2SrW67ngacEPtm0TeZ/YvW/Qxls2IyyUHKOOFbtQ3l
	 SfTAWci8aikG+7uiXLA4GYYpbsgJH+In6Ay7CR3JIEPPBfghrAn9bmF2/XgodtKX3D
	 I/xI2x2IliqSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD193CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177819885368.30213.6984552334200942313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cea2a60c7f274095e334e30799e3751c776d81f330d52f187dac717f42ab957
Date: Fri, 08 May 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778198853
