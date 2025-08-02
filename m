Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305C01E489
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754140794; cv=none; b=TAvJCFB9GHPPo3klyYpMWnkhawIKA+vvrU/7iPtGV554939Zm520sFw3Mvq/ty1AmVCcFUAIkiagAuEbRpPPby5Tr3UiR0UCskpqBtpiFcyNtUAoXbDl6XDJcFcE0ePprty5MufeOVZduCeHFNs5AXqhc4E5/RHX+gKh6c6GbQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754140794; c=relaxed/simple;
	bh=nKGyhLVYeEC2F8XfiixZlaFJqAgAaiqoP86D57tmoA4=;
	h=To:Subject:From:Message-Id:Date; b=P4thXwbuEUyiPGi0o39HLMr92vHyQathl1hP3J8CPouusnKGADOXS1Gt9OFzGGtm9pfP0KxXN+2AQe8Z7s8oeehcuUcRnRmpHq10FTT0OPBAqs6Lc8cwnHl85vu1LypVdNzQdpzFpfO7nIjOZRpCSNaeaYKmIItoFRiUmW9VzGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4gT/VSY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4gT/VSY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6618C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754140793;
	bh=nKGyhLVYeEC2F8XfiixZlaFJqAgAaiqoP86D57tmoA4=;
	h=To:Subject:From:Date:From;
	b=I4gT/VSYiBiHz3EX2DddipQMLZ4sauxoCX0Fw2bV00LR6ak+q3ayMikQJX056a0Lx
	 BWk24cmuIiATNB+p8x8GbPChpLI3H8cN7i5W0wB0g+sr75zlPnWlZQ55ZI/4ujw1Db
	 5Cs+61jXCeWBqu2Lc55/pEAsYJ2zfryTbhbhglihXbnRNn/uAEOWywwgvkTfc3gLBS
	 AHNEZW749cPbRhBHDM+nINqRT0pK8Sp+4tOFN55mwbkjxDNtPuckFnCTBxPv3Rw39i
	 6ovzLYMyNl9fQiXsFQX/2NIkzrEKDn1wiV2n5acjts3dN+03IdhBax3xtwVYeiGHey
	 DzfG9QJOT5WPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C23C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175414079357.19446.17082400015218711280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91ece197ec72306a2a5af4b3e951e867ed90b52773572c540a056f586817a9af
Date: Sat, 02 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754140793
