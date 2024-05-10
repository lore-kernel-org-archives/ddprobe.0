Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E34376
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 13:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715346743; cv=none; b=UwhC4/JGk/Tq1PrK+Ir6Zep2wZ0nxpqGj07qdbPeuLY6+6s4Lhl03wxuLl+EKSq08MIvyoJ2dPeCzhdFKF0c8ldokYTn32ca6AGMSYzPO0Do3GuNrg9ETvicVsCJeXNZg0L5jOBJut4blht0OLm0MjRS5bt1pUIG6AHlDkRW5dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715346743; c=relaxed/simple;
	bh=dTyES2RhcoqVU0EDUnEqjTZuyNBthQtCrfUfFcgwDRg=;
	h=To:Subject:From:Message-Id:Date; b=kA2dQhd/+2DQ5QFHWhREfuzKlH5IxWnjebESI7mv784m0Zfrcy2LPbRA1zZkCxBxfjmeLtwj5Spmdy4g9FRL44n56fl6eKPSpQ8dffME3SaUlnRX8wutQACdCziYN0w87x87gjF3FTZLaZrp5UUI8U912/vAU1lpfT7ofQ7phNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tx8k7hmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tx8k7hmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3373C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 13:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715346742;
	bh=dTyES2RhcoqVU0EDUnEqjTZuyNBthQtCrfUfFcgwDRg=;
	h=To:Subject:From:Date:From;
	b=tx8k7hmA9d1boKNuqv9bUa8h7NqM2w88fRGhrM7cbPL0ne5hft4b1gpb/LZ96pTpA
	 1B4/M0SEc8nN5kQA9Tt8miNGz7nV4GL/6PfwmeqT+gNN3rLSLO2fPmrFPr+gdjYunH
	 v45H9U0Zv+1LWLkK2IJCZuCmSPYgPGiCPV/U1mrohczPBLRRCPEsgkahSKGStVlhZU
	 CpQLL6raMxcNHdbNBf9gBsO196/TUToSiC2X32N0mWIVd6n9AuY6t+XH07ShhrALMR
	 7qI3WHbhCrN5gJVyZLxTQnD4WDYsJ//s+/Q8PkVlxzSPKXg1muGpkTHdT61H0JP/pF
	 Uoc251v9H4htg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C34DAC25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 13:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171534674278.24115.2558823226317472876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8360be3f7667372dd49401db472cddea9e755b55ed113adf78d119aa3a25f63
Date: Fri, 10 May 2024 13:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715346742
