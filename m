Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EAFA353A89
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785855034; cv=none; b=eRuPJK4deHbbILi/1mBiiw6PqfElaAQHtF80E/sw0/FKbO0lONufktpsiK9hyZLyhoDhHGimP2NRN0IrI0CEN2Ni/VIGk1SyjxZHpGIsXDRmzcQYYvh1+RSLuvqIONUMSHIixc0vhgrYgITfVuhHwvz3jp8rnudP8CkO4Fk+wEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785855034; c=relaxed/simple;
	bh=wbbWu36IFZrwNCHTuMvhdqw7xsA+WzU1Op1jMXlVDaY=;
	h=To:Subject:From:Message-Id:Date; b=UvIO0MSCwJQTOYGDNTyf7YZwzmIf48sIIErsjwknHf80AgrJ22ByEdchLdMAWE61lQNLcroYAvEypRIOddCvztauopwyAx3Xm2aFe+0lkaKjVjac30P5FTp7NB2eodEPtWg16eqgJG/qXIwkmGgNt1uu2vKhJ/bW0kUEaUiTaGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QR/pR/WM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QR/pR/WM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE57EC2BCF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785855033;
	bh=wbbWu36IFZrwNCHTuMvhdqw7xsA+WzU1Op1jMXlVDaY=;
	h=To:Subject:From:Date:From;
	b=QR/pR/WMPeYdpbxQoAnWZzY44j01rE3SjANn5+Zrdpml60GtxTkQP0tqSSYtgdMli
	 WXFnNqkNmowp/2xIWoDgGSjHaZoGcSjMNEJhNhkDZTrY2mvNqOkHEABGtswV5JBopF
	 5jHS+8mUhvsQuhAOMmCYd/hfdN4DJzHoBDJaQ2Cj88GF1zy/oOd9A3DMzf6ACJEaci
	 AcYRgwtXetTChC3qtM1UukUq5/qLQZObTz/rLVCwOy/AztvcDA6EcKtO+beUD3FshJ
	 xG3Z2nzTH6z4rH021Se8aOSRb8P5bbXAkkKyxUqPfSoH8yo/xR9qOUF2z8gQgrWwvs
	 xsOamMF4NCl9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB583C5518F
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178585503369.14784.14739667375068151317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0739bd2b0b9c96caaaabc0a78b9928cd673a7d166b0975493a0c452556c0226a
Date: Tue, 04 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785855033
