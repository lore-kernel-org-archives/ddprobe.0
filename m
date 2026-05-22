Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D27520C029
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 01:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779411754; cv=none; b=mct7Z6SwL7QXDAy+h6fBADPPGsFnug5nL1nNSCy0vEieGD80njkW4sTXh5apDhogkibDC8gYEihK8icxDOI7KCH4T2GkgYJ4wdeabK0PqRM09UUGxku8YRL1/faso0Fj1yqZnKUgssrZjvh5ozTJpfZ4tcLAmnoak7BssSie5IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779411754; c=relaxed/simple;
	bh=UMv5pHxji88enpsgj7bStaY4JdqPiV3Uu7f6I24Luj4=;
	h=To:Subject:From:Message-Id:Date; b=Itau5DwVmClYQlNUytfMhHIEOCVOHWjPD8T6WqKGtkqkwxX37DJG3FauTofsgfHDbF1sY61FeXcOxiCSrO2QaxkRj1ufyQDq5c0XWKsuBQpm8X28Wp8xp5TGVwy56NerqbaGRq6KpayNvg+yLPKObveJiLZwN2Zbq2MgbIf1e94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uls08Ee3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uls08Ee3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8602C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 01:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779411753;
	bh=UMv5pHxji88enpsgj7bStaY4JdqPiV3Uu7f6I24Luj4=;
	h=To:Subject:From:Date:From;
	b=uls08Ee3dSp5NGVF0gWrIe62ZLtwfxlfbCtlp9z+8HXQe3hGBB15cJD+bwescgZuA
	 SkyyVq3kacYFqYNkfQYnsEQbZRpObWR9wUNQnIFsHyMcD9t9HJEMzkpg978CJAmCBH
	 Y6zRsLYMtla52xrf+DBCnLUTXm6RFl44aMQhlifqIL6qx4qr/HH+jwROLV8Rc0FbdD
	 pLTepVqoL2STF5RhdKlI7YCpgHZfmOkqmHpPLbw4JUYWwoHnSrdYJ30cV+4gIbgE6e
	 p/BnIjbCt2Jip0Bc4NrGcRLrZuSvxwOotnN/h8/Ge+NsUu1EXvPirTj3nbQHeLV5l7
	 F3F1ccencDvgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC2C8CD5BAB
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 01:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177941175373.32284.5781213682667594972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2c892fe6ee13eba5ccadd0f1cfd17f473f1567836dc8ce07cbb1179c4abf138
Date: Fri, 22 May 2026 01:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779411753
