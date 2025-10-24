Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC4A26B0BE
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761308394; cv=none; b=OvbZY2f3cnut1tCu3/Di7/a8rF1PnMjbwA6D/vjdF1yVkmgiLFS/mBxaAx+9Gg+ygDxrH57HWeSNu+XlEIFIGZmKE0/GHJQUN+u8XSZrOTlm8kTMBpXt3ASvSe53s+PAcY/Teb/abm3sIiDfKV0dvHe6rJTlCnwaOUnvJH/dht4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761308394; c=relaxed/simple;
	bh=poiS1k+MUpfrmGOqhbidP4P44r0NtEqn4WC2k6lzgNE=;
	h=To:Subject:From:Message-Id:Date; b=K7W7Bl7PkXJof+EofGzhZM2WYf9sZCwQcfPFTApchVc2meB/yvTc54u35nICytnIzX3BGcLGNGCU/qUMfSg170gELkvbtNfbWqg/KgCb3ppyRn1ig2qO+CQAla+fTT0r9uuhZhSgIYEz7zq2AFzgIf/CDn37pCIPUcfA9p6wJdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lneLfVh2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lneLfVh2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4418C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761308393;
	bh=poiS1k+MUpfrmGOqhbidP4P44r0NtEqn4WC2k6lzgNE=;
	h=To:Subject:From:Date:From;
	b=lneLfVh2QQourVBRWaHc7qbWIkmWRivkFoE7V7Ul0HJhNvS1pORMt5g2Ky61BAoh3
	 VECDtFMXcMsjE06VJU5EnB3NTQytVcMGSdcRKHdniSKRs2wrM+8ngfVD2zx1Ez5ND4
	 41c2DStETehfTsNU1KNQkosqrNoyNVbsUhp6/u7uaJce6jxzpYxU1R8GGmap4ddIwp
	 RXEiy7H8yHYXv+kcph40ut05gWt5psij6Mm2JEtcsVrdToMR3DoTGykCD5Cuq+JibJ
	 FQhp2OKuV3GqzlerePRUmLB2n/567ehReY0vqRsbOs0U7kqfTCLiKaVIezSNdN9bqm
	 LMOUU3lAoPTCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911C1CCD1A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176130839358.15110.14933566550738889405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 052ed728075e6bfe68ffce05d52f81ecfe3dcafd4d48fb2e5666f81d61a412e1
Date: Fri, 24 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761308393
