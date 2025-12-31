Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308E719067C
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767155034; cv=none; b=jiLadIHX0Dsm1687B+mcdAj1cPtvNr89eNBO6QbPVUOPgPxBu2ReggiOkjoQGPX4fmtxaOi7BxU4x0jOlgmz1NAZSGxfyAv6hZ/d2a5djBj7ble+hTpRXE43wvN4iPF0fcPfX1eM39YZu2P5GVU0O7Gb/ltX0twJcd2MdFEp0kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767155034; c=relaxed/simple;
	bh=a1y4PCsxf1425FFmwS45VGnf5SaHR5X9s/nAAOdRweo=;
	h=To:Subject:From:Message-Id:Date; b=qMzrXeSi7sjHxZMnp+6BhqRDYj+lG5kr1S5bunWf/o2eTCn+uH3APPJHLT0f2BQCDaL4bfNxQs4ri7F9GX7Y05VZZiidhM4V8MuxsDCWPm3/yg1TToBRnHMypWhevlljpL3CMrc0+/KlVGe+jU/BfAvhHzLEw75ubppaTk0sma0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xybjqa1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xybjqa1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AFCC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767155033;
	bh=a1y4PCsxf1425FFmwS45VGnf5SaHR5X9s/nAAOdRweo=;
	h=To:Subject:From:Date:From;
	b=Xybjqa1AJCedByPQoXGs6m7MK0rKFMP4X5dQ9EPFlzEVJua2p/vjRb+XpEHp1/ck7
	 F7Y64iGT2ZF35dazmkPpFaTF1Wp12lVOrwylhTJhEMN0yfVq//2doUk7CQIrW5aEmL
	 H7Qr6FMgVbdlSd4+SvejgN1r21QTFdNkwJhrmsma38t9rdo9NymmVvsFOgH6CdrddR
	 KND4UUZwB9zg6lEK6frOCiDuqx9gTe9+WfqmevBLBWSANUe0y/+hQMmIbRyB9MsTpp
	 AybVfxvLj1k+g1ZC8wFrPvAE1WSxQ6+ces+1S0mzVaXybqdrqTwoi5EwD3FsMf8Qg4
	 jC3o1UALt+yXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7A0EE57D1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176715503363.14878.10588255461314096937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52ca4ff4eca02bfc66499e2930dd16e18b484170b7cb70896b41c3ac1efefd46
Date: Wed, 31 Dec 2025 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767155033
