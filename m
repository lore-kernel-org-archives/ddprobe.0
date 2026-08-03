Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB74225403
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785731434; cv=none; b=jH3i7jG8L+q/UX0Wg7psXSnjDV8kBZaSAIlqy/h3tf49iPqeno2f6BtP4n/lLts9esF5C/qOp+LI9Fc6Z3s5I2HVLPTFh0mSYReN1mR8ipvTBMG/fYVS2PAN+b3NuDe/0gevElRMwssFJ+AE8zH+nNaqMMDSAPPr5J7Nz4GQfXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785731434; c=relaxed/simple;
	bh=3WHqCS/lHOxlUo0I73RhMujfgbP001UgN4U1we3vuD0=;
	h=To:Subject:From:Message-Id:Date; b=bWGvjCqJcSMIfjKcniYVvs4VSdPP4Qm+BnxpQ1gmR1Hd11lwrLLL6N44l6m8onbHxjYldW/5LA8jF6MBuBDgffIHjEkgS2N5ZLQNXTB7J8kqEXZvLCDbetrOP76YDc2smKMOPgleP4qNPGBrkY5omPCv1xXdW1e0rCXBgiuOWyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQpG9CqY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQpG9CqY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4E8AC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785731433;
	bh=3WHqCS/lHOxlUo0I73RhMujfgbP001UgN4U1we3vuD0=;
	h=To:Subject:From:Date:From;
	b=NQpG9CqYR4TSiWzQMeq50nzFv96L3c/qo17NIzrlUj6RXrpZmq4Ed+7tzuOx87MlN
	 +tGHkSK17/ocrlLaluXrZeQD2CnnihZ6SPJGmndU7+Qs4CpHMnE175FTKTHiVmSp+D
	 PKa0Wpf5xaeqxMRDXvyFgeHPdWI/imk/fgm05rp6A+rpkUmKxF5h9XJahqFo93e8zN
	 ObkbBodG1qoxiPoZ6yyi5qXr0mRZBy0C8BBUz9Xf/PIX4zhNizdAjSYUtaLIq9yZZu
	 y4pSkHlRRg2yrDeGnLnNqPhBbQ2KwirBRUfT3glaljGKnC71szuszn9jF5ovMyFntj
	 HANao8/cEMZVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE74C55162
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178573143371.27234.14107257841297383937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1378a65e10255f9af4521e086f07fd35fa25852ab8ca074bcd5e4d28bc357846
Date: Mon, 03 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785731433
