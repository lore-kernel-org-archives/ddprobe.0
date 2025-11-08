Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DBF23AB9D
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762562994; cv=none; b=Ks3Ge86LKc7U7q2hr4fpkFmt/OxJ0WphQr5QxukF1q6y6hDOBXLq04yoYoZkVSRTgml2ty5hptqEBbdLH8hlTcSuNaw6vHDPOlDHamTWdGXvMSI45uUiOu581684Rh4z1u8vO/dRGnS6/LvPdpYTuS4+8b7owVVU47IonBrreQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762562994; c=relaxed/simple;
	bh=m1txYm1zhARW2zaQycYV+AVEZiyyEXF/7asJkJElqrg=;
	h=To:Subject:From:Message-Id:Date; b=heunNZdjc7krqF3hyiFYOPwNNhIFrCR5ZMb2iXFkpwXyLJbAI4lfVz9b4vN/5IEWP7428AUAKjZBUVy1RmxgCKbbX8AXr7BbDxTgzr6hTuhPwcziShHoekRO2Xosp8CJp+Q1Yu1co1peqgeNBtnHmALTcGsgMC2csTc01qBb54Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpAzmvDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpAzmvDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1537C19421
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762562993;
	bh=m1txYm1zhARW2zaQycYV+AVEZiyyEXF/7asJkJElqrg=;
	h=To:Subject:From:Date:From;
	b=LpAzmvDdTUc9PEBEOxLF2uy496K1chuPqZWitGFWfh62wLVGp7DSy1EPgVte9+CtV
	 SgyTex2JOIUesHpC15a/YUYyySe5vb6V7L838cPe4562DM1xt+2MfEihnFdDIxPLYp
	 hbadH6qHwBlf+m8NtdzaBpn1hGmSAZ2kpr0N748cdgsMdNDMKrnLv82piVeWjiklqR
	 tXJVsgtLW8nXB+FqOmS5TlRjU10+Et9VJVc6sAizsMX71PS3Gs0ZCS8JQ/veaojuei
	 LvDCMlnMdgPJkKYyR3H0UjvIAm9nWilj6k7E81BDh5CojFM+1vkW7kESKDd7hfn8xw
	 d4PuPvkYDltaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9500CCCF9E3
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176256299357.6451.3695576979466270014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80113022a0a6a5aba996f91080740d555a590676fb9b7bdad96f19fb8532f8a3
Date: Sat, 08 Nov 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762562993
