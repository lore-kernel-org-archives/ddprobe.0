Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7AF30F537
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762504194; cv=none; b=Dud4nokzUp+hrrFe7YvAzcfrYm57xR9FxJJabjSZW2qSHcSqgCXyy8mXXnWPHpDLvNQ3RSQts8uWLdsoGYDovgEVab3s48R4i9ZEG8+pB+nT7I/l9yyCC4R/leherDfEWdIhERnUChEiULrApP0TYRveDkucxqRM9W7ntXQjbcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762504194; c=relaxed/simple;
	bh=hhSMaHGtp0n22rEODVlBRkIsw0qF+Y64w87/crdAeo8=;
	h=To:Subject:From:Message-Id:Date; b=GIg9yuX71/OXY8Nyrq43mAWBEYu98SOp9CNaA2D/sIp1ByAujzEN9hxda20G1KPVqwaY4rl7+E2tvcXmhCKWI4R5qnNAylv5V5NegNClmEgmGAaUShq6SfFuQTV52h/YEhmi204qc7dknXIFql8q2tEvQNn+2GSLGW3kxTegzbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6TiaSF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T6TiaSF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF40FC19424
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762504193;
	bh=hhSMaHGtp0n22rEODVlBRkIsw0qF+Y64w87/crdAeo8=;
	h=To:Subject:From:Date:From;
	b=T6TiaSF9Z/DCc+tqWXb9VttwuRydVNJoP0pPtSXA1sKNmanhY/Xflm5juzUsNXMWV
	 1VSp85cxl0+7iuokSSwauKg+pzIkt7QSeFwtXDChetFjzBTI87vYBXblc+iGJHKzle
	 ck6r+z7boBrDXAlrKF7JL2SnXA+e53OhCSLLXRF2friAXq2LHY8Rdgs2Yh5PFT7ilo
	 6yvolLAWzsBhMt+Jyh42G0Un4UaoPlu+bKjhza/5kZ3WJiTt5Lf662X1L3myCyMXKr
	 Ubh5w4Vf1F5X+Dpe3EEPIeqo1MyQvgYKOMnopJWetMWQsXSU087p5GXnPMgcPa6CoX
	 iLxBFtXgxzaSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BA8CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176250419358.23497.6192663908841781850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1b7a5e8dc68d9f6420cea32f724bc019d5483ec4cfecd94473d74f603458ee4
Date: Fri, 07 Nov 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762504193
