Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F23923909F
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791072034; cv=none; b=ek/t7bFTLFv9yd1476fkMJ87U44Yrh/LXU1eOnFZj909zwY3IKszSwbcXSCufj2utT98TKwyHM9OLXn4VaXMljdZWSPz70fBqTaGMCnl7QMDtz30XghL3oKJ88CnDT5HC+0rhiFOPX3IMCpqkKf5dY/F1dYXsfFPYbbXcKfXUf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791072034; c=relaxed/simple;
	bh=vsXGF/QOz/govZRTUXhEv0/jIkYBv54hwL2EB60GdJQ=;
	h=To:Subject:From:Message-Id:Date; b=O0K9GaxJuKZWluGUZzK6ubkivUyaDCqZuQo9J06hk6iRHMglirzCEN308adqZ2mv1EjM4J3aQGBTpZ9qAimyZdRB3Gbr7C/OmE2+tqWZ+VbFNqox8WvImKdZzx17UazpZ51OjN0rBOmZG6/10ggZtd++3AO/Fz108XpT3b558lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChkcvVLD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChkcvVLD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E6CC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791072033;
	bh=vsXGF/QOz/govZRTUXhEv0/jIkYBv54hwL2EB60GdJQ=;
	h=To:Subject:From:Date:From;
	b=ChkcvVLDAJr18JnMUR8xzGqo88IgjVz7aj5agueVQ5lxwevXcqyvereOtKJY2y17R
	 +KUbeoaTUAwseIqG6Eym6JrORsO366owFsRhBw6w+RVocJNZduI5LaSqnDvdBQwrA5
	 I8ds8Ypzs9nUA88TfnbSglPU1oCMu+c8wTQl7luzadW2ry6dNj1wWOyKInw++PdQFK
	 nKyUh/6uzioKPjKg5jsAzisnottcSPa2K4dEK4WnLwSnU1EyKKbNAszSwQ+MdzsGPT
	 9fBdLq+wHmBO4vtuSGSKX5Dj3NyDDLRAHqZMKIAgYVBpNBEasyxVAe82jDJel1aGL9
	 BUJQan4QKc4Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B81ABCA5FE4
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179107203372.29872.15662076296356563824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 822e09d494c050ab43d2150fb32a62e3c491e7d7994f7b77b051bd726cbe24a9
Date: Sun, 04 Oct 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791072033
