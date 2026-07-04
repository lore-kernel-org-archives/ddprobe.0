Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB3C3290DB
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 10:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783160914; cv=none; b=cEaKwu7DX/XBjm2CdXsbsS0IyMxKZVhvJpZ3ceIb06UwNQGYyxgtevzK4r1yZYlcLf1SHMM8fgdJx+FojUt5QTxuPNLXwTUJpGZ4bWUCha6D1tENtz09iubtIExlJFp8q9HDYKwTWWR+SYA2RBWUscm7pUwAxiu77MWONoHIbuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783160914; c=relaxed/simple;
	bh=AKyP+QoTHi66Umz37A5r6XAJ9DK/co7CNNOWJWG860g=;
	h=To:Subject:From:Message-Id:Date; b=S/+OkW+036cVUEgTghKDo+4pxm/ppDUdsl+QXkVEZMOWyd43g4+Tmg8oVXH9y3U1nxRYwWQJ1CsyGuO2eBKMu/vqNmXxWA808T64ik2JT1XbtOXUUJuDyXQh93Gt2gd12dWhwS6dM80RntHaUc1T4PpU1R8OIHzDLPe3WD8YlvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vF++Y/8t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vF++Y/8t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E7FC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783160913;
	bh=AKyP+QoTHi66Umz37A5r6XAJ9DK/co7CNNOWJWG860g=;
	h=To:Subject:From:Date:From;
	b=vF++Y/8tJ/ZXREO00QqU0cc1SfMpiXMLKjkr/L5PFu45Dg+llMphq7IEHqfIzyryI
	 UUTYhW41q0Y8GemcT5VhdhIqjzFOXwdKNEYyJgiQT+pZXodnI7xl2f/T1Eugxb13YV
	 sf0M1gMVdvSO6N9l6hChJeeqbg3LtS4AoBiZoeKyzAupZiptJKxjyn4lhnPbekDZ2B
	 Zpl4+IZKDufe35JxbKrYselvYKz64M45R37VvwaBm+8IUSPuZbgmQ1ObhUgJL7+9Va
	 SK/UCiTjzUuYOFbvk98slBEDhR60vv6JrS3uSHnjfXdpeYIsCS1+vNRj6La0+8p9eP
	 iqrtoWMZ0Vs6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE23DC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178316091368.11275.15356572224434762914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f889a183ecc8db0c021e55c3af4c1b111d08179c7e4595a4eba55d9184537e2
Date: Sat, 04 Jul 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783160913
