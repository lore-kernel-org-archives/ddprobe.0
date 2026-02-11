Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB0832D7C7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770800094; cv=none; b=SKmWUw4lPrAxdLKwYHPhiwfO/TsYNbb8hdQ+pu3cpcyPLm2EsBhtggxkL0n8islxQWF/bVZ+tWEdOORwpXrTSr33yZyBcsuRYAzMUXU1yGIUyMUBauDxe22V+7y4BRHbIu5BMoXC5BjDHhU1OHf3DjE58jIg3pJWJLTDlKARFAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770800094; c=relaxed/simple;
	bh=vOUiogcf2kctSnVEOIWAS/bj032DJqKI0fp3HYDIrD4=;
	h=To:Subject:From:Message-Id:Date; b=DZ4oZMWSsqeZfMRakUHQ7ZJi5UeJTxVFdZZW09W30CVqMv6tuEaznUbdoLPzvp11S1aTlzkSEg5ZkrX49zXcu34Yahd6FIOV/mkq9HnpTO711HdKaDA/QMbMhQNXW3hvW3CQCJKiibV2E9t2cYu4rc5QKm0aIxidbb200hEJjOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGuD0G8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGuD0G8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C682AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770800093;
	bh=vOUiogcf2kctSnVEOIWAS/bj032DJqKI0fp3HYDIrD4=;
	h=To:Subject:From:Date:From;
	b=IGuD0G8IzE5TT1aQ+pDT4uh9Kj+nl7SpVCpYBe427ivZ5/FHs+WiWmNROIU4+Hu2n
	 0R2JQyP4srHI+JV0GnKfNILu1YTQVy9rb/0f282kOveXtWqCtdyiBaKRpJOKbNlCmp
	 t+lgj9gJGy6huAOTdswDZd7PVPT6XYevtVjP5EsMZUOO+2sR8Ag80RHgZDVFBBx6SL
	 JpJ+/lUdMMbhVMmd8AkePPHlU/+ekgqRUzFuSn69nx5/HqL2nbrn+fdnv7xt8qMCUk
	 KyEbVyZUDnXpTnaNJ9ljka5JwFdWsh8Kp2lRsCehJFIZ3c/zkyTTCLpzRkF5raQoAV
	 OC9LaIGd2y8dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3B1E81BD2
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177080009368.13615.9014448433360556801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58deb14a921fc25ac46cd69ba4143587f526ad4e490a4b58f02aa184e2c5e700
Date: Wed, 11 Feb 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770800093
