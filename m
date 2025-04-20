Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447392111
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745192994; cv=none; b=usxMqBfcVGEL6njXTLWqh9cRFJehWgqPz4YvbVR33iik1JWt7rzlIngXCgxJsnDPsx5uGH6ww8lf0Cm1Js4KdUVZyJU8x//o3MoZOfUbeGRM6hkBFwgYmlDEKb69gydtIOwBYeIJ+mBrAH+YgMANeIcGajDGf7DvSbpWBliMNAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745192994; c=relaxed/simple;
	bh=P3IgdlOjYbyL4ryKI+93MI6WUo/ZTXB3TXorux4nVKQ=;
	h=To:Subject:From:Message-Id:Date; b=uibcrzOaKyF1SgmCqjkimhypclts4kR8nGXbYdpvNCUYdHv735fZAG5FwitU23Ksf06H14W2eOLAl5d5PPaP6rX1ZtjKU97SyMHvJssABWgr6k8pWtUZfQjcRML9YGwvfhe2OQ3ASifsRVdn2b0Mgfm7/6+tltJqpmDYX7l90Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/Q/r8JD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/Q/r8JD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA26C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745192993;
	bh=P3IgdlOjYbyL4ryKI+93MI6WUo/ZTXB3TXorux4nVKQ=;
	h=To:Subject:From:Date:From;
	b=E/Q/r8JDfCyeFZ63B86G79xgpIK5HpUiIifLSdEdh5nlDKaNVcHY1KSqHCSiyH7rO
	 vEQbeEjAfYGPFXnohyqY/pbUQ2yGwI9NCTzTbbyE02wi+4vYRh3g2m82azuoTeKnh8
	 TsBzFnc2C9rB6pxlU/1b77HCtNta9mfYHqrjAT3LZJlaEY3eBo5qEvFd6oGyDWpUTA
	 UimUpIDi8CAJti0um+6vvqPu74SV3TgwPyTzqpL3sVIPcBk7YON91ZbQtaw33OEbAV
	 F18yERn7AWDvflvymuvPjLegyCOzymC543xIArv4cb9LcHXKczF0qP2U6fFt8YEAcp
	 IkaWGdDw9Xjcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DD5C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174519299361.1024.9840038373017380706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bea1dd801a1572b479e9a296438a848d115e27b068e71b2a2fa8bc4b369097a4
Date: Sun, 20 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745192993
