Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231C7371885
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 15:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783350514; cv=none; b=Sqi7CnIQs71upvEfyaFTZQs8Ldi3t3z69nx8MxgIdSjowREmdFnw9e8wJ9yapDtJxFWt4ilahjjhBiW2keiGrr6GTI93FQYSKbYqAguOQkz+hN0P2P9VU4nwyi/c/o4TIeS38fXU2P6OAYXirgLyLPBMx33bD+5e+cT3/leGQ/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783350514; c=relaxed/simple;
	bh=599QwskIhcUThPlblU4Jo3/sD82JHNW5Pk9kiVj3/wc=;
	h=To:Subject:From:Message-Id:Date; b=HECUG4z+j5O20/jJC+jb90H2MIM8Rw7kEHXCAyN+A1aCyJhxAXVuAx7lAjj8c5Di/HwwoW7/6G72y1tWvWeJrPOW+CG/ptcJWsNhXUDTkr30te0mj99rRFokvi7B1hGtqUByHhNrS9FNgii3W4mt8F7kZZV0pOChSgNWI2yja9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfXw0kBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfXw0kBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1084C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783350513;
	bh=599QwskIhcUThPlblU4Jo3/sD82JHNW5Pk9kiVj3/wc=;
	h=To:Subject:From:Date:From;
	b=bfXw0kBLAepi8DaEmTDsIgfVcWVxolFmEvS9NBnuSiHHL96VVXI5kmit96tebS4vq
	 K2Fh95hNopUUn9V1fFIDa9htV6X2LoSkNfAjB/nTzZphG91jWres0TJ3uxde5I0lym
	 4y1rh/f3OT0n25JajFXfUJIWJaysAl3IAcBLhCVTnn0XrFARYGy59pVzQnoypTcBKt
	 9bC6/9Wygm/gsH4ZIvfX8n+AOw2Adxr7/Wy90UM/gNZy7otpg6zhY8Bavq8jElPLyN
	 zwcFcReSa1wUM9TQnHmruYSb9A/tdEmN5BKe/tPgqONaXjzzKTMw78ciRtelgEJRhb
	 9dWsIktepHmkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE12C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178335051370.21613.4775590002405787213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffcbca34b32894edc8b28966665282a99f36c432fd09bbef66b10e913ed7fae6
Date: Mon, 06 Jul 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783350513
