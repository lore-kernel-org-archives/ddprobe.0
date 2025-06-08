Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367272AE6F
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749362994; cv=none; b=XsO6OEAWTuSfizuGtgeaMiHhPdaZtcStvWhlHZaoLyGYo7ZzoVBxZ2nLh/x13ynlOPrmtB/eKumm8APFgyYGta7AXys2Mqt9+yQ7DCEszteo4NKjNe0wdx1fYTxrbufQ/ErUNaWn8b0XvpavN3pKAERhw+CXFEIKYcN8Npm3DT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749362994; c=relaxed/simple;
	bh=f1rAJEoGyw7N+PD1EoNS0+68Eu4lOrGviPVtCCN10dU=;
	h=To:Subject:From:Message-Id:Date; b=OvoS7cJLDxRiVE3ZeQdyntUewN+u0HHjbF16KCQNAevPrXmSWdhTa1tBqQX9R3c7IlErBFMDaF6OcIzDdar/twZ19p4Bia4vrh4cV2llhL2+wYXlmWJ69IcdTH6aNFwA+8m6r0xDhKqI2R7IJLLCTyh/0R1ljIMgf3B2Z2Lgk/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lh6S4LTW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lh6S4LTW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A788CC4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749362993;
	bh=f1rAJEoGyw7N+PD1EoNS0+68Eu4lOrGviPVtCCN10dU=;
	h=To:Subject:From:Date:From;
	b=lh6S4LTWjy7OOh+SLVYiq0i6j2UBlUj6MjSeQ8+j8dxaMViy19b7kOM7LLmyLZmE2
	 GL9MavnA0qyGUwqMrh9vPO2ZLcEjXVNYt5u4+RYoqoQvsncAqulEkMaWkMjVrB7Hrt
	 o9SbEZk6x0iCkERQtfoXOZ8j5c1bRM1cjd1qPkNAR7iDiF2c9sSB5Of9cjDsuW3Klb
	 SVA65z1zx7evM59pJUO+dgIZkvqqmNQJXHF9A30iBPH1utOqYu/fH0QiElLD3iXoKb
	 13AELxV8RFoGSiWFTSAPNT/CGsnqCMAyHiOXadiSvh4bifm6CCEThv1IoowMFS2T8q
	 VIq02Zmpe8YIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94684C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174936299357.18610.13271162721539164178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bc18fc2a5f38138e7ec7b45a280241f53c2024b08b320c11e03d434ede970ac
Date: Sun, 08 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749362993
