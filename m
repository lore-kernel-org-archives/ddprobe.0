Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C63A17C223
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 17:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717177463; cv=none; b=PXqOIpFDpLzmaQ5yqZ8xFjiS4ndr1RuIGoCZ6Z2qKU7coG30aULKiBMsHjxE3EP822S/B01M9U8VTM3cs4wiKrI+QakdcV30hjOpMH7c9N8ykhZkM78heCb/9Oy9n3k5VdzQMEX3jIiHVLMnpWZ79g5IHn543jMEmGAmU5IsMUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717177463; c=relaxed/simple;
	bh=ROOIdVb/JRw6ELGTfjQomoRJvXhjjBSZCG1s2uwuva8=;
	h=To:Subject:From:Message-Id:Date; b=LxlxBTneDOs96MUvqzvucl1hBYR2hSvYKaxUOoLkCFkSOVgGqQKKS6M5iFSnGxQZ0SQ7GqSPhQ0OH4aBV6Nmf3mlrHpTBiogj+mw+qC3YNBvuOrb14q0npDaUe+FMdJcQzS88ZVmCAKeFbki7ld4YVI0nNoFPWUrAlGXqRiacS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPI+XOgG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPI+XOgG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB68C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 17:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717177462;
	bh=ROOIdVb/JRw6ELGTfjQomoRJvXhjjBSZCG1s2uwuva8=;
	h=To:Subject:From:Date:From;
	b=nPI+XOgGB/6QCp3d/NKyN3ZXBfPl9mjTAvC7Omkisyukoae9KotBXUYraIaoeG/BV
	 B/Ym61Uj55F3ka0VBFTOLHzSfGONvp8fFqEECSqbc8ScMU309xw+b62QgIdFCrEF2T
	 8sGqhVaLc5YuQEmgtZYzAfQH0zB/+Slw2+KpB6lYkOLaTuOwjsd1iPkP06yRIDgjyu
	 3cdy6IBLZbK6NIo6b3gE0Rh8vOQSq7WnSm26AkIhaVurb0JPCNe7v5ajT/mDK66XF7
	 Zny/ZybET25IMoc+Lm1a72wdQnuFsnY2gqgXDSY27oEcFGNGXhmZsMEhBj5oUMbA9B
	 8E+5rndzMDfbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBD4C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 17:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171717746276.5310.15519802392006164694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1f35a6b42bcbb01f038c29c1bc4aae56ee45fa231b50b43f56e85f05da0b077
Date: Fri, 31 May 2024 17:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717177462
