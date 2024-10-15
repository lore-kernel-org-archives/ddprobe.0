Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E43217335E
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728980754; cv=none; b=TWJHLJ91osaojG9J/HKTMOP5NurokWqWwe5nZzIkladi6eesjhQJAW9lg3JtSWHySm9PllCFS2MYP59DYb9r3W+eAjTge0E2MlqXvZx39fPC/aeyr6IttA+YyF61uiooC/8Tvy64Td3Hk6I0/TykEm0WK5YplYLBclSb1jTHbBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728980754; c=relaxed/simple;
	bh=B0U1dBp63rxWFcqvN6HzNFwiuUrd1wOXaHCguZRmpfY=;
	h=To:Subject:From:Message-Id:Date; b=koZ0xZfFiEPAdP6HeKmnMib4JkhVFUSG7XUEG7qffupM18NCfNAsiiQ76q4FaEDVm/EcgnXJBBVt5AcYFdMFX52mKwW28kXz2ifcdS8vw98GlmJfwHRh8UtcduwtzkvRikV2SMBMwP70LmH7RBFVa87S4Xv7GbDg9YzCX0TpNK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/QvByn1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/QvByn1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C67C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728980753;
	bh=B0U1dBp63rxWFcqvN6HzNFwiuUrd1wOXaHCguZRmpfY=;
	h=To:Subject:From:Date:From;
	b=g/QvByn1GzBH2OdFXgpiQo+W/1emxlOLbOJtCLWw8zfIvFUQ0BNxAvRCJX0xAea9k
	 OB5DbVe1BW2b7tW/r80tj1VIdaShtlD323Lhqj1LN66eOsSYNSQkxxOLWY73FpTrCF
	 NvidzHe5GNyiIRW52TjYFvvDG1B/cfDukXfhHDebOwMNwFdimTWAg/QlE3Wjf2FVP/
	 JAYftHKMb2jwm46JZ4tWGy3PkZQV7E0kMOVishGh746miizfYQn8Q66QnYQfBrPa1h
	 FQfPETLHKKuttIBIeiA0DYzVg7NGpdlHJgDy9AmksimHQGqN/YK1o6i1wNFMhvT8B5
	 GGM/sAFI9F0Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C3ECFC274
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172898075360.21139.9012801298533508527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a150eb9a345a9d2bafd557a948f09f425f0a28a2f501433a8e8fc855d51799d0
Date: Tue, 15 Oct 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728980753
