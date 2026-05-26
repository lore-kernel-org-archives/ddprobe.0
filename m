Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373E618DB1A
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 22:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779834754; cv=none; b=RtvLPCo9wLN+674KnLD45Oa4lWDuOwDl/LmB2rrT2Y3oSiUPyifeE6UC4GicZXmp66oVwVYGAPwy+sEtzBtxUXkJ9nXHhOm89tuH3ggV32OWBJBaHwcxBvObPOX5+b6n2dwe8Nl+ItfxoOfYBgahlWeaQFPGWc1tHIVmJusTVnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779834754; c=relaxed/simple;
	bh=r6Cd+QblIQdrYVvfZeROnU6t11xRopipsGZzg6tpOSE=;
	h=To:Subject:From:Message-Id:Date; b=SRFqwPcFCp3EgQTt7gp+uBYTY7YESA7cNMqfDMcDexVyG/kHfmdZtX3CpNKetVDnB3cDmDmbK5aMXwENylWgK6bNmw1Dj5qvB/OSuyMKP3tPEpLlC8b5BdUjDdMFqqOdotLuZAO2JEalPp5syB7g0vB1ckefvwvSy6BHWdo2+dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hp3g8tPu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hp3g8tPu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C1AC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 22:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779834753;
	bh=r6Cd+QblIQdrYVvfZeROnU6t11xRopipsGZzg6tpOSE=;
	h=To:Subject:From:Date:From;
	b=Hp3g8tPucperqGJlAo/ERXGyI1USI9DP52SZ5Zzg4+dn2kQBrAEiNmQeSRgt/D8EQ
	 LeterDcRBYbPg/hZ4LbChfHWV/jLsyZnoZicYxnb9nRFHPxNM17zLtcAydlXwfJBRT
	 GoCmjbdW+h3+rJ4oJZbMQ96aiPT9PQq75JhfY+s1b0jAfwq6wKEQOzZ+fGwm2b0uV4
	 BNwCe3YFIm1O0261Y5iOmJP88cWqt0uGRYB369ZDJf6TTpbLyKd/uVRMnV/zYuXHqU
	 IvFvg+BL91ymm1s4TkuAQvgyzgsswsIRebby9z+ErMq1k2MJpqGGEAcCGpo7KWT3mL
	 8IqpGFtwXzIgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB75CD5BD0
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 22:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177983475369.28835.11168638608088667660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 336290d8ac3158f1ea8315a275ec4f19ec576d50caf4ea61609ebe51d16326c0
Date: Tue, 26 May 2026 22:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779834753
