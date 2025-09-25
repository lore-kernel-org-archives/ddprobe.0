Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122CB2E62C6
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758775194; cv=none; b=W44rhqc0gIp/p5T75ifXqBq91b31+YskuUzTN+bXUricJk0okT4YPLbgo4h30iO/UiqPw86bDByn4mxBGxbsZUFCSLAwub9IfJZwF2Gsk33UzEAiiKTuxGLdN3wSBzAqcC+9dEnTGCHzDJ7OxOLB5St5E4hq4ZYG23NLmj43Mt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758775194; c=relaxed/simple;
	bh=lbj/s1s8YD4Lmc3TLuMVdzRcKy2lPuWtkU+zvke8sMI=;
	h=To:Subject:From:Message-Id:Date; b=uE48DL3ZgnJ88dKHJmyORI3MvKoodNRrUP2FhIcdAIwWyawDRZ/SRIMtYTGaVPtDqaALxbeVqoY8uc5yXcwyts8waIOVWmApDnBlVOXDxb3jy4ZSoI1alNqhOkuk5TXwrKI3laE9vQi1hba2qXEThnw72yQvfruQkqjKrEka+Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBFyWzdH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBFyWzdH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F58BC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758775193;
	bh=lbj/s1s8YD4Lmc3TLuMVdzRcKy2lPuWtkU+zvke8sMI=;
	h=To:Subject:From:Date:From;
	b=JBFyWzdHxHfrB7oG0f/A0pGNbJ82J/WPfFvMRrR3Sx7DPK8EQnGI3fEgSczLKBYg/
	 mXPo3wwXPbD+TEBeXSX3GiVqrSlLog8nxiFHSBpRJsB23K+PDwvrc1sMLE9cwMtoF0
	 SrPPZiOUaFruwnAovMPcpWtiIfYhDhpJ3nSVly2YU1qUo24cIRZPLFdtDkLNbADW57
	 RPlQ1qCFn8Qqizwo4Kq2ksMsiJWs8hXEj99lIXCm/fy02j8gHvzmcEiR4bQsSca91c
	 nulOz3tKSfrR1UjbLWl59FxDCUqAmPoFVgpkfkn5cA8J9gS3EYjJadgg9aHwyqervo
	 NeZx3QcyVqU9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C98CAC5AA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175877519358.16155.17825699453336783500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f1eaefda7f4f9d67408fe2acdc892c46768494a874aa84a9b080d5aa269532
Date: Thu, 25 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758775193
