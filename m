Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455AE125B2
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747181994; cv=none; b=KCz8VDKtZ5r8EuJXFGh0+jjNEwp8HQvoHI8R/WPFwJfNwHV8yjeVTdaKRiTzTIqELFt4Dggmgbyr9ZxRmQ5wZt8H4dzOlaYM+1FcuGCRKaVNWiV4ZVsjGwTEZF+IAcVeRq0O0cJiHwPPq9U3DFPvJWHFPEcjS9/3YK1iMyUpwRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747181994; c=relaxed/simple;
	bh=zWeJU992VvHv4gkJ3IYTaZCrTCeACkZADHeGWHtTWIM=;
	h=To:Subject:From:Message-Id:Date; b=CaB7BG6vJ+66CSgoL69Py0pe762mUUxDPVivOh2fWB/OOyH9SJzTMSHBYUonomic03X5hxyUFSyKVIvlzwwL1VlS+AKlSHBDN5uT6rAyOvabCoUWIxo7aUV8BKh3PAY0BciBCHvZ13ojm8DYVvXY7t8UmxYPQG+k6Yfs94oRORs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVw0d1RD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVw0d1RD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A822BC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747181993;
	bh=zWeJU992VvHv4gkJ3IYTaZCrTCeACkZADHeGWHtTWIM=;
	h=To:Subject:From:Date:From;
	b=MVw0d1RD6QhGt2AOecr8TzwMPkVrpz7jYkTLX/YXt509dRumSGtjy8kMVUToFKz86
	 QkotFgw+1XH1ibFnZCYYyOuAbisso7sN/DXU9a1CVz8hgraxZfXgi4S17YBqp0Tp2d
	 2RJ67uLKnkV28/gVDPlgW2fo1D8IIAEZryA7GiFKR7F+i+/zTR/HH5hJV7eWiQp9Zw
	 tIXdhGlFPK2Tvs2vTTMeSsdsuTfWyO4T640AQuvVYMFehoF7+eCds2Ut2mGKEkWdFk
	 5gdVVOvfn0XKjVPOpc33Tg5uNSyIpNgSrqdYNyxA151586DqwjIVJhJk2mGS70omRA
	 kpdBtC8hHwr2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B28C3ABC9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174718199357.13619.3224854664695548758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e72d07c66d27fe5960e154901d2fdc9058cd68ca17e1c0c05a6e3c19435d88
Date: Wed, 14 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747181993
