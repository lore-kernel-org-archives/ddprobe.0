Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A2AD3BC68E
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 16:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781713594; cv=none; b=sZs1RXvk8s5PH9+W7ce00260rLirHDCUHYIP0pC9iMt9n7W1rNlvB+3PVlNr54f9KHbYU7XG3PJu67ehEKLuuoLc/Q2kYdc6HYSzh2FW5Vwufcc2EIVhNvPDEFdmSrZPUyklxjwG+iXGFx+lIoT3ySaevHE1DS33C6Nm6Y57p6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781713594; c=relaxed/simple;
	bh=SkfD2RaDvL9TXH4BZv2DGOrqIz9XB2738CCb37kuPgE=;
	h=To:Subject:From:Message-Id:Date; b=FH/YlN+SPZo72FqPD0S3Im3SDSUf2vzO1gBn1fT3mh+LQFicKCFDF5qgs5FB2zwhg7PqrUkthKeaQK+72i0WFd91xRuAFhGV/bctmNM6KvINgtreqDebq39+tCsQW+6vSU7YkcbW6vWaUEWg5lQ3yQIUHkFxyw1KBq6MGV/ep5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkV0nkVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkV0nkVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F7AC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 16:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781713593;
	bh=SkfD2RaDvL9TXH4BZv2DGOrqIz9XB2738CCb37kuPgE=;
	h=To:Subject:From:Date:From;
	b=YkV0nkVXRCGQIP7f+2ESfE1X6pwxp/rHcWi3i6NykpkYgWciCzSNckEtQ2/5uclQ8
	 R/T7hC4YyT10kcZORHyOwtve6AdNAKM1WlSphTpn/zxeABXOGyds3U0gaOAR9+97IQ
	 OSOzCUsub2msQC4fMWkjqKiRdnEg4y4EzBwVIwGpCX7RM/mkiYubyyT65v15N3Xcvz
	 32zeEybbUZUHP11QyqbkW6en71WenPzIQBskupcAXRCwdOTPFpDifvkH0SrB6YlZ5K
	 cY0skth1TCBH7xQSXCY5tmi0r2dzHwosPdcMcgfprIH2T1Ty1pSC7CF7Drpcewcu0e
	 xzIFIBcpimOUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC01CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 16:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178171359370.8542.7259090764213302814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c46a5f610ae3d2208d177a1eafc1f1c9843077d9c22ac1f928284a69fd7eaa81
Date: Wed, 17 Jun 2026 16:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781713593
