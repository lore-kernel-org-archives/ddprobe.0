Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F02C337BA1
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775021094; cv=none; b=t5l5275pLEhJPy4ZjLEBq86e29aPYOYX+8ISRkjXFV6pK1wsxw44FD4qsDDlakZ+sEbHMdXtss/qnWfZ0kEAMCT8/9g2KJhZDPru2PciezqC2ihjmq8ZH0NmWMnuD4d9nEwpCrIK/TdB9vWb+D1fXsTMDtMZhVOmf7nS5Cqza8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775021094; c=relaxed/simple;
	bh=zR/+djZwQ0mhEqGzwh9wlB5XD3mIq/01ynigSQeKaz0=;
	h=To:Subject:From:Message-Id:Date; b=DdfLEtLRGTHG3bHGfRE47qCIqDpSMhYnZcTic6SGnJhsuiFT+rVKF4EtTqk7ScS+8DL1SnAcr5ZZqZjt7GSbI0BQHK+te9yLfQa/CoKoalMDo6DP2PG/eMljg5n/aTQRoqzpBDX0foY9IaSqM5fPa+xZbO05oTAp64W9G7kQtaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKC21PjI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKC21PjI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FB8C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775021093;
	bh=zR/+djZwQ0mhEqGzwh9wlB5XD3mIq/01ynigSQeKaz0=;
	h=To:Subject:From:Date:From;
	b=SKC21PjIGgaNDXlVDr+Lz1LMDwvAU7InzsVvbSTg1DK/Ag9g+DNHqR2ybmc3aZBZ+
	 u8tn1Ccp0mUnRaYwggVmUUKU4xE0heoQozDhPDXies2iEOT8TNuVB3FxdsrEMWi9qx
	 G4ItGgPUcCJomoF/dYP3R/Bl9t3kLqHIiSRxbdRane3s6HHpSsEQ0iuOeLzpgU3mRn
	 OF3B162oFbbErvQbqYL9JRymJUcvd8BfrZ+xbSKNQF1KSBQE1DoXxOzyESIogF92in
	 j/dgTAfmUP+e55Hz0NXvRYqd5bLtTAkrwfCY6m9SfiOTJqDFSwmtrRsVA7ksaSaeK7
	 5itausArOklYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9077D107636B
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177502109358.12571.2447641071762409747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b25ffd061538bfc687ef6f2fe50cae496fdab2817990475028192645b9df15b6
Date: Wed, 01 Apr 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775021093
