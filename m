Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BE813D521
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753322994; cv=none; b=DcJ/niC5FeANjab1xhkQwuLFSIOvEx+igeKmbto2GRxd9a9Yj33Dg8+EXAxAtxqWpD6g5iEaTOwZSjxhLpZMx72bv1QceKrcLXrsGHdChMdBfsqSTjJ2UjucKN0yS4JDRashQz5loMO8oVwiyWwaNQR4IgT2w6NHbV26Zq/DOeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753322994; c=relaxed/simple;
	bh=Yua3uIr3PdyvUqVmCnbbHoSqJKTfdjO4TtmdfPVPCXk=;
	h=To:Subject:From:Message-Id:Date; b=Q7WfPAgp0jwWn0iDEYA6yLaEMP4c9CijkeJHoYm19XRSDGelDw9Ik9B79Ed9lLjErsjSVL882EPS6cL64/sIIALOStpnMPGUpZuIG8bW4pTQy3+MlMT7PLhJTdPDMzpY2EODAP58rrvJjPmFN9GhlugHedPdtYUtqbxFuc58HsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UA80v34R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UA80v34R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD26C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753322993;
	bh=Yua3uIr3PdyvUqVmCnbbHoSqJKTfdjO4TtmdfPVPCXk=;
	h=To:Subject:From:Date:From;
	b=UA80v34R554C+4HRCnvxj0OmQL9IVfaSY6JOj4bAq3d157ClSHv/nkR7IfnFCr4Zu
	 gmJ0wqGBZHcgqy3CYP9eaodBCiEjAizi/8Ip6hT0rweLO3CLg6mx/4DtaOlRMYpYob
	 /4YLe2TCFJt3MzDeIc1dh3U5b7KtYHPSNbte38ERUejNES97WMiYMoVaLF6GoI9D9C
	 VgH//xZ0uFzKjxGwdtpzducpjLh3lX4Omc2NQLVsFfHMtYm1OKWK0uzEWtpIZI1YT5
	 sfB1krZPUFu8FgP8z9yINCCFAatizcjawd7PGGAiBtWosZMbHxjA6dW852qvZ0rHGC
	 NTDg1iiIlKyxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919E2C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175332299357.15750.1156228932097663530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a2897cba8f29ef8a58ad64816519aa7f4fc651c5dcce819f4ea6264dd3b2208
Date: Thu, 24 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753322993
