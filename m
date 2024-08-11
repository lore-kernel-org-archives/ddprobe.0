Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2014418E06
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723415754; cv=none; b=YpACkcw6Fv9T3cvc9PswvnwbyrNqDFjXexm47ZlgkfSiWkG+7VQnd0p8Kl5vE7+Qp7FdI0s2dMudNkonKp5ce09qmQGnw/B0k1yFnGFYlfKGAFiBXSj1I/M620ZL6twF9W53hbOfbbSCmJD9YrCIul+vn5OtA+/r1WUoMu1SdMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723415754; c=relaxed/simple;
	bh=f6j5iAeAKZ0G4lQ1vJGYmEt7PTQy8ZU+xbQBSa5GDyU=;
	h=To:Subject:From:Message-Id:Date; b=EyVI0ifuQ/uwq7mk1mIym9Eoc22SRIXNyVK4x72cFlZnUSeNbgIIQlNxTdo6EL0BOHnIGSL2kM9rQBVT71oSJIlA+Yqf00FmebQxnHBQBwvHTXStEzPzhcT6h7vvXDclrWlcMGeud5LSef9LCvFGaQIXNAkAQpH0ol8dG9ALloE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJh/TZ0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJh/TZ0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3EE0C32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723415753;
	bh=f6j5iAeAKZ0G4lQ1vJGYmEt7PTQy8ZU+xbQBSa5GDyU=;
	h=To:Subject:From:Date:From;
	b=oJh/TZ0UcKqKPQRrjQqkYlFhvNTgh97ba/R3qs/ymBe+Qi+g6QoAeMCPTiDvFFdU5
	 95koV2BT0oGoHaw4PpaQhnEfGjokiv64FENZ4E+F3yixUP8/JKo2vuEksM5yUdJdmS
	 bLtsbNCyrmMIry3DsOlYsHXIiv8mceMEpsUldGYrcyoVoLQdJzQcyJPGj8nqIYlFmJ
	 k76F+KNBAea/EXr3ryjSS+DP+cbpigcFPsi1f4Qbqf9hSV0/92dT0wvGqfbrPFbQ09
	 /ufRzPhVGSMflB9OhSv/GRZOCnP/aEC0ATsr8ZArcqRnxhOIgQLij9o378rDFBDvxl
	 zC24xL+rb3LzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD59CC3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172341575368.16947.7413235120765345680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47b3021973a77c046dc301e11ced63eda07984ae94ffef8dbc2d220cbd6d6cca
Date: Sun, 11 Aug 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723415753
