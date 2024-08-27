Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F4C1BFE08
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724765754; cv=none; b=c5cXpcDm/aRPpPWkQdMiu76SGU7rR0KpgVZrPsfXDMgVWtRrbYdDtyV4QOPhR1BPS8XERmQnHe62woceBGpTHnrl3wubDMzNlfVRvyWdngs4bYDdOl6yGnd5RoxCBiCC3gsOFP++llM7O0lH3q7p82a7kOC+ysE151BiBuNR49s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724765754; c=relaxed/simple;
	bh=d1Zq5Brzk4m5xNJ+8W8iS5m5vZERpXly6V8ljgR68Ds=;
	h=To:Subject:From:Message-Id:Date; b=TtWw//flnB6/A+7gdrdU9oqusof4beyuraDy44VeMYZHwuuaG/nwKPJbqCXSCE3eg7sUamdgQJlmnqq/TSHis95btE8d1K3vjbpGva4EeCiLLwthkEUIWHPJdvl1cfC79rbVpV0rn6J6Z5CM5ZeTPiSWEPMX/S632aOKu7omH0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWmyj9wz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWmyj9wz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21CAC6104A
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724765753;
	bh=d1Zq5Brzk4m5xNJ+8W8iS5m5vZERpXly6V8ljgR68Ds=;
	h=To:Subject:From:Date:From;
	b=HWmyj9wztUM38uM8dTHqUAVp15lUKgCO0tYybuJYGCZ2WnNPQ1YdTDP4Cfe10ZYAj
	 ysoRbxQOpA27hUDfrAt7BsKRTQ/2vSo4st3fUU6ExRMjmluOmBDDF2HdYA51oHEXHF
	 EFnDCIASrCzOjUqeWsmQqmyEDrusDOLrg/TKPrYtSFYDFUnC3ULeyyeLdnAuuU3erA
	 0le9AOsL3BzeghXRg8EmtnCMoR7glzqxMLMY7x5in8dFXyL6mgzzOjMp3/iE0ivvlI
	 L7k8QcmCZAPvRm6kJ6dXDSp3BpxmgeF9L79+kyN1IPqoWoZSh5uatmRd8r8R60GFMi
	 inap1RHoZizqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B731C54735
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172476575362.18433.5031059351324030267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaa0e96ff0246bd6a2ac5fda723a12fed504f223158a0cf0d5377dd8a06fa236
Date: Tue, 27 Aug 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724765753
