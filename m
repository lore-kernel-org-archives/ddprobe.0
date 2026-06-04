Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D58B3A9D8E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 09:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780566874; cv=none; b=k8mdZWVkudxtzJwkX91AMqqVlqiPxRGwSpSdEDQ6xVN0YUBVdUpWkXPIj59dJi5DdltpoXvrR2IOaE32dvBWF+HM6d8kGok656teIG5hWWt5inKWUSYgeASaB75JDcrWQbkfn+PJcnW2mrGOn3sij8iN8n/+Mf3IhmJYOOqkAI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780566874; c=relaxed/simple;
	bh=/DnuMrgWTZ7qFB2LFm3J/YteYwCdFYC1XF5AzuSDQ+0=;
	h=To:Subject:From:Message-Id:Date; b=NcZTHgmSHKJPS5Wkop9pzA4qJrFVGBp2MRCZr0KFqXARQafe+bz7dlFHusaEEIeVT9zcNiI1OzS8h1r4cLSJqftdaTuqKF2ZOm9Rb5MRp8C4l07oQwXOIWUrVvq1eLcFShkE35OgKtkUf6OJSR/FXGmD3K6On9BkcPGgNEWUD6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5FEemyG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5FEemyG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C45A9C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 09:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780566873;
	bh=/DnuMrgWTZ7qFB2LFm3J/YteYwCdFYC1XF5AzuSDQ+0=;
	h=To:Subject:From:Date:From;
	b=n5FEemyGDE0ZodYTMHElfDlgKkUTA+Nakv0xlBPEkb19AhCnI32P0HT977RofePwA
	 3SCbZy1Hu1i282+MM1fI5KN9yyFxp9mbl4h0Sdeu/4Cpt03r9khvKFvNoA3Gd8dkVV
	 6tjhJ/nqt2ClM6Gw9sGTgST90UI3aHYnw/jPpMjbkol99Kwew7B88zTL9HPGUbeVT7
	 dwTVY+4R0sVAS0+1O/6IM5W03XR57/t00Vcflbh1LDYN7Af/Z7o2W0/KXAO1yC4wf2
	 7gWj93lyomwahygiedxMr5pjVdp+afjuQdDRrykJnIpi3s156aFb+CFgihPPd68D0I
	 XLsQztGWoaLBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A64CD6E57
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 09:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178056687368.13208.6608869126213857499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b2955fd24b2a1c96aed077b0313103b9f42b779f6dd07e027e282ca4b6ae9c6
Date: Thu, 04 Jun 2026 09:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780566873
