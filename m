Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6007EC2FD
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 01:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720058123; cv=none; b=R84rsByvMCaEMJyU0kAm3O2ee1jvJH7mNY7LRyYYeVCKBZuXsDk0gnNwXtEr4irUb8edrQ1ZiuAeFVHOzpTnOPU7o4KnOS81/YnaWp+hQqC2FNby2F2H5cvih0rFSm9gJCU4OftWqJazhIYELMtKGJzhI05rt5pkdXufUh16mFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720058123; c=relaxed/simple;
	bh=2IfjMrtH6AAHLZovy6dFmLOoQmwjkk6ovCY6hMveU6M=;
	h=To:Subject:From:Message-Id:Date; b=I531RYXmVe7geSBDWFdXdWGCKoWG/84WTakdjqG4YijflZe5ec80EOBiooFCT9QSdsWfaf5OtqB/CDigP/WbmMQZpqqeixlt6gbcBP4TGU6ITg/VN+dwp5ghuxEctP8UxPHxnHLRHF4f4TtYZS3Yr3i8TlmRas2N2B3YVAR9hBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5L4YQpo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5L4YQpo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDE4C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 01:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720058122;
	bh=2IfjMrtH6AAHLZovy6dFmLOoQmwjkk6ovCY6hMveU6M=;
	h=To:Subject:From:Date:From;
	b=k5L4YQpoWGoWodltNfv53h0AKBAEkDMv0jlBvR42d3Gzb1NZ0ylQqjHKkQRM/J6CO
	 OxSU+cl8r5bKyzK1IHEM9VnyN1Es6KX+VeP347goDmdcBVf47RSu4HLxM/wubl9021
	 RFYBGRe5/k0YEfvebEHEyug9qRPb1J/4lY0HZfo6PZxSpZmaIAmJ/WqglXv2r5uCQ2
	 Ei77N9BL5Dc7Dz75ZMolOufiCK9z52jMD8pvzDwkf/RfO4c/XI7+Mxk12bwXqBQBiO
	 FRhhdrfcz+CdGjeuOfafbb8+Tdz8m3PSmlawjkw0c29Sj96rhnznnssa7TRQuULwKB
	 C0wVQQtuEnLHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C10DBC2BD09
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 01:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172005812277.5585.3392243103286276742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34a0739075cde114e60862b8cb2bb5d19b8b9be31dde20fc1e0f89f5e1eb1441
Date: Thu, 04 Jul 2024 01:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720058122
