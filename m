Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3449220311
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752386994; cv=none; b=Z5yAlO7p9bF90GNOTsuoJUycVupHf5hDhNwGnw0adbw9XSH2IonSDE3KGP8+V3DF2TmGQgZH0/9HyYAf8C+k3NMqve8wGc8LGIiJdFCLyW2z8sOdNaIOMq3ILcB1TU3nyVn119eeZerTJq/9IF84FN38B4b5IHYmK55YL6iGjDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752386994; c=relaxed/simple;
	bh=Ue79bEUdephDLR2abfM5swnojiPTlidK3r8yNyEyBZA=;
	h=To:Subject:From:Message-Id:Date; b=RCJ78xHcKlD2C0x+DvwE0lEGZfd4F8t0RyDJsX4wKvB4Eqd1jM4S6YHXSavXTCbNeemwL7zAdYQlQ9f84epam5QMCWDseZvoFjkZ1NLOKrgVXBSYZPplDonqDoEEcM3RbK0LQ1DCCrXaPP41FZVeR1CvR9MhPF5ksUnkJYor3XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TsEa4LlI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TsEa4LlI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42E8C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752386993;
	bh=Ue79bEUdephDLR2abfM5swnojiPTlidK3r8yNyEyBZA=;
	h=To:Subject:From:Date:From;
	b=TsEa4LlIKQrlNk/P0GPQIzwGZRbCuH4cmvrp0MOyL7qjEzSWRKUDfJwSDF0re7riR
	 e0/m9ouZ4gpofVYQCen3qyJ80C/DMcBxDGrwVTtKorwpilkfNTqW/WRyu9Ito+B4lc
	 WrJxRwf11alwWXH13oXZXpR/MGOAvw/MxdfonfLvc9SVRZIcA/WM7G2v4FBrnYOtKO
	 hyWhaIA1mcsZI5UPtL3ONZWu5+JL0HBm4FJ6iR6jUejzFdiJDPBdR5rtluySKd/lpa
	 8wK1xA7J4FqxzZiin61NWv9LLMYXigdQm16b5PKo++z+a0awL3v28bBQcTqP/j9Psb
	 BFUlOMVFFfIEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B07C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175238699357.17776.16137790551633031141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07f14993f40f061eb616b1f71d62a76858230be60c703a0f64a1342e7bf927ac
Date: Sun, 13 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752386993
