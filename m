Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AFB13B58E
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732769754; cv=none; b=F3uineQcxWeC9wGQbfstdUUbeOlIi7DzYCLiYtl2COB+exIFQ2hDIDFMdwhO/I75IAT8CcXb8PAkQFG6N5Za4H4z9Z22LpO71xNVupm0nur5LhRZ3BLzJtTSiFVFBCMGwUPao7TnyGf3AHMsgq3CrsVrv9SgWTQ8NysLrD0DBAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732769754; c=relaxed/simple;
	bh=nKT97zPBdZ5shVi1HgwY1rzfr05BkmWfGXbLYas+J7w=;
	h=To:Subject:From:Message-Id:Date; b=fl7sKKzb71aIAf/OnbfQU2u/PsMFzXopNEJZYZeBIkxRasRYrYh59vM7H6cnO6fM74Fs0yZSkQsNgd5EBhOYEv618+jgJVxU+ryMv8iZlfNc4EZGAZslLrJmSjT4L42vllMqoUpjMbnSShRf7PADWPeKIoAKb/5/pB/LcNlWwDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WOOPk7wV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WOOPk7wV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5997C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732769753;
	bh=nKT97zPBdZ5shVi1HgwY1rzfr05BkmWfGXbLYas+J7w=;
	h=To:Subject:From:Date:From;
	b=WOOPk7wVhp9fgCNJs8o6Mf5cdzSD4Cf7nT2j2u7sYiP5bpfrkrBbVOJ9E7Wsv6BOz
	 VDjEdOnwu6BFIQmSs7HK2uTe9ESwvq8NdyrrAPG2C9J/OKMAdrh6vsQhO31M+CfGUj
	 NHjYJX7Ej2HbySuBuUO+gM/fwlH3FLsbiaoHAh7v6nhKBStdCcU8BOAHg+Y9Tl87Pl
	 sd3DjM+TYvRi///Wb89/Vj71M/df3AGmGZwZFZB+R0eDtFjJmiGHSeELw8Da32K1gt
	 OMtvNlbXKToysJ7f518Oo38qVRvxXF0uRZCWcG7defAOrThEOoInKW8KR4bsEU/GEc
	 7fFPXd4XcVDXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C387D3B9BD
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173276975363.11016.10193084637818643203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f6287306821c45539d6a2fcfe3460e53de8bf893332a5da95edd36b10be320
Date: Thu, 28 Nov 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732769753
