Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CAC2F2E
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739163354; cv=none; b=OeqAb2PS2iDZZv3bKDmq/qD3WY9+esFqJAp+Eq6sNrMJuA2S9Wh46bHUvOIeQ2cq/foMXxy41qktfupRN97jyBAObk0KcsoczHZ4wk+jeHx8S60BZbDfnSbPX9MQRGLa9dlf2ZvYysbZ3F6y/FQZ0ZDrjRbQMC1WGzDOjiM2opE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739163354; c=relaxed/simple;
	bh=lC3HsW0Sw54TEKENDk6R9Uhf5He+XNN4fGxpQgyAP+0=;
	h=To:Subject:From:Message-Id:Date; b=J5mduVICePymbv7gZujQ4QFYRE/OT+KcTnBFV6qaXuLAY8A5oAGeZr28O7BuHxVIC13LPQ4UbbkEMgQ29LssT5mcpad0UkD9XgQTA1K09u4VU7e/1ZTbF6qJjcIxf1Nf1BRbQR4WIFCbbvjIbcp06kQz752Zv1noKMPvUPpWs14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=luWzOK8o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="luWzOK8o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C744DC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739163353;
	bh=lC3HsW0Sw54TEKENDk6R9Uhf5He+XNN4fGxpQgyAP+0=;
	h=To:Subject:From:Date:From;
	b=luWzOK8oa1RyltChBkoANvSi1NrSxFBwOGEOc1jFhPc5XlzdY9h1OhrZG4r92yBQk
	 gVSd+T5QLuuaamxrvmN5HWfF5vznTZJPfvB0UHamAQ7LK8UW5S20VOZsq2HyDbxdwV
	 KRNLGhqa92RhMTAxneJata4XoVNZnMLNNgseY4XRG+6ZNwVVo/rgElzpQL3ts7aqps
	 Ifi3dT7vndEULL4a8EwzWrJO/yHA6aGk5y++kYkPOIWjKDXjul+EMTl8mzJ6QQ5pi7
	 2oFhxHIedbDKu5BtnGJqtPgk6bmozK/PlOX6tR9940/i46DoyepFnn1mF2bSrePixP
	 /teBMW+CmcYjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FD6C02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173916335366.10785.13414887999716709706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9855117daf3d20cc86ea421c7f2aff47d8143ae78196f5e28690d24745039c90
Date: Mon, 10 Feb 2025 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739163353
