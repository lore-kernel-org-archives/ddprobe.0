Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86B5B19D89B
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 01:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718503103; cv=none; b=T2lJyQuSgffHpojq291Bl+akzhntlammySNSPGIDYUiMt2sfV/9eQSpiyc6MHm8kur7SHZpcl4G/fsQkPbHtVaF9oKyvaawh6a0AtDbshB8Z2sU1k7QSq3mG+9WHHSDROM7iEEA2eQzcZh76nt06Q1jWELoUbzndCgArUUwdN+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718503103; c=relaxed/simple;
	bh=VbfxBNieveR644mbcFgsP4b5E1K0Oitfd3IanAEBb54=;
	h=To:Subject:From:Message-Id:Date; b=i81elnroB5i8UjkZNLdB0hGjYzIKSwDSwMC77dOMem3+WBELx6U3vM8J8VfddUgfTU5+xQ8U5M9gO5nBzc5QWkv+ueEFUOD72VdPoZxtET/I5ME2C95mUgbTFMTSfzKofDP+Vlm6OpUIgxeCOgNdyftOElIwWvmN+OxSkwJPalc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lw2S+zu/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lw2S+zu/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF6F7C116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 01:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718503103;
	bh=VbfxBNieveR644mbcFgsP4b5E1K0Oitfd3IanAEBb54=;
	h=To:Subject:From:Date:From;
	b=lw2S+zu/O3zbHkrYaUsHb6zmgVa1uIaSRqAfLUmqfzRv9NuIDwT9b09+IlIpoYJfR
	 kJ+IsTbjNpe+O8aOfJBAy+sdnOelq+dwF1BOR0JiMZ//xvfpuFmlO+n/zGotNgC0NU
	 6tYXu04JnoeyIDBuPwvsdch24THYB/DltFIiDLGcNWBbGedzJJPgpRIOy2BfqaqbVA
	 teBpxERgbbiYbw5U671WL50vbT4N6n54NdLsLM6YOEmclt4nbdok/lp/lZ2GtGX0gN
	 1AjoHO51jQe4WyvP7d6d+8uRol7q9QX2B1Ww2Ey9MOzBQQn5olHpLzZNsMcpKqFXly
	 FSGkkMHdyGcUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0386C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 01:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171850310282.21122.5208199940835138560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d4f4609bfefeafa4b7dc6ef061769f1653f4e8b33f95ff88286a133beaede6
Date: Sun, 16 Jun 2024 01:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718503102
