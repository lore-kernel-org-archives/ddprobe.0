Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1D51DE8B5
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761997794; cv=none; b=upjp6qOD843+BRs5THK/4GntZFwQeFjcYqjlDVuR5CBM12gGCyY+dqjUGoXJ0UcD/3mPGJ/qEcrvVs0RkrkwH1bNG0zbDjzCwyOrUWXHwi1r84rpAL3G/tRhSpzZnCbPXjz4zwiNiVxDXwAR5y5nLOjCjzXi8QyXzCn22C/yNN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761997794; c=relaxed/simple;
	bh=VCfdeoA8hzwODPdNiqGm2DGEj+g8XuigdAGBdeXzn0c=;
	h=To:Subject:From:Message-Id:Date; b=WRDx0FESX8rRP/n9QdyBm1WF2fJ46FO8vc9kKCsqnXfoN3rT+6RiDn+DCWV5c2eWPYB+Nw/GjAp+hkyKKLuX90HbdfM1vcdpI+bgBNIG8ElbzBjMcg5o+hUxdXHIwCszMuCJQXJjvRaNyuwVG+aEo0Zvp3cSysljg801wUMdggI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdNCENVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdNCENVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32D3C113D0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761997793;
	bh=VCfdeoA8hzwODPdNiqGm2DGEj+g8XuigdAGBdeXzn0c=;
	h=To:Subject:From:Date:From;
	b=kdNCENVGBQCILCQj6JGPtIFsKNqbrjGmG1SiDyZDV3tYJIiSBB4v5Kwiyy+C1q4Kn
	 HKVfGfi1P4YR74Jyy/FpSQYp59wuYcvYdBVIRl6YABItmyoPB2Ft21LF4C5dia7ljL
	 6Vm/V73eZmPKK0OG0NyTu5VF2Tdy6Ud901DtQF37widEKKuc2W+tJomzDq1EmfiP6t
	 4GQD11wuNelZXT3InoBCAjYfObyu2wjtblg2AFv2qldVsCAqqCvXLmQP+1mgrh/TSp
	 78mebVAvQ30XBoCGRzDgVv/x5hl1WT+ufGIOOCs5L+pp9mgv0bmwq8s3IuU9xHp13Y
	 LDejLb6tPTIUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D45CCFA03
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176199779358.20601.14218599711771405545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a6e8de5b6138ed8ff60202368c60cb13d54cfbbb7c72202406443bf36e466d4
Date: Sat, 01 Nov 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761997793
