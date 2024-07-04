Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FAB5A41
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 04:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720067123; cv=none; b=pVBhtnivK2eBu8ALB994x4emssAp2fn5OlgSmvDep3GQltXGpLDRUhRr3QiQTcH0K5Vof6xud0MtPD/NWVS6uowPsCGNpQhlQiT9e5Wgt8ydE3fLvH0JaxMgOWByiQGB7lA9kMEy+fK4m5lHVyNnLP6xK0x/z4nCC5PHDaYPdrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720067123; c=relaxed/simple;
	bh=XjBwN+cqFFge/7LJgaRLxCfJw5dtfTj35JZLH185ZL4=;
	h=To:Subject:From:Message-Id:Date; b=RNtnOFSr4sg8kquAOuBYruowAkeyN+daJoruBW06LXFE+bCpGdYCPKTeFmoDzRb/Z92aTfz4LjJ7MwQa60BnvumzhY98tzJIHelFzEFdcBzlvxS8Glk5mgrjteG2MOD/BhFvRHsF08ezgqrSZDTHsaqn01nWioNv2NYLQwEpK9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GX/CQc76; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GX/CQc76"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCDE3C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 04:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720067122;
	bh=XjBwN+cqFFge/7LJgaRLxCfJw5dtfTj35JZLH185ZL4=;
	h=To:Subject:From:Date:From;
	b=GX/CQc76rCVMbmUVz6plC3G0sMXZSuBtpkpkLR0Ny/NohHV0nxO9vTyZ5+PO7Ny6c
	 wdBY9tBqdHiDOimzr5GlP5NQB3YF0t7bPqzAv35frjxjvTvVmkeg21PKfUZHwaSYLU
	 XwrMUkSNHZk1/6eRNE1NPy9Smer1skMOnzxaYGttWSF1zqBeqMo97SkBuxX9EODOH2
	 BXgxAgU6vYbp0oOpeYRLEGU6AYEKDrQ20uU94l27sceEvonz8jfvVNsVc68/p7Vupu
	 QyfYSoinIKrOoM+wk+yKLkYGqeBIbvN2VxQOOODCJOuA4krgnAcZzOp+ix/MRSnmmG
	 7HBGMcSHAwJCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C02E9C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 04:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172006712277.18155.12633253811591574099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c701cd5e4e756fa2e94c183fe29b32f1cdd78c4e6f49a6e80807ce31dc272c30
Date: Thu, 04 Jul 2024 04:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720067122
