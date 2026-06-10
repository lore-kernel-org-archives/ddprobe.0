Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EEFD344D92
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 17:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781111194; cv=none; b=PMLk7WFxlQ9lBEVvPX+NkuWZz7xu8GlFdeLFhYJ0FC3kij4HCJvdVeb4YqdKagixsynzQz93hIjuIYu7XyZ/GKKpWZd/naj3DMq36FQlhaYSjlG63PkwnjYEz7KdBnkbxhIBQOw6A4iGjzFhCXY679w+hzoRRgJrd1uFTekl4pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781111194; c=relaxed/simple;
	bh=cxnHlRfYhXe5uXlOc3iz5DilUAuvhOlltG5fv5bmgPc=;
	h=To:Subject:From:Message-Id:Date; b=mwxRlSp4MoZ3Lx9at8NIzePMOel4uYlff3WmyFTTLkgEXaIWCGr2hK4IAH/kzFQGP07PSqMIEn2Ywv0mkoJGk4V5hsS34WcF1K9TrzJpE+5r2LvHDNtvOijnyWSoWG7oQQL0vtrg/lyAz3bJjD6p/xjbTbWa5AFBWde4/0elHwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tycb0qQ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tycb0qQ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EFEC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 17:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781111193;
	bh=cxnHlRfYhXe5uXlOc3iz5DilUAuvhOlltG5fv5bmgPc=;
	h=To:Subject:From:Date:From;
	b=tycb0qQ3CHzTQp/M1cHpnWm9KfwQqYG0Wkv317M67Zwjbq4tDqJN/3rdAkRIoKlni
	 6dBbOgMO0pPxrPwgXs0V8pRcqs0Y8orC9Mn0fTP3uoREAYdGzsDDT0/HIsKpl+AcyQ
	 JrPPlBEaKYtSfzZjYvwguhUo+O5BLVFslcZNqCKTkp9v/7stor5W98uVLW6HwBmIQe
	 e3uGNELmCbCXH9gWmv5nKbYpKFOoZak5hUDJbZ4/VNkHJmYjYpEM+KiRkTSZUlowFV
	 NYw5Gub2Hw46zGxS8xoW2AsxMd8/tH9PgF+Es3aTAXrkN1U2p1i5zfncnmblHj/OP+
	 aweAPeH4DRxWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A87CD8C90
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 17:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178111119371.22467.273157337733667623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfe683cd3693853d7bc4e3515847db76cd22007d15d68e369e68f5c8e386679c
Date: Wed, 10 Jun 2026 17:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781111193
