Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A4837E
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 18:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717266323; cv=none; b=rrK1cooNjKGGA/40rpmm9UbESdc5p29bsRZTx5eBOVKm2CCJwnr3n5od6GOM9qM5OeOBFoeXShUcKIwnY5dIE9kxDRzN1hDFKrIv5RH03aLE2ALSkblMgMLxLvc604cs1aAmaXT1R1WKLIU3VkN46MkpnMNrAF/YsZ8iZbhfakQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717266323; c=relaxed/simple;
	bh=DwTG3HCcAqHXC2rOfpNNuKh5oazPOPpwuG9jCUDi0ps=;
	h=To:Subject:From:Message-Id:Date; b=n/B/C/R093fXJJs+IWYELEYpMeQHVHPHJNuYCmzqg1fKBiUJRVuwfneua8DroTyxnYcAtk1WAwDGuPVh9MWuxtpb+9bSkhsPmmk39KOxzM/BBZ3evoOnw9Xho24LhqpcWj8yeDVMIrVd4RItQ5hs3LS/aSZfx6c36jU4aM1S56A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jik6wluB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jik6wluB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCAFDC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 18:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717266322;
	bh=DwTG3HCcAqHXC2rOfpNNuKh5oazPOPpwuG9jCUDi0ps=;
	h=To:Subject:From:Date:From;
	b=jik6wluBb6hmDNvfcEHEq3d0wMvWeVgfpb3NH0H37I2ICaw8ZBo++OHGqffdWnYAo
	 y8xHIcMDOOaxkrCE5P9gvzuCev2Y8M6fQatUvojOGVA5tPnbj7S+LnmFfpHmbA6ozu
	 JItObtczijVLDDlvm65/z/grUrKe7wBS7alPCZ4XXPkdnUDY73mIkT2rkjcPJkPiqz
	 FqLR0N7QrJw2cjy8Ugwa3rEYFg0MuTZYVTcpBpKfxvCt8FCejDjMOw8plMmCROAlq0
	 ctGahREt5MLRzWjBLpk5K/+oseOgIVUiGwpZkHozIiV32lvT6LyPFP4tKp7RrwPN0+
	 rJQg3ldX0Kr+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4334C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 18:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171726632278.4722.9472026728985909288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deff413d85ccbff95dd6ae8fdf7da58607078634a7b5e310324f190d2fafa551
Date: Sat, 01 Jun 2024 18:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717266322
