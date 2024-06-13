Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7121912FB16
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 16:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718295503; cv=none; b=IF2DR08tkn4GBHXfZp1vpPrp+f5taHS13WkYgHoXmPTxiEW5EVUXFT5fY8yxuwRy/XqaFxstxP1/fZlJ+AyvGryTID/42y9u++CQrHNsP6Epbru/t6PoikiU1PB/LpynPisMKZCnCx7WVeqjr68q0RbCsltBj6MbcHMdCSgWCB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718295503; c=relaxed/simple;
	bh=u07Gob0R+MIcdQko0bKv9U6powwHS8asUMC0jg5PJas=;
	h=To:Subject:From:Message-Id:Date; b=oxIoIkwXqIBDJ/X+huJQg2oFEag7UxmiM3WG8l+61LH0EwbetHhkyT55InbF3Ije0KBe3Zfo2GVlQ8sU59c/qGvcvdtTgOjA9LEuwvAGrCXcje+EWlsoA7z5aaIl5AtFeRRRm5srcnNaDkWHF3ITUjacLDw2UwKgj+5TYwCE7sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CS+SxFTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CS+SxFTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC713C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 16:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718295503;
	bh=u07Gob0R+MIcdQko0bKv9U6powwHS8asUMC0jg5PJas=;
	h=To:Subject:From:Date:From;
	b=CS+SxFTCMIWcGlOuTX40Ey/GxJcwljAnep5DgwwlZfUupFKfkmEoZ0DaPvUr8t5wA
	 mOCLADRMoUEEwheDxhuZ3U7Urv1AmdBk+i9i+/0n4B/0IxnR/wl9JHuYbFtA14CqHB
	 nWU/KvBLNBHy/9ssVhZUqxg54dAvocnlfY5F+c+fLhKVFr8OvtQnlNAZgC/W1ZqB2i
	 2eF3Ghh8C2QyNGeyRxfHlgqDUWTcXXZ/t0ijG5I4qAp7WbW90cJjLf5Wc2eEyyTL8T
	 XiTMWYgRQFynT4CSraffmWDn+0NUi5ilFRZpOgRT6duo3dgGLTcF2aamzoPy2u3V/i
	 fQTPMBmaVCdtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D905BC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 16:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171829550287.1719.10445372054931671183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c23c5cf9fd265c9fb186af7184bcecce705c95f6239d4dc81df5dd60554dd57
Date: Thu, 13 Jun 2024 16:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718295502
