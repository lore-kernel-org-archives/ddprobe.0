Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E431A9FA8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790305834; cv=none; b=RlnSkbZkc4QLqr/V+RhFSDPNu6ZK+hlMeYpLHz7u8UB7XV0NXSDx5QF676EHQMrXO0lGpyk42Gbgdh+AuRpk8GdST6i5Ji/pBm4LRyBEZQ3HMd6k3J84WSMHlN+tci/MBH6+9aFAr81ofvedA+Cma2sbkm1VLdZV9LvcGEqGDUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790305834; c=relaxed/simple;
	bh=JojBj8n/RfOJATTvHseIBoi4xyFKbxvViR/Ciyre+QE=;
	h=To:Subject:From:Message-Id:Date; b=csPkzUpqW0o5bP4l+exHG61kME9De3sjB4771/ExeS1QeiJhOoKjLb9rG+7W08tIVR68biqH2YFIABvuxNuLwToYcMOgQOlXlH6K/fjHdm5xkeH/3Rai3uRD+Mguwq5YHRwERYUtlQ8OpIVbVsN0RSK+wmkAM99kOsU4SdQvLVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tEZ5/t+a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tEZ5/t+a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB0E4C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790305833;
	bh=JojBj8n/RfOJATTvHseIBoi4xyFKbxvViR/Ciyre+QE=;
	h=To:Subject:From:Date:From;
	b=tEZ5/t+a0xAnPC3IX1RxZjwAvWlDWbQBjdRSaoBDe0n1447BF+c7PbF34Smc40O48
	 l3XqxRGb7mWTM6DSKT5LJtiLtTvy+iLWk70/9bKB7gPQMV59KPISGOcvTcivJU56Nh
	 TaQFK1sh/V0bf6V0vTzM3dMWItUXPL4uO9JyPwzvY12ku/6kXLKgTU0wBKVqMsPkBx
	 y+SqxKA2xszyVJDaQrlw68hsqULoS2vCjgI1K5BXImDC/5BySuLbW7NWF0JbNIN2JF
	 NuXUOnOA+Huuo3gbSyi420aa4j5n+7dpVsV4sNu+TRnI+Ix1x+Dbvj4bmNM81jur+H
	 EtAgVXnOKVOPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B63A8C9831E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179030583370.18727.10928335746888359405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac32c2b4f8326be39195f9437e81c88e2224b02be5f8150c98a5df68becdffa
Date: Fri, 25 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790305833
