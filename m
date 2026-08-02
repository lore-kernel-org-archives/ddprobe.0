Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF31284B2F
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785699034; cv=none; b=PbkKmH92/KAWWlyf+gqjzhPcou9WuvXMe3HSDfJu+lKUvy0p4RTZVm3dd3urQhZ/eITGD/V++a5R5q+cLKU9Hqxmm3GwdIYCC0Om32t0WAQRVksnf07E3gnBoffYJ1hNXOP69+TXMWL6lzFjpFcnut4LgSJfss5k7YX8MV+GaHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785699034; c=relaxed/simple;
	bh=wJJwZDuJS1OIjyXyrwiira8959E9MuAZbz2/J5raSLc=;
	h=To:Subject:From:Message-Id:Date; b=BTTcvCLReldj7kh1duSYqeyXS7xAyWPkOGYnXSR+R6ZxpgbMUirYXVS/7Sp4U3mWETMfKqxayqzZD3QJG9Cqmb6Z8K/Kr79z42biOtmoRFBCdm4RLwCqx3OlDs40MCx/RJXZZhrnMTtUVuu9hhxixdi9NaYFCwtqz79lZ1PG4X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqs/P4uu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqs/P4uu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA0E8C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785699033;
	bh=wJJwZDuJS1OIjyXyrwiira8959E9MuAZbz2/J5raSLc=;
	h=To:Subject:From:Date:From;
	b=rqs/P4uuPcHAF1bIdtooyZ84vCYabVitq9l+k0mvMeLezOAUE9+ftYy+t2uumyHQb
	 3Uu8hSkoBGVQvyo0wmxB2kMAbQ/5PvzBinvtbBbXkT0UXELWSCtUCVPcl8ThJ1Atat
	 M3Gsie1745bOtHkdAer6WAOtwI22IZcmMSL/cs516rtAzBp93a1Hs38C/rLbXc+7Q5
	 tjutBs16d0LixnskFqkvBilztbU91wuEH0uoAN5Fsrw1sGkAHIhzoW5N99IXB9YTHt
	 gHTTSwEhxJz3sYPUFy7kfsh1MPROm+EFSf2cs+f1C1PT84jDL4yJYAz53g6RKBCd4R
	 qMRSMlsJ/08LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D11C55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178569903368.31541.3912806959145300701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 454751b3486b9898841b8fde582eb81496abf3651a2bf4c8aaa4e5e355761b73
Date: Sun, 02 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785699033
