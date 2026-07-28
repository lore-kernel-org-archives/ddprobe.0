Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472A63A4508
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785259234; cv=none; b=DVdP3Xw/IxnyLkeGVu1r9wi1HYwehf++sF9W3uhh7+rLkCwzdh1XMD1eyqMOwrKdxwL90DrxxhL/43ZrvA/3QHS8XpNuNM+MexPeCqDOH5MZDR+JhhasUKRumZYqq3lDu7fee0kVTTRzjhVw54mFSSUXxEj1HY0wMgifNr/YmJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785259234; c=relaxed/simple;
	bh=eJTprXgsTYZKL6z+PHY5GiayaDZqe4CR1Hj3+Od5rQQ=;
	h=To:Subject:From:Message-Id:Date; b=V4JF6Rdp4VYm/gCN0rKWWV3WYBb9gTtKqh2yG89CM8NvdDGHVPODcReP7kc2LcaT92xT3IH0Pv/LFK1HiYK0xaXZ0HQdqISqLLiehtJ10QVL+2xvz5EzNNi9MR0dR82G4eBobEjSAMT/5exL4NX9JKh1pg6qM+I8TX069x4ovCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPDDQ0er; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPDDQ0er"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D471AC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785259233;
	bh=eJTprXgsTYZKL6z+PHY5GiayaDZqe4CR1Hj3+Od5rQQ=;
	h=To:Subject:From:Date:From;
	b=EPDDQ0erHPZRetBIk+QwLaD2iiHnJ6oyN1mStCASONRS8iO+3zUXFpsOnBXgg7/hm
	 LpUMaY0V+G0t4/V5amXRMnKuSgjtULCy0J8mdsaKWWm6IwsW/KMUpgt2MEBt76Z065
	 h08ByLc9jR6PCeP3zQmJ9SkqKltlZ3AXG0K9I6FI9qPs3rewn3+cI29OrpAVHijT77
	 FpH0BObroN5nypHlV7TDo4gIcXEi4JYyu7sM7E8ljs5lHM9bmck396SEWzMRSna10o
	 aVQGkls2VDhhdvw1WTKEnDH2EbPGec1kSbsTRuSedeeqQIh65gQfwSdVYOWyeeZ11f
	 8BOBloDh16VxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CCCC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178525923368.2601.14686652724132513601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44c3d903321439a193d4af18632ebfa04b549f88bc1dbc8415ec0b193ee82771
Date: Tue, 28 Jul 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785259233
