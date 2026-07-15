Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623E3380FDB
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 04:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784089114; cv=none; b=c//DVxsQRhTHTI5KLRBXBe6CsbqDtIi44f2Df1W0Bigz4sra03DEmvIx3+6ThILypzpMFJdr7fb5b1KyiGeXfg2KSWhYiBwk+gil3/dh7+U3aqyx3xuuyffjlAPoxtjqoH6+7uB4pEHCQ4uNkFpHD/Pm1qbCCsk8oxj7atuPjMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784089114; c=relaxed/simple;
	bh=nOm++akHuKxEbkI8ViA0LJBWXLIR/JuVr3CFFiCzVp0=;
	h=To:Subject:From:Message-Id:Date; b=NxZfa3CQiZ0GiQfe15llg43IDgS70K0zTVeMocQRRj6PG7OExkSTG0IgUZO+YAFV0XeUFGW1GLBT9d15kuQ5dcdfixnvn7vilGhuqhUWT758pLi38SefiX26RozY/hUNweECPd13n3uz4NIAbSd8MeScrdcQribF8pc8Wyixy6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKFT404c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKFT404c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA08FC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 04:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784089113;
	bh=nOm++akHuKxEbkI8ViA0LJBWXLIR/JuVr3CFFiCzVp0=;
	h=To:Subject:From:Date:From;
	b=eKFT404cB69Lqbt3YOvu8qrrmInd+XJxXalnTXApLfZyGdteEgoLgpkw+m3+zp7Ce
	 9vkNMiCkOBoCQ/ELsjagieNDOr4WchTcWD6D4tUGqBuav30B8rLbbfpWNUcZdmMFxH
	 cJLeQsl3QOLUPikuUnXAXWsLIWlC06EEyX/cm3nhnFfnosZelfkjT3bBZN8EDjxUfU
	 pX3/dbCxss7byEKxOOVCMz7tsAmp0BpZ5UKS85iStHsveocr7PUG/bu/CHQ7hhqMNy
	 3MtB/9cawh1sAc76rnJUL/Og91YPVOqXlkpyGlWo2x6Yt8N3xJcQvrRJoig7J06Aeg
	 TyB5pE6pEr/BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4FD4C4450A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178408911373.14188.7747335941841135297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f134aa821024241cab157832844d2de27dc3749424ab4afb0611adb2604f2b2
Date: Wed, 15 Jul 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784089113
