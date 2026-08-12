Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15134345ECD
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786503034; cv=none; b=N9zhDDLaG0HSeZeso0vVkyD4f0RSJSdrJKeei8C7f5gfQobXSLvkAT8nKDpdScbZuUHcl6uxHuVOGIjGuEJTGAN1TLqOrlJ0k7FtfMT2ecDZn1j38+lvOer6ebW+ATc70Bl3Lw+b8QCf3rE1iUyHlL46cK/zM5XbTCyeQ0dPvRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786503034; c=relaxed/simple;
	bh=Aj5UAr8efrusoCxPFhIjhhrODv7hjGAk7/TMjaFqiL0=;
	h=To:Subject:From:Message-Id:Date; b=q89qfCcZSJi7MRTx8ADOGdRYHH4n8mWY39lpuNmLzhw29jwc1UvpshcYn4b11Pp6clVrjuaIhQClJhhJMHxKK07XRyc7B+s8a9nPxCXX2aBDIv4sCsj4C3Aswc9fGBaacYdyeXWbPQmcbFJZuRJkp3DyEugrS3LrB9OkfdJpI88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNlHNSlb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNlHNSlb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA0C6C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786503033;
	bh=Aj5UAr8efrusoCxPFhIjhhrODv7hjGAk7/TMjaFqiL0=;
	h=To:Subject:From:Date:From;
	b=DNlHNSlbGzCKNPaAuzToM8mUd1RyIbgafFjP4wNT5AG78OWp96lujHOQGDWG8Yb3Z
	 EXcD0zz9Eb4ftOPptieP2HmptFHWFIEj8JSuFfP7YppSAm0Ic+T7FD5bDJIMUd1MA7
	 JtvoCC5KJc97pOPvJEllzMNQUSEf1GGm+EQTss727yLbVu4oNENJ8N3GzwrWJXSt8V
	 +1K3QfQwmUUjm8EM06xIun6gWZWv/HYXpGR5kyc0OOGfo/UEUCDdSdzrv5jMGcXIqd
	 cp6rMPDpJyCy6aFJeWFJQQrj6eMLauDGdsee90HClCDJrVve65k27Vyb1vYsNHuPOR
	 0PUkmtj3JJcoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A808DC5CFC1
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178650303368.3955.2263034267862405824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 259cf80703f56ae8ef77a292b338ba60b9ce9bdcb8a224cfac94951259420612
Date: Wed, 12 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786503033
