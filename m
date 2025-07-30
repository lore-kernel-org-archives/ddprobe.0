Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420EB2D8DBB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753886994; cv=none; b=J5ZYfaQqYxrFL5tCk7jpcKygMoJosVrT79FBpvBpN0lZnpa9UZ/AuDQGHnbjvSxt6IKUOOL9kVqS+T6dPmdVFb2x12EHsxGpfhec4k5Sjdant4W7olCOgKrqT/wazR59LCd/CdH5SOOi5WunNVWe/XRq7nFJ1TP7Il2FNzix8Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753886994; c=relaxed/simple;
	bh=O2j7C7cmDvG3sVCTQpGjvLJD4H4PvXF/NTUeIxtCHek=;
	h=To:Subject:From:Message-Id:Date; b=GBtzNzgjAqxN2uTlg0CoiGj5QHOBqOuq1olmYrnTVRKfA+8HriWYWlwV7gC9xUGyqGR1B3RZW12L7+YLuN8vfExSC18vNHOsi8kdGqxyENr1mXTWqIMPTX8o4oCfXHqd5FxSS5hz8QogHwsB1vqAuvoFS46IFn7SjhDKIhc6RJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLYen8BK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLYen8BK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1832C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753886993;
	bh=O2j7C7cmDvG3sVCTQpGjvLJD4H4PvXF/NTUeIxtCHek=;
	h=To:Subject:From:Date:From;
	b=qLYen8BKbG1TEngv1oX9BdzqLTGKoyC2Fik77Pcj72FLwTRQTY0HUAp4Sq4Y1Ofkv
	 FnRe3Nx2+7GUH74vgjnTo1Kr6JN78fNyaRLwFvaw4JIV20s7JyCvdKKMaSICYL3TEQ
	 KUhCJHPvR5bnE1rfW+mF44ZqL3FToldtIqjVCIuqQ10I/mLHrm0wHWGeC9GjXxhsml
	 vfEdTMj6yWSb3HkLLYVTFOY8j3oFlLp6Xn9brhfIjR0Fg8eMBXc7kgbVGVZSNMQTfr
	 RbfyJ+cLrmNAD52gUQ71snedEEacSTlaiMSGwqLxsRPa9XSh2C7zB6UYsaafe/GT0w
	 T2I7866hSp50w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A868C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175388699362.10011.15389059274499830265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1efab83edd699affbbfdc2fc3824707427f8d0e12dd0be519b3acb71b0cd3fde
Date: Wed, 30 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753886993
