Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E52D53914F5
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 08:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775031934; cv=none; b=epnWBK1NDZYQlej5bAbu0TnTPYL8qwinPmaftiG+fhZd8g/ld52BDIh71bxmuWJhbJkctpMseB84g9y9zxSPiA1Z1csG3fTjAdg9Q86MAJTNd4bMMP5IhCTSL1Hc9SqVAPyIscQbetbvQWrlUpF6HEprCferFhuFnquKaOlmUic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775031934; c=relaxed/simple;
	bh=lO2Ha1xtqxa79/WELd6kRBhu8k0IFADfjL2MqiXzMb4=;
	h=To:Subject:From:Message-Id:Date; b=tqNNoK98UoKZPHEm6vpT/DNPSJqIO//+ivySy3kGKi/Xr49LbfRriEC6Abt0G/UQ4PkokvXFHE/r0AtSlbwQO1/9iK3mQsDR34ORjyWxtapuwpgckqSlwXjmWfx5v0++ckMKgpW9InUwUFoAhgfp2rkYcCNuskfmO2slDx6p/jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9dOgDvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9dOgDvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8070C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 08:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775031933;
	bh=lO2Ha1xtqxa79/WELd6kRBhu8k0IFADfjL2MqiXzMb4=;
	h=To:Subject:From:Date:From;
	b=e9dOgDvlY7xZTtGB677jmOujvduD3fcj38R1K0GeNoMIGGrPWj1VCYfkdmC+A6bHE
	 pEeqQxsUvwE95ihH1xdSK8PBFXNE/2Uc/S8ifHd2xM+hWcvG2uUhyPOIsqGF+MnLRv
	 BQclqkrU2wX6PHWAzEvIrib1y6queqjC/BRJ0GUwmkfEdcQLfCdb1vU4okUoP9joeZ
	 QHabdZMwvXLrwrTs9uDH9IHcbUagAjrp9CtnAHa/+7mczuxg12bH09ohNoj1Q5rC/8
	 EJ/ilMOCdswH5llVEMZ8dK1X0D2fW8KLFxwNmwc4wiXH6+TeFr+k523836tqlwKyse
	 UsaeNhX51FF9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EDED35157
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 08:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177503193368.14501.12359628995688218353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebc5a37512f525967c4746460d10c88fcf33915e4a254edac56a27f1fd5d1af9
Date: Wed, 01 Apr 2026 08:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775031933
