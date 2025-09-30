Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3879A221F0A
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759228194; cv=none; b=Ect7RnoL27QljFkuDeRsggozbWkRXu5mj21XfgdJlZctsBGa91O2Zhhql/BSsuTlsRiFPbl1+BaApaSZ+JPnRRMC7zjdzQiFuiH72XpLnQbTe0zDMDUGLglhD+WZBNT14MQuNRiicw2UncujyeXRERgiY0X/RXxcGbhJqdsFJo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759228194; c=relaxed/simple;
	bh=uN+oq7/qB4IetAobeHwgMx2DdAsknKJuPu8QPwl5Szk=;
	h=To:Subject:From:Message-Id:Date; b=RfxDwJPZeFZfPnqOgzmErGGbz4qgDs0q72bA26lKnXkR1WUVAKqgEDoUVS418UZYKw4G4NzpG6xBgC2IJhgQOlirW63oY3PXfSEqecyf5UKoQ1qvLjqqxe/4zpV2GZW/Z3zB1liXUfRsZ0g42ZWDh49AI6Z7bJrk+9jx1NXSfV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxuT1NR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxuT1NR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DD1C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759228193;
	bh=uN+oq7/qB4IetAobeHwgMx2DdAsknKJuPu8QPwl5Szk=;
	h=To:Subject:From:Date:From;
	b=ZxuT1NR/Kl5R4iHPT4LV22yNSKvpTxx417XsSz0CRU0CpHthY6b7MBcxawHAIDwWt
	 vWirBb26Q9RSwxmvi1vOPdnLJyHOMK2feQYy6g83RgC2gL9IV6jknvUFgU9bjYgeJo
	 cRRNqU0a5iYo6c8l2xc1NDZApsiKrKzSvkMGiB30T6ev/r85+Hwu7uOgOYWQ7rbA8m
	 S6ya/Y7zjW4svO6xpugFBkkPOLoMoPs+5ROVPEXjoiFAbt8rm+fUu6ryl+xCLW9MHd
	 MxPsdfsBCukPLUBCWR+ObSbgJ7ahPESitOzWpAgqnn1lBXYT0m5AjLVErH8l4ZGk2X
	 kGFggKW8GrB2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940B0CCA468
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175922819358.8512.878342204537512620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 653392793682e37becd836251c510d4f01a015ba402ca720168f414078ddda2d
Date: Tue, 30 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759228193
