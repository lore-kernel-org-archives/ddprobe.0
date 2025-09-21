Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C72D8F54
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758446394; cv=none; b=VKmYPKew5WU2F//LcfwoLy68hjTi2s9/Opy8mnm2hP4EibgZ+ByNU475D0rygBfh34KQ7uRkovy+3bGGYiop+BsoXcA6Z0bbiYR+BoraOKzLDDCi6CZCWKHnvgme/40sTFr7I8nFWuamGMkaMU6aveiIs2XFGZGF/xJdcRdq4i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758446394; c=relaxed/simple;
	bh=oqdSf8SWmkdp+tpuWszrs9DBNrfa96aISvVhkC+hPHY=;
	h=To:Subject:From:Message-Id:Date; b=CzfC7jPsY6PV3xv0ogs5SAO+lY3rdc8ZXwWWu56YuCW4RfEEfMJ4/3vMnEW7VmRDgXy3UQBSboJ39TP04SNnCWzJnnskp7P/GQFLnd7WNhHEKmjBfxB5Mn+cFqHFiArqjM0HE3pCB1JSROfiXyUdqtEBu+UHrMQFILGcLMxRCx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrxSUR+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrxSUR+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A645CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758446393;
	bh=oqdSf8SWmkdp+tpuWszrs9DBNrfa96aISvVhkC+hPHY=;
	h=To:Subject:From:Date:From;
	b=ZrxSUR+w+Rib76fgb1Eep/lMQd+xf7apCUa2BFcc8hGmYJurnZUpm4yhgmnL86Jik
	 U534NCv1bDQSioAcfrYGNNY3PN8y1JDK5NwTSLj/sG3XT/FlrX0HnH+LdBSDhk/iHn
	 pKkgVOMc5Vylyx2weYTe2g2rgiQFIYVjwkK8v3JVvWNisIihMbcwo90LkMTLWKVj4p
	 jJeviLxOxSfC6U9p72mPZ06REQkr2wHeOctsowRecmGUDtHM3H2JIq/hlZ+g85PS/m
	 YxQWGACxHXKkwAY+UU51rgR0dib8ogVbOOjuWDKtAWQnr9EHpDiKB/UKUkqod0ElF8
	 jjkZ0uWoTjTrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9190ECAC5A8
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175844639357.23231.12231193809835377038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07e1e5b75e82f915cef6e79861889a6538fa970e33e38f365b5519c90d6d7503
Date: Sun, 21 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758446393
