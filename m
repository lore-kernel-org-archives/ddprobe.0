Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A47347C7
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750564794; cv=none; b=qNB//vu1jN0sRl/Dr8Wn1PFqv0GxCntgoAjzkZJdj5aPJ1RugSoyYtnB2AhcA/b0Bk6EXMs0o7WvRU1xy3Iuo6sANRw5/YIlrNpI4kN5y3PCyIKkQWNn+YrQyK75yiJTK+qKMkWQ8tMfLR+af5B9pyzVJyFudDccccuy1/n1ndI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750564794; c=relaxed/simple;
	bh=Dvy+32vu9YfLXite4cI0rtqlNL13n7ISo3tb5/qN16A=;
	h=To:Subject:From:Message-Id:Date; b=F9KoVqqzbFMGgln8dAUS/7J5L0hfwmJvuTtyexBbrI4bhHW393mCMGSKc01qISFP2J3XmLTHXR9t0i3cZJH+oxzQM8xqXVFS95KxbYpvVdI1KZ7I51YQ+t/OtTgjWNiXW9SlQSh6uYP723XnY+H+bX+0dk/7ceneShVlQritkqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Da5DrgNq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Da5DrgNq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A695BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750564793;
	bh=Dvy+32vu9YfLXite4cI0rtqlNL13n7ISo3tb5/qN16A=;
	h=To:Subject:From:Date:From;
	b=Da5DrgNq5qMU6laeBNPstGtYeSbI2G9RTmFwjsLyPT0Rvx59JKzEg3TYsaSQYVEX0
	 C+Od2iwU7ivfEU/VQTU4mNY8g1Gvgtju5iNH8LM0VUlQGMNhR+/T0XCHZ6qgB3Eq/i
	 KgiKJol39GlCGjjE4pG6kSL2Eht+F73CT/5j45L75k4gjmdx66oL5L4Tmu1CePDmGI
	 eJhqca/5mRCN8PbVXICs1W9eDGtnBs6GL7w68SIknMrhAxhSx+Cyv+zy4zxH7h9QDH
	 VmIM97QF4J6W5ibxE39zmIvrLFtJccUsy5iHrN02cnr/Pk3wWLTIIZwNqLmPfb6/po
	 i1tAayOpu1GLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929CFC7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175056479358.6510.15270008672677525605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31ffda5a04fdbac6e3223fc5a3be49827403a2b6f0ec623415d1e54d2d0081ea
Date: Sun, 22 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750564793
