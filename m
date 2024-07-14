Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603752F52
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 03:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720929023; cv=none; b=tvbWrYMDeE0qM1B6i8dNxrRdJRCgeiScskB+RGIIADiGZO2oHqjLreMC/TBv3jqHys7qKcdUfStzqBHV5cIwGK7IQ6UAIwu46FECykT9gUNBvAPxd2qmYGZ5bLAe8w01CNXw9BGbkwCj1N91B84XegYfg1m73MFMIVK7p7dKbEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720929023; c=relaxed/simple;
	bh=xL12zqcDR4ISh23BO9wdp1pcgY8WpH7j6Pu7JaagwoI=;
	h=To:Subject:From:Message-Id:Date; b=cSvrqt17bToSVguDmlPpd9pdqEdoUR9Zob+LxztoJ476zWBIDZigrDb3IjisJuFVLk27YgXLkoH13nZf1ZbL4fgtPtfmXZkU/EHo1Urju+9shIfpRYEtfZBtmnUnm4dehgk1LmEdCtOEfu1YLCadYQGeZjfTZVrQUfhzNl4JpvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rk/amSpj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rk/amSpj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2352C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 03:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720929022;
	bh=xL12zqcDR4ISh23BO9wdp1pcgY8WpH7j6Pu7JaagwoI=;
	h=To:Subject:From:Date:From;
	b=Rk/amSpjs7lWXYAuQfqBkxRXtjRZ8EMSk+H+VEYRpCgJvu3ehpCdtGZ45pT2QrmXQ
	 l6jpGcN4+Xm13/bPMC76VIeKeealveJMo6gKCl24MMZfuH+XG1uPHJyveBmJpGN+1x
	 K8u6e+gfix4BkRlgRb90eEYlolScTtHOigzCHfPaYuj45vTemvRmIxg1/6aWMJcNHb
	 5aHBUzEkD938hMNS2FmW4fqRYAnZj2p2ht36n+CreWYE8d3fI+ygOOe+GJ5x/fEGFf
	 C6Dagp+UJF3yhqmW0QZH+PuzpOvtDReDSiFxFNq422bh1/CcQtP5jexDgVtgYaO5mF
	 IU+uNTs431fEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C65F5C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 03:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172092902278.9123.7517401992568411514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dcbac934937b59c6c6e4c177746ba11c3f83df2ccb506c3ff5cee4d0b6e6117
Date: Sun, 14 Jul 2024 03:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720929022
