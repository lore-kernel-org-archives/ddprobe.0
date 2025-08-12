Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A09E1A9F98
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755002394; cv=none; b=kBILtDY5PfRNxoXRdC1jy7xjfhFlEOIsDgZrDmkMsRVxKsHUIvH+BNwufYrbiSUMv2rFWpX6VG7T0FmRYRxfTZCak+MrXXqmSF26aN+++DzK7fl/4zyL6oY4uB/dLux0mbm8OEdY9FFp+k5DtnU6yNXJAevQKeI+rBWIXfO0DIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755002394; c=relaxed/simple;
	bh=FKxgnrsRZSqKECFsgeASB6XVR22xMu7fFb4Z9oTtnJQ=;
	h=To:Subject:From:Message-Id:Date; b=V63YyWI4rR4Ncjsa0ghurdyPauI9Xq1Z4GANquREHW7D4TYhBMRMcgf27kpIsCesQtPG3Fyc1SLwsMURZhNjOqZA7va64EloLuUq2JxqjfP22fC/HvvkpHyz2bKa+8e6lJHi41zUWiNn9bc38wMdtmdsITV1jrV5Rd65Dv08yyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4wvfx1/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4wvfx1/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2373C4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755002393;
	bh=FKxgnrsRZSqKECFsgeASB6XVR22xMu7fFb4Z9oTtnJQ=;
	h=To:Subject:From:Date:From;
	b=Y4wvfx1/g/1KvgE4PRpeosvKbv1FmAtcf+sb23PGZezjbkv9TOeVf5S0BngR/aaTL
	 u664AULKa7QdaFP4wv0rI2x34/kW64C7tjIxseqYqazQg02MSbe+53DGidHY5oLVoi
	 +Ov56CQIQqPjfSr6ShHL43KGDdQiGvDklqJv1QyhkRD/aRl6/E5QVs4m9cgm2X3Edc
	 qwBXwzYPASE0i0EP03OI8k29FR7vbegWK8R1jLTesKrAQ5+3A672TVLivfrI/wd/Pz
	 EEbdPzbirt1yLOfCUGKh2Fjc2F6+Ivp9fch0XsaFTZtd6/cSMEPxN8GTTWZZb/iO+k
	 6CU2loweRAd9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925CAC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175500239359.14595.3706851002959607654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d13e55d30ae020294a4f652142e35365940a549ad8fdda3bf5befbf498b79c1c
Date: Tue, 12 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755002393
