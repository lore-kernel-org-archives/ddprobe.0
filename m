Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CC826E718
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769377434; cv=none; b=KerH/PZDKq2bgMBPGGag7Tg4T/hnpXVvcP410MV3LvZSuelQSUOp3a0GqPrOgcIeA3MsoNY4veXe+0KIUavaKN3A3ippVlBZgfonrUWVABGGn2ytA+Iwq2vjAIAALfHmHv1r1nTI8tmOkLng/OgTanaCfDwJVM+3l8Fg3bXB2kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769377434; c=relaxed/simple;
	bh=xwBHkOJjhGS8MABc2itqt9Pn1iaOYK6fNXbLKZsfLGg=;
	h=To:Subject:From:Message-Id:Date; b=A0xqKhNBG8nLLGhCwHGTPbVo+hK47EaMmwBHY8mQ20Py7GJz9XvRf+C9LG97nW9+fKpc6NPiJoiCYID6t7p1LPVy1lUQwKFuFagv2gAfLNS2coUKVxVTRpM1UaXgmGNBf5QCakfExyOm8Mq+GtRTYh1x7WInF1mbBps+6zm3dAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXkw+Dmz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXkw+Dmz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9F1C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769377433;
	bh=xwBHkOJjhGS8MABc2itqt9Pn1iaOYK6fNXbLKZsfLGg=;
	h=To:Subject:From:Date:From;
	b=TXkw+Dmz45x0ewT+4N63eS3geccLq4VSlzz76DVWXrBeXVuJuvrEHIB3TfzMuXdih
	 ppAEwUBy7pY/+lnDIIRxf3pfCh0NfGtxR/ckUicdpTli2uILr6n8fCjlHppUFNsCb6
	 3yJsdj/J/SZogzFWY/ecSozKOtAjph66HsHUGmBjcFRWHba+sS03fTBAdG3obogI79
	 jKqnr9cUOldOES6LDd4Z7sZ2WHHOorhVIyEMMaxNKdyV9NqfDJGDyKoWIrwkYrYeT8
	 VBsr+OL8j+PpXi1bN7dAx9KRuQDFVFsiaaqekHoftD9CH/kZ2RnTCT4Q/LI2/bGTwr
	 MVT4YyUviaqkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B39E63CA4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176937743359.30418.18426086607023714213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82e4a7c35b4a86de16679c8f86d5d9cf8c5a721b77ee7d69dc7c21c3a6d7e32d
Date: Sun, 25 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769377433
