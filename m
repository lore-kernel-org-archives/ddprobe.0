Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE6336D510
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 19:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764529374; cv=none; b=oe1uBfXW28v2YRl8df3llyO21bkpUvUZ+3V5hpSGFAgmMiJRY/C/ZMoegQUWtYt+aAtuVE5eKYU11Mxq0GLAfsqAXrSpwQ/ZSwyq038hXN1TAIGEHzjFbJVG3+bYA/slJrPHaZKR+nMavADZkmEJONi7t8flU+7nEb1nQiaTKQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764529374; c=relaxed/simple;
	bh=khTjaMfeBh3c6QLApSJwSj2pig+1JHYxlxjct2rRDk8=;
	h=To:Subject:From:Message-Id:Date; b=kNeeBtCPEnAOBp04AvQS0bD2ZKV5jPyDh22K3ZGb/c/7oplZlcVTjz6LGuAUY9EiUa2MzO//cHVzoykDCBaefnLS5rN+0GnDmwtjKw7LXPlAKMgqX1dM3jY18/uVrcNbVfYlxJMM6wFEgfgOUS6baf0MJ+uqpLUo/GbCYOqGNmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbaS04yJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbaS04yJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92A9C116D0
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 19:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764529373;
	bh=khTjaMfeBh3c6QLApSJwSj2pig+1JHYxlxjct2rRDk8=;
	h=To:Subject:From:Date:From;
	b=jbaS04yJViIrM9jdcufft4IKoWc+F0XqL7YcYWyMmWo7RiMopZ8dvxLumvIVsWJ4c
	 CcAiiODhF8xkrsRCbcrQlxuzfxDzWcmJSUDGlup1wSlBNLQAc2FYKqr6wee102cyRD
	 iD+sSBrC9VxDF6cydE0V6Su2KYAe5C3h1zubO2d/JnzpBL6hMqn/5ZmSJKFCrkejcM
	 FdTu7ISx/j1cWAlmxBImzWZ1EqpHdSGWUj80xKmkmQNMS1IDI67r3GCTysuOMTmjOK
	 ofwrItweyaTonAv699wMOCkG6zb8qffLtMwdSQr9ekkRlP2N9UOlKZn8g7J/i1TuAA
	 IkpPd1WMUorNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A0CCFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 19:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176452937360.14684.13066719541095893341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc9ac04456319543670f1a6e6b092d182daca60073712a7a0b00c9330f57bb24
Date: Sun, 30 Nov 2025 19:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764529373
