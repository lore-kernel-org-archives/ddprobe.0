Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320DE30E0E2
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762428594; cv=none; b=uTh/vdps4KTqyeLXlOHxyqKcfTG/knHCng5gkd9Mhgd5U/+VjterMrxpW9G/ZKhtYpwiC7g1vR8XW5TstLO+Du8krcBWi+CfkgfQeO5/9KN+TrnvKyIyBOmJNf/vbUQkoP6yZSaO1OhvYVNHmjMwXRSzpBD/WiCfphiO1PIh8xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762428594; c=relaxed/simple;
	bh=o068NwhYr3D/yz6EAYyjeelHia7sLhXd4TDU3gdRlkQ=;
	h=To:Subject:From:Message-Id:Date; b=jtMfpk70S7uCNJoiBcCdM0Yt/DHKCXfoOGvTK+NvrJhF/dzXY4rEuY9J6uPjux8XGR9dQcDnOkS0/l+NvOLlH32Boi6eILymYkwgXz77tLXRO3z63790sQ6w8VbE9yV6tTY5iaze5njoJdri2gJwG6moWUWCjuw+7G6VyzEXZ6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jX/qqaAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jX/qqaAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C270CC113D0
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762428593;
	bh=o068NwhYr3D/yz6EAYyjeelHia7sLhXd4TDU3gdRlkQ=;
	h=To:Subject:From:Date:From;
	b=jX/qqaAdLj2K1z/YoGVmtaytBhNr4tCqmEFAwUt88v+lO4iQyBh5PQD+c8VB62tRg
	 DXCvRBdugExyJbjZY//ITk/EG14N4GJT8BMpPKGMuoDsWPRkpHPaMr7zWldsE8NwPf
	 005+yGQyF91p2Bsfpr6N6ZrSsfPqoiHDlka5S4j3aPsy7UVvt4NCC43RaPhnKeMTzR
	 owPA4j+c9whhFJVi4a5b7QxSbJQ2YGzhDkC/aSmun4PMSGZbkW4fh8ACWyUA95mKTu
	 L6E2wdS6ogLyJ8acoLC4sJd9rlSa/o26ebP5NxnYWinqg83gHdKtlrv7Wi9l0MGQg1
	 c/kRNqYAkpXrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6D5CCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176242859370.13119.15852189589645456777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7f632ee3bdee9c5cf0cb3b53cfde3d1e67a5954138893f74acb244ddca0d8c8
Date: Thu, 06 Nov 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762428593
