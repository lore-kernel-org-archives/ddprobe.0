Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB4A1AB521
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722418554; cv=none; b=WKbEjQ15Uv8bAiK8DEGTHFIhrUE+rVgfA/L3hgRHs0MjmMieSQ5lC4EnpFGi9Z4BPKeqMK4QWbFsSvKVdLkqpnJdOMWZBhfS0HemWyTyXWyKLcRTq/+5H3PCRhpuRAj0vSSAI7bSWzxbLRdzf0vN7Zsf2fFWaR3O3PeqZ3/5I0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722418554; c=relaxed/simple;
	bh=iBJhUCV1Dzana/FrUWgeIat0zuwWzjp6WlMcrT/oaHI=;
	h=To:Subject:From:Message-Id:Date; b=kRu1wWJs04SHG2pCagcOl0z0P/p7AM9h51B9WqaXC0njj9LEI1JQNPPW6jSoGIXBQm4UORjnECKGM3xBmDdcy6gee/HMuyokQeHxLEC5J8RQ/UuIy+rg4WzHirioiTl8rlpezcumFDdnqu2oCjWzE7ltufexe3TcTfdBun7ZYKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MAm2yPVx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MAm2yPVx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2057C116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722418553;
	bh=iBJhUCV1Dzana/FrUWgeIat0zuwWzjp6WlMcrT/oaHI=;
	h=To:Subject:From:Date:From;
	b=MAm2yPVx5fYAKCt1wnJ9me+Co50dgWT3Q8B4m6qlA8Nr9krz45okj54F8ajQErpg4
	 L0/cMQZCnn6q25QthyJKTuEfa9j4a0kjnfGagYgtVELrGVsIAM3c7EMSbkPeP+silQ
	 3rL2AE6OV8XPhA4SYvhRvyAE/JLFxpuq+2cp9J1SUML0zAnWVdnSfhllT463l8iC/Y
	 rf50nmum3YeY670GbXyMBpf9xPd3S2ermbJgFeNsLG1bJgs4SOdttLHXUoiquq5bTG
	 JT2A4WdOleJJ+xcCF8COiNyvptFUB2LNvZkOiHBsaI1GWHyNOieKO3ZOMayWNKd9ah
	 wYedvYF/yiYWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A4EC3DA64
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172241855358.5705.6205268416770437227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb69a8c7602efe1ab06da61ebbb2387cc40c825adb637af768e32370c88e4a7a
Date: Wed, 31 Jul 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722418553
