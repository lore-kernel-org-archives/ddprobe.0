Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD10C35E1AC
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 02:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783651714; cv=none; b=jX+ZuP2oM7dlVKbaH29DRfNZUAWr2Nmu5P8/FRjK7QQYAnEsx+0U6T2Fq02vSLMTNtZpdPiPhABjQ750vpLj/bfScPn/MBG+ymEJbzWiGrNjVZ8VcXf984y56DUjtnXhqM1iIni76fRAO+RHVZjND1JFPoGeiRMOGhS/G90hlqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783651714; c=relaxed/simple;
	bh=COEpbnn3WHVrZlwEoJgpn+YjkyIMs6okmkMDEyMV5Cs=;
	h=To:Subject:From:Message-Id:Date; b=nZA1L9CF5S03Erch93Vs7lCpLQOVaKkBarH+mg0qPl3Hmr+3RqDp1HU9qxMptlisFwor6E25E4Tgn+gm+BdeHQFl9m1hGjduGlktUF2sHrRayPnhqK/myI7RxBzXRVmDDOF7k5sy876UIxenvoXZ44XlWjcXZGQ3jr5S2hgN4V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzCBio+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzCBio+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8454C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783651713;
	bh=COEpbnn3WHVrZlwEoJgpn+YjkyIMs6okmkMDEyMV5Cs=;
	h=To:Subject:From:Date:From;
	b=AzCBio+bHAQGFAvJ7qaPX76VK9bdSzQ3CKE1kInUkmQJqpeVcu/P/XsiiGdo3nZUr
	 v5BJMlLKwYwXhn3NiP9gwg+fEkq7gHNF3Es9uotaLoXJ8sTrJty6OrYpAz129b9oRi
	 JRzv1QYAKDJCidKXjXaO6uZWM9xdopv6emETAOIp9kv6hqst21zQMuMLK012QNczmt
	 wczmrGXYDIDcroyeF5nNdNHPu6bHU7aUZPM7OY5PZ4jJVQLRkYiVRz26YALdcE9nJM
	 jVldncYuqIzTplL+LKUEBhQgvBWFaox+Gr/rkV7wSZ35e683qlYDVXPjZNYvaZRI0+
	 Aivx9Jhc76nHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A800EC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178365171368.1571.7779339798275274577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f9048f209cde99d93f9d872e634fd595eb575c62b163312246c64c2f6c04954
Date: Fri, 10 Jul 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783651713
