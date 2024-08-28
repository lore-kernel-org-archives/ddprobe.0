Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31367172767
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724860554; cv=none; b=dcbrglWkTKBrTr/QbqXVPJfuyXmcYVQ87M2gjYtYikV2jBSaNy0EoGgKn/7ezuBL1ElS2dxZrrUmeByPtCFOOLF9Hoq1p9HG36njAayNznk1qiA8d9ac0vKtu5zBI5obRNEX4Mhah4JGVSukWnTYI8c76SEM5HajTspRLzeWNKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724860554; c=relaxed/simple;
	bh=nRNCbKCfoh+440Nu9igdEno0OPpiNrt4V+BnEfOC5WQ=;
	h=To:Subject:From:Message-Id:Date; b=i8A4O+xesLD0x/GAEwkiEkGFJH3+Suv8O8V7iB7sZYXc2iJIqnnxw5XusoLrpL3/HDT4wyKSS7KNusad+sP9iGrdPnvbRBe4niYYkY9giZ2RpiXcqYDsBrWezCJ2SBy7SEoC9ptlfYetRovmPzQ9OHthyzP7oJoPnxo+1jJGXMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7rKUckw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7rKUckw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5ECEC4CEC4
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724860553;
	bh=nRNCbKCfoh+440Nu9igdEno0OPpiNrt4V+BnEfOC5WQ=;
	h=To:Subject:From:Date:From;
	b=E7rKUckwkavI0UP8lKoBdcV+ec8iYENL5mnBQys11i/DFXnCfOZMmid4QWnG2b+1Y
	 pGh1pZSpndGR/FU0Lr5PFdX0DnrOEERaI//QCuiG4DKVkmtgS9LHHqKdaI78EiRpWj
	 yy8k07uvG8brsPg9+VRvcub6D7cPJWRZqaSPsyDK9KADpr5Ds8UZAQbuiNm1RQC/lK
	 wLdOmCwUOl0VkswdICajT9B/QZHhVp9SnbnRTxAQoRFecnj6V8fsLnvJQZz4OxR6zL
	 Yw8tz0e6k322Fr5seoGFx2nMd/6wuU1IJ11XstB6MrrtOfTA7dmzfwWURfIPcRi/D6
	 pXXOGfBGPEKLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78DBC61DB8
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172486055367.15907.8080520739879076654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15f33da915f3ec8375f1f75d50366681a28f3596e6bf21b28e14e47d4fe0187b
Date: Wed, 28 Aug 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724860553
