Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D422773CB
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 12:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764420774; cv=none; b=sGxg4Rez20dOZ23e7Id4XRdtFryCfT9UzB4qM04sZUdsGxXCscKz8kcY9DuoCiGo6I9KXSAdo8Z0bBn3oXGDMSfcpPYW1XaCdIzQKlbVfvv1MJ1UthozAWOsqmr/W99/HjuQ1ADAJ+Z/Ah3HxIN3/xjGvRFMpCEQxkLZOKR6ffo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764420774; c=relaxed/simple;
	bh=zJuLs1NchI8JFfLW5zCtwKmRbLt1Hw+RpKOQAfJUmAU=;
	h=To:Subject:From:Message-Id:Date; b=cSUGZn5iJVcpXSDhMV7M5v1kezX+Ewt84SJo30Z0dhApAnWjX1jeua6Yc2N6U9Jl3fwcsYu8XCbWUDOtE0OD0KLJ7yP9vetsulkTPrM/7nZMjug6Fmj5aimPl6ilPhJigX9eH3Asx4wtraNSmB610+COM0CAuWvkoP2SfO2TPuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbKEMG20; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbKEMG20"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D18C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 12:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764420773;
	bh=zJuLs1NchI8JFfLW5zCtwKmRbLt1Hw+RpKOQAfJUmAU=;
	h=To:Subject:From:Date:From;
	b=ZbKEMG20Gq/eclUg/wpJNH+C1R9UQ+xTd8Vj3gb/USBAWV5ramq6euVw0Q0AJLL2V
	 lH012TzbMPdSdAg01ipADPxjFEcMPBnrvNCr2pFpuNz3mMszPIT6xZfeTzJDzezBFw
	 rmp9ik7iobx8oY4MscuthqmnafbnyLLS1egJwVotbNhTxwhNxidLFhpKnakOyHDEou
	 9Jp4rVWSTqkScbSYVTbitHBR7LL567m121IIIVomExdInldgffXoFrUUPjNbHSn2g2
	 MYue0GdxxqggTmt7BXPsfYhnm6ri1PqMqhX8LOWNpNVk+a3MjJ+0Ll1Z+U1w8bnzcK
	 ewOlEBi8Ya/qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903B0D116F1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 12:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176442077358.27308.7136946876829465714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6438f7c2f4d5441487cd6efee894657c5158eb846da75394116dfbcddb1fa8c
Date: Sat, 29 Nov 2025 12:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764420773
