Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B6F25B0BD
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791317434; cv=none; b=EnVEb7pyZGDL+gvdcemA08ZnplbD503QOtEVThDyVd0i2XLmqyGdCAe12jrCcYzMZsyi9LSXCGLg+cSh6ID+TZDL/ITxqut0JwdubWilD08h6leyfYSAM0I8N8DpD5RQcl1grPJa6YD6mGYh0n8k0PLNJNgUPDscmCPvk5kKwYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791317434; c=relaxed/simple;
	bh=HNjCz3A6u40w+qMUPWaNhPaUmj3g8ySL9HWazjULLL8=;
	h=To:Subject:From:Message-Id:Date; b=TpxU1GG03ybo2xiRA4NSKyMK/0Wh0DFRMHFBnd0ifUim9T+chmnCED/kYK3nTNk9McBGEWHyFEFV1NCHhCZQFWyT04PkFWOykPrWI8euBTcbUmcuGPRwZnrOQ5etcqtOP/LyxxRziJnMAm+TdvX7uP1QgShrgq4qMFFdcfXN6dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PrfX9lkX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PrfX9lkX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BC2C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791317433;
	bh=HNjCz3A6u40w+qMUPWaNhPaUmj3g8ySL9HWazjULLL8=;
	h=To:Subject:From:Date:From;
	b=PrfX9lkXreNHenH+envseOQXVCr/hqhYWHR8yytVsJWlgu6a3PfPppAkXbyNexZrR
	 80kBNjqpiYRVT+aFT8lCM14452fMl2YQAyHxvn94CrX6ZeHBwEKia/jjOJNqDf1L28
	 NVaP/LZ7oPkPKv4AM95oygePb+PbISmhp5+lPTpAb4cKpRqFVArT7J3qvedH13l/4c
	 zAePruHA4EQAmSsmiyULO6Vsxc7DsO1MPujVda2K0WKTVJXkwCfhj0/s5IHezDRWim
	 eO3hLidLy/Nt8mod1iOcmBF++I5GQIT+oUUQkGObytXa35gdfbSq00SG+ExJm6N1kJ
	 Ql6+YaoEGuSLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE40FCA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179131743369.25179.8257024295026480004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc1c5738ee7b8f36c52340b25d1aca30a28b43b58f1f8384a61279f115074c03
Date: Tue, 06 Oct 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791317433
