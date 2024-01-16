Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD0467C51
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705448297; cv=none; b=UDuhqhtkn/qnyt+T8D+iwPZn4Y50g+70yBKqbOyj+a0pfk1RB2HESfqC95mgV7riQBmsWOhoJc22LEtYOqvbfA4tGFu5mY0KSp+I+8X0YVzB79BnCpxaUCSE/Ee+STPLqMJXSbb3qWGpvxhPa5YK64C/2bu97eC4J1nl9TooP7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705448297; c=relaxed/simple;
	bh=hxSISBDJvL0UM+6gyb5gccuEvrjTYCgD/+eVPeehLIY=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=uHCpUTSTllr/F1P3wBjxEqPaq+nuhHC63FmqB9FXtwpI2SLPiEpGlWQHAATRkUnCaAGMh5DGMbUGZEhFKqbZm9C9BXkLzPvW2FrMcH97wcWIM69aRpIOC8vspdsR3r31Xu6cly97Du6W0QU7xpuWZ2YSL13dXAcHdG7lETPzhik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFGDIEfJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFGDIEfJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D924C433C7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705448296;
	bh=hxSISBDJvL0UM+6gyb5gccuEvrjTYCgD/+eVPeehLIY=;
	h=To:Subject:From:Date:From;
	b=XFGDIEfJ2V+YMsZ26O8JrfLiGp+bFCG66QaHEv2d2JcyZbEZXPmsei5Mz2/EHueSI
	 n2nBFGCodqXQM16Rfezyl4qzzquvUSu8c6G1F55VHFnfagbjJ/H6Kpdyhv6fUFZblc
	 +evnfNJj+PF6JSPwJgsPxrt5Dodl7fYZO/aJP0WLeq0JbOv3CGWLQSNx4kYwlgSoan
	 qjBQf/mCvxJD6bUwph+WTbXz5Gqu8qyiE4zl/8x0Gclh90kkbokjV73jPFVxzXJyCN
	 ivP4ZpMHtMZWhR6vTay/IMUOICcIsv7azJXVL3lnG8DpKKjgxSyPJDROBlfYLsGWRs
	 H9OwxQwe0Pg6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60213C47258
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170544829638.4342.1422651998136863373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc99942225ac5d229e1ca111b034a2d3b8020cad7ebf23301f6bd401e98533ff
Date: Tue, 16 Jan 2024 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705448296
