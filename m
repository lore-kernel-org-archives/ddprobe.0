Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F14133EC
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735773354; cv=none; b=DzjMVaCzkuEu7wvutauEMiDDG+H6BnqMfwp3VdaGWgkTMP9Hxlu7mM9PMdCkxophZYuvANa+7OQWFDsdzAiKPs2J1wgJThTdyES6gnOA8+5tPzj0eU3NstLsvwUawXmaTGpYpQvJ/+Xi1l7kpbYrZzDCCAigPEbLVZlQpMQOMWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735773354; c=relaxed/simple;
	bh=4mGrufdQK2nTfYHeHLRl6x+v6Air4LohjIJwOcNiHoU=;
	h=To:Subject:From:Message-Id:Date; b=jvs3CHKiMu9wvHrpnaDouo3RboqlQx8gVJA+K+AnQ3+05Mz4soh2hxnczv90sfgSw6d3A7rPTgjgGosC9NSWVVKRXhhhT3kgTo/Um7MJDS7Jtwf4XOHdra8rdg/cKj7Dc6sl3LAM92BBJO3DdyLzcYSX54hGdQSyzsB0752uNBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBPAfQIx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBPAfQIx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD13C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735773353;
	bh=4mGrufdQK2nTfYHeHLRl6x+v6Air4LohjIJwOcNiHoU=;
	h=To:Subject:From:Date:From;
	b=hBPAfQIxBhzAuUikgDMlifq6+eXbdPxD97qZeFgs1bCCSxk8X3/jTRqJsFfeYBzrT
	 vQ65uy4rzLmAF9OY5zq1hBMG/t8yl62zfnPirN4bU59CW87OgnfabJvfixhU1s34wQ
	 jZLjAJSqv5CiKBC1PURV9C283p46xsHBV45ys9TrzzbEtTV5X1BB3dDvqw/vdaQncS
	 pWHSG0CG2mJm2eZH/ICSLC77O8R8BUdpI4rHbhtFkX3MMIRmIFlNHhlrCvA384HlkF
	 bGjyVBCKDXuugwgT7OnYetgbw6536KyPnwMqFax8QEdsZtdL7o46k7TSxGaOzdiq4P
	 rApB0SyArpa9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABB7E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173577335359.20652.2501009338443016214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf795d86396cb780b3f5d9a9dbf6b9071acfecaa34b7cf407eebbf88a31b6de1
Date: Wed, 01 Jan 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735773353
