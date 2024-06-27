Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5CF360
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 01:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719451403; cv=none; b=T/2el+bwS5E1/kJF+EXSQlyqztBRIayGEraAuQiSiwh08zOPWv6clmRSqETA8ROXnPdAdR2KKNk5IG5oU7Vx2MFjF6OYD9m9T2aqPmeG/GBMtfwQAGSGUwixAhtyvyl7QxWAnPInDqIPV68oMtc1RLRtCIzjdc2I3DOh6gd+5M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719451403; c=relaxed/simple;
	bh=DusZcqbrolPRIEOM4DEVTdWwtj7mTX7HbWuosFQAYSs=;
	h=To:Subject:From:Message-Id:Date; b=cTnTCjEd6juSmN/MBKdSSwU1enMKEKbqUq6e3XUwN06Px9ZapOP4WDIN9jJnzqyACv/6UqDolqQR2aYKk4e4WNOIxXfrLzKDe0LAL5dy496sHHpG0scFpjrzBZLOT1clOdIBiodtvUwk/qqwTCW6h6eBVZ+kZqY15/EuC7w4EmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKxT/e3p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKxT/e3p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBCA2C116B1
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 01:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719451402;
	bh=DusZcqbrolPRIEOM4DEVTdWwtj7mTX7HbWuosFQAYSs=;
	h=To:Subject:From:Date:From;
	b=TKxT/e3pkhQiGQfjmQ4jj3nETbwVmSmmePnDmbmnHzw1A1jDQDhJ0yuNNIEOEDJ/1
	 eT5ZcRKBWXO83XE0smhXe8Z+CJpXYZ96DfCEgSfFD/Rw0NmlimP5+HMbkmqFGe5ZdM
	 uXWviqrDRoEcuWBmMrg88plBiMjvbcxw2j/LdxHUblJRZgbr5uY6EDsprpgggzbRzL
	 AU0TPU4u5wHhaRv3olbfROH8CdNdOZYmCuwloPz1E2POurmww9ExPVJUYUZ2Om7/i5
	 E6k71JKCODbYNLfVA2E9hogqCLT+MzPJK+vO5eKjFVvd4hqdS3NHpw7zRJRZugw1IA
	 5LPT7hl+zol5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A18C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 01:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171945140280.13058.12654352799838845959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b04bdde2b7dab09c444cfe1c31c92de88683586e6c4f961e49edd86e366fa08f
Date: Thu, 27 Jun 2024 01:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719451402
