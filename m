Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2D31FCF41
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787612434; cv=none; b=HTmjExe9SJyoXClELakuv5XbUpx6Ducz9C2fmWODI5Pzn3S2QYHlAh0n/Pc/zuhzRtqs3k496powHJ2wQDlqHTEtgbD9Xw48C0FkOGQCluLagD0UHkdTSF24iRpXULXkW8OCeocQ8mgYGyBPuv8yJgpOhLb+XKJatM6xf/1yMds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787612434; c=relaxed/simple;
	bh=S95mqIAq1Q7lFNJXghupVI2FeMqgCa40YOTW3T5PSCo=;
	h=To:Subject:From:Message-Id:Date; b=aJyWo8SFi5yPvWRuvVIf1PYCWahRy+i1ZexJC13bo9IVzpR/PJ6QCc/abYYDqLjpxSoUZaKOUOSp3rlKRnYqrO1D4SGdumEckdGzobRGvy0fW0XXJWAcEFdyYauakrbVGkfZl3xTdpt4b/DF72GiUzEyOeTM6YJCOgzJ9foU/G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReAi+ncC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReAi+ncC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D129DC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787612433;
	bh=S95mqIAq1Q7lFNJXghupVI2FeMqgCa40YOTW3T5PSCo=;
	h=To:Subject:From:Date:From;
	b=ReAi+ncCX928V7lgmKLUdm4m4s//iqQA8Ionp9ItstAwvA/9tY027cqNX44Dpewrf
	 lwH1ttI9LOQJiB0L4Nn1TPqtYvY5o5o+DyOVbjzfvROpA8iaDuIzXyWVsvTrC03xOs
	 Vhli1ZPGQPwlC1z3FWjkWWpINScHnvOhhlgZGhBrNheJuH0iRxsPyP0vX2ti78YH7G
	 71k5T5lHSVA12lmqD8nVMNYdG8WafizSxnq3Rz7mzFx6942zzrDQAQBKnNiyiOniTE
	 Fl95IJOtQGiu42r4ZNgYDmTA69TrGsLX6YKEE+OwRLfdyuynuRnlmruru8R8Dw+jRn
	 f0wvFFrTfTH9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC03CC5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178761243369.5612.3238159224578363742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b9120ba15f90c0b333bb6570b02a21bc8bf526153d229134eedf861019fffa2
Date: Mon, 24 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787612433
