Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D27042065
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753250394; cv=none; b=T9noQWZm8pyTjZXs4UmwvZEDqbFemqNdLaho6tY2EhR3umGdCpv1qCnfIJieumHrC7S2IuWhRXahybh6DQDefEtSJb8vC3Lv1oksWdxWolUkVLAkAJcTvsy1GFcsJy+Qh0/vc7He5Vswe75ZB5sPr376SM22qW6iAhj78wk3aBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753250394; c=relaxed/simple;
	bh=L9ZfRV7/yg+Sl6daJEylbkllhDHCi8H/MdPTlbqnxPY=;
	h=To:Subject:From:Message-Id:Date; b=ojKDdQu68R/avd6wEtSyJ+Xd8VJHYh4CkMZMhIJmM9l0Mc9GS/4Ji4vZqGZveBptWSObCHgbiLD2PB/7lIE9LvDfwilOcWbkFUWljn9PaMF9gq+6FMEsqFsZDyb07HPXusgVzqNKAJrUJUXk4a1VgiysF21/ipecEOS90YIWa3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZnPKhik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZnPKhik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAD6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753250393;
	bh=L9ZfRV7/yg+Sl6daJEylbkllhDHCi8H/MdPTlbqnxPY=;
	h=To:Subject:From:Date:From;
	b=TZnPKhikS1Ky5L+XgucNII7U2aDi4fbWJ3V660keMdZfQ4GfbkKoWNzdW6BlMqFiQ
	 d1cvNRjU5Py5xolDXOn+oCCVdGjuYs92gh/z8M8FijRErznwdZaLIuq83gxI86wVXS
	 CL7eYC0N9JNsSE+00VNWEg5Xd4xTEtf4InxJLYwSy4kEYYqvvXR8A1Al5l/l0SzgoI
	 XDViI86V1A3Nt3pWcAHjiOBd70eVQyfTNMBGcJgmI1NOST756x25F1RIa8O5aBbrxu
	 vKTbvip7RP/9cFh5JtHPTfIhqZxtEcnj/bZEWMnybSD+TWA5GKWYYRSLwKDGGfN6Z4
	 /8e8wcapFNX2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E93EC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175325039357.373.11028108197313207014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67af48b7e07efdc71b65a509316daaad8c386bab7fce275a6d65909cf29cf999
Date: Wed, 23 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753250393
