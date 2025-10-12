Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1A6A48
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760228995; cv=none; b=ZrscrU6wXfF6eMnLbo9h7eLFWGVyRmGn+MDrzubsbjCJDQAN3epUgBBKS1lOg+DUd2D2lrcesRimEJGReeVbDpGdk4EaknSAHhn0EPMrTNdRPzuqJ260MkfJ5+CkzQrE7MM/tCUh5HRBxUaXSKazikcTkdhU/KRXWSQYRQpytig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760228995; c=relaxed/simple;
	bh=5F9dl9uShrDy24u0yIBMz40MbfSfVuvptfDHfEPFuyQ=;
	h=To:Subject:From:Message-Id:Date; b=Qt3FXkf0+K2EQfhHNxqrZaVAOIAMzRoq8Kb2dp/n7t+u8XT3clWlPEWgaVvCDqar8h1hpPDDKexMWqinLTvL70icMM9amFD/quIv9m2Zy90qYr8yyUqf/aSZX6ojg+Ltn1PZPiGRsomuwlIyPP0aDbF8SbjbDSaCTgr/HYKK+Vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWqRWyrC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWqRWyrC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F35C4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760228993;
	bh=5F9dl9uShrDy24u0yIBMz40MbfSfVuvptfDHfEPFuyQ=;
	h=To:Subject:From:Date:From;
	b=CWqRWyrCy63ZpznUmKYNePbLOgOF/k2QyeDMnVnFydxM1zcenLTyRCul7Zzc/Aa8E
	 2k/+S4ZcN7VykkeydoDt86wPPbkDEchEEaqMJHUv62sEu4j1dijBCh8uacl8eUdVr4
	 P++UMQ26G1K02DADj9wDEfSkiseEIuo4ewzWjJIpxFqX6NUo6b0VUsCtw4Syj3g16y
	 2J376RkpiHh30ioj8sNXJj1I8J6uJGe+ukuWaG68bJanPEhSfmCZwSBEzW5eWxcdWU
	 A4GbaCEFuSfh4bHw2u4RMywhYrrMxrC0KeOR4g4ahE/eVgUGHh/E0HSRLhh8Ec+/IF
	 LL0n5J/lnY/EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94692CCA476
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176022899357.15082.11315659710847023022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9484377afb67d743bf706ff2d311f5aa6cd7fe4d66481798b913006809ccfef2
Date: Sun, 12 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760228993
