Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F87F44CF56
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 19:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772132694; cv=none; b=PuFeuqz1ATFl0PdpoAB452qPMeNHI1FCYdkr0COC8uqNfgOOX3BNu9IYI6EjiEkk3MhOTNdS7UwJymfUOAc4BBh+iSuhhsJg6a+25NJiaZmb+L/8b/zCPv3bwDpGbvs8AEDNe3HpOQUqrvYPegAbHEhuDsuu5ZMt2jYqXu/YYUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772132694; c=relaxed/simple;
	bh=NucD2bR04vUzmj6Ossq7dPCqMVbUL5SDjkX+IuN8Mtk=;
	h=To:Subject:From:Message-Id:Date; b=d5u1vsO+4UcUXnPhtOAsKKpvzDw16W1nj/TE1j0AZjZXOVRYM950Kqs1oTpcNp7bl9wx6MnP97461dMYm6JRXY0caX3GTa0zzpqF0KLE42yuRTqSxGteAWbWS8Q1ucATGifc3yxpps/fK7kO+2W7NaAaZ1RuiTRqEAA7i9KylK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4HTq7iq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4HTq7iq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C93BEC19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772132693;
	bh=NucD2bR04vUzmj6Ossq7dPCqMVbUL5SDjkX+IuN8Mtk=;
	h=To:Subject:From:Date:From;
	b=q4HTq7iqTyP1x3LYV+5bNZFIDFcumQ2dsmyDb5+XidpRnMZ/xYr4QMPxy8RNDjqqs
	 NWCOcVDOi+vbtALwMKVJjoUrna0MJ+9CjF1dPDIE9PV4AjGbuaRB7vJQ41AwhlZcq2
	 5yGW7J0a4PoBaP/JXSC4QWhxA+anppnHr7FQKcq1+6+osrzYEdFJ58pA7nnR/pAzqN
	 5t/2BIXMOgXK0s9XlGASOJZ4NsyrEBIzLwh4ipRYuPKE3DhWDBUz4KmoffdaUHiZs6
	 bjcOZjvaJap+AbJhAYsJ0RGa6BeVcefWDZ2++u1sXyn7AMyC8Bdtu3PbaYDatHtwel
	 9kfSvGksmKsuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B31E7FD8FF5
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177213269371.22572.12368653677535983859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e32ddc919e945e5b4fa3e578cc94fe44d8be96dc3602162a6b07f8348caeb0b
Date: Thu, 26 Feb 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772132693
