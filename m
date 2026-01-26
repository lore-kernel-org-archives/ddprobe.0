Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131081A317D
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769399634; cv=none; b=Om+a6JriUkcYBDejKH1jX8WD3uw770wTTXGlXAmO0AMrJQ0+I78M9AKwOlT4oJi0yjlaacaP0h+ZdN3Kn8Cs4AgyNZkHo6JANFJX8igNXXqJFwQ68E7eYsWX16YaM4IV3/x4cZ+NqsT6ImXy5HYVnMtxJtMZ21l/SsjhwyQJjrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769399634; c=relaxed/simple;
	bh=YhN4CG/13hHUyaxuM209WS8ZAXV47ryyH6rJTlwuSJk=;
	h=To:Subject:From:Message-Id:Date; b=LD+1YWRqDplX67axURwrjJpkZBdUGYSpRST2tVn8YqL2TySlx1SXMIvseMxCsb9ae9pF7rwkiXoBhVElcVIfMUokMxkkByrZuMdTRknkurMamfbx0hXnd+qy14AOYPd5nvh9On3CE4dtRK7AN144obHHAM4Dw8SC8AOpG/Kjc4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bN+U1exf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bN+U1exf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B2FC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769399633;
	bh=YhN4CG/13hHUyaxuM209WS8ZAXV47ryyH6rJTlwuSJk=;
	h=To:Subject:From:Date:From;
	b=bN+U1exf0uqMed4fP/oajkFO5VlYfWrd3hVl4Xs8WX15QI3exRYjvIU8X5uTvKWuX
	 gmXaqPFgOR8zVhJ4X1Q/TvxbY52oC9PWSdp6Ia3vKPr06NeDSC4/I6h5jaI1Ze+Kjd
	 kL8vQKaCYz/UgiO3G35ftC8hmbdSHMNMvspa87fNI7F6hhn5+3AgxNllLP7DXIIeS1
	 jhRV/1DJKkDKy5Tykg+gfOAJZjscclCFsQY/3IZ1C/AbdfcjAHMpPqRkVjkB8Z0Enk
	 c1huz0GOIVnK0njN3pZzPZWSo23WlEQur3qunyVcoRCo1wgPwhL+jhamMgXmuLsdFb
	 AyXJ8cx6ODxnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959BAC88E43
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176939963358.30052.1482880691929834034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 864b107176db97122983b745bfb1aea910f5ce03d101b61479bad7ce16caf524
Date: Mon, 26 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769399633
