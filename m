Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666462BD18
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 21:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718574503; cv=none; b=BB4KHI2dupUGmhxOQBWVS23SnazqGxuEKo/yPAKawovmIiVUvj5vA3JceMmrsmUMPCel1lbs5s1VgwaXI/+RwCnSegPgOYhZJQlV7OjLPbP9SrJdUO0h2VVvMhZ1n8EEcmdWA62CGPYYAxShQwKBMfDt4YluZDRRZf6hGPo5lFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718574503; c=relaxed/simple;
	bh=CJL3AQN7HrVCDyJa9tEyuiNlSwCuRBQwItbiEQi9ehQ=;
	h=To:Subject:From:Message-Id:Date; b=CTbQTQKhm44SNNIZrrbnFvVLTNmx1SVmjqQmJ7fQzHnH2YMPAsNCig80QQfWxnq12iBYMzaGboySQXO27y1MdFuxT7UUS67WG48d1LPLV5H8Qln48Mkjl9FdGLfdJRLfvE84unEkyVigWqmP/QEkeSygwGtd6veYBA/ZCDTsJH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nf38Lzk+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nf38Lzk+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD828C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 21:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718574502;
	bh=CJL3AQN7HrVCDyJa9tEyuiNlSwCuRBQwItbiEQi9ehQ=;
	h=To:Subject:From:Date:From;
	b=Nf38Lzk+Y0+0qEgX5zdPn8xcrLFSMOl/1Mxh32cagqh4Ed0IUlenSpwHInZzPm8Mk
	 81z31GE9Jv3etUJxgedTHZIAVi9UcgYgjBXhMIpq2E40VPewFTrqxpyEj2CzNHHZ8U
	 DnUiA+sAPAtutJJOCVaixT7NOYvScNo8sV6mxAwSih3nc4K16W5FJayI0yYTJPgRFv
	 1fkNckcDaAqNZRwf1pKtCei96nwlPqGJWRHPVVFRJx75eebaMZEIt+U9uHQ/wI6Kg0
	 ga1P5bxIPhObQGVB9LRDh09dG2VEq8fY+nEWUvAW1xhswiezxKVWqds3gCCaVTAzJJ
	 /0Asbt2imKvJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9A85C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 21:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171857450279.3575.10282741147935697921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 204ca3e32ae7aa5cd58b06a6d6fb40553edfc59770609f6c54ba08810b595850
Date: Sun, 16 Jun 2024 21:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718574502
