Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E510328B6A
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 07:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768376634; cv=none; b=eImoLqLHU+VzkfCmooGVpPKtf0QfXvwg1FRigAhmoB6tJDowheGEeA5CH+vxPrBOZlYY10mkdTJWuoZiwomup4+rgWFkvBgQHu1LV/5U7RhTMzMbmEfagYlZN8RoDlbzdDb6+5UqhuZt6zm4lYMwj1vRtmQPZzNQ7mOsb3QtL/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768376634; c=relaxed/simple;
	bh=3prY50IGvgnA/egyf/rU2OUo4NTO4+enCJx5xAr08sE=;
	h=To:Subject:From:Message-Id:Date; b=Xx+gwcDQhUss0QNi2ey+SlcegpnOXZA0TgeNo4+Dijgp4ZDzdsArmVtQD+IwLInK/T8MwRSLfQiOvlCswWXM8zKRUrSrGP/AdweAS+62ihJb890j3npWDk3PWLNlBtpBvPiNnHmkBqh24XDkgEB5MsZtnQEcyON095xY/NAUHRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CyqvdiHD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CyqvdiHD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A269CC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768376633;
	bh=3prY50IGvgnA/egyf/rU2OUo4NTO4+enCJx5xAr08sE=;
	h=To:Subject:From:Date:From;
	b=CyqvdiHD9tJc2+Tinmjc0HDYGKfkhumKqiEmEqT5zD5JSdY20g3Z98AfIalnQj4+4
	 GtMmPKMzbeY1ZaevoEd11yS82pDyVBrk8XsuPgAv5dud6v3aSwtYuG3UFVuzGhLNJX
	 EWZJWOC4P433NgwYUBF8jtRdkgy/KhOApnr/KADYYSNNalSUkZ1eDIPeyezgkZbIDE
	 3wN4BnR4WnIgmVTSME0qOmH9OoHajwq6TNt7Riiqd20DjsZaie2zfmCFrnz0EjsB26
	 2qwBZ7XmeZKgRAsyZoXwJ+eVWs3Xm/GhDudimc4haC3q9P2gm8idIwKQTAhPqtUrz+
	 IQbuOq3aHxYIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91862D31A15
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176837663357.25432.5948637574413093420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8311d954c702b5fb2f6c9f9d5f600a6ee9896ae9676a96ba91c9df8ad1128e6d
Date: Wed, 14 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768376633
