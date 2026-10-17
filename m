Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383763DAAB6
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792216234; cv=none; b=jXfAH3wUubIMh54DaLvn1rbvnydAB6qh8n6sFfqO8sQEsvPt02NuIDwG39ZNbdo78vQBhSL6V/ibBWHVPnECspnkTeNxGbg9S39HknhBa80jgHWfOgC1q18WCKK1UDgC3BIftbquKFeVCWnS/N9+LHki1NCPFmAt4Ti3cKyVqFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792216234; c=relaxed/simple;
	bh=aCqigcF2Iu3m3uAdoBtsv59dqER19TT214KMGlsCMQo=;
	h=To:Subject:From:Message-Id:Date; b=Bz++a73Dm7Tww4BAqPCxfvAAriLkN/DAdo/IYmMrHrEqkVqXWw9uJJLHXXqZ1PynBE8ExCWnrP0A4JwyEDmhxjzNHxhdq8Eg+dxJAW7JSynQp80YeHG++/Bx3f81yUnijXfke8HdyB2EPNCF9EFOjZjh40/YFjLkGP1NZgOTupE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ezsvk9lb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ezsvk9lb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E18C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792216233;
	bh=aCqigcF2Iu3m3uAdoBtsv59dqER19TT214KMGlsCMQo=;
	h=To:Subject:From:Date:From;
	b=Ezsvk9lb+n3mwh/DnzXXDwCrtIQehVI9C87IPcH1hsH37FBVHSh12njJuQf/781rF
	 bH5MIpn2LUsUJ4giwJ3hVeWTGmqMGKG/6pa8a0Uk+98MOuHG28fYSrjfz2mNzKA2sD
	 j24ZTwkISPmuDURHUY3nzT5mz3CGt3O1v46fdRjPgTLfmsFgC1pPU7hkRb9edky4nP
	 ak3Sefc99XORZDmxDIW+76T/XZkLGA5MluLu94plxiXpe9s1zwAgBoxwZsokOeRdWr
	 3GW9Dpize9aum1IpNamroeZMvpPTGGqY9GdsPeIPtVy8XsvpYAb8sPuhQY/dDN1axy
	 KBBRP7N098rJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5B1CCA463
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179221623368.1442.10075851131921864195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 856a89c20101083c375fd1bb81ba9df3676339907f4fbcb130379fd6b14330d6
Date: Sat, 17 Oct 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792216233
