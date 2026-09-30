Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2D74BD374
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790812234; cv=none; b=PoRFZ1qh9Nk26QKkl5mmi3J1OAiGveNVSy2F7f7EJ+2psC49y3se0rkARjZqKqcFHo3IoRoHGwIeU9vPNIUYSMLNAPcTxX7BkSR95UzbVwIA38GQwcttv2rXfsc8pKopH9rHaLNvCa1QH6ySTnMwRy/6Ir6gNO7HV5ND8n8FcXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790812234; c=relaxed/simple;
	bh=o11H/7kgmPztF9oo+xlh2vwu/4ZdvD5Ab/No11aOJuQ=;
	h=To:Subject:From:Message-Id:Date; b=cpGOvwyRkGF688d+q3Gykpcqb7iLb5x6JECvCT5ldtmS1l8E+Tik9ib+3p42wxVTSAoz0rJNscsdJ2XY247qwOZz0k4vF8ct5AxcfTwmc6/Bfmo8Kgk02krLRufaCeF5AaleZ2L2zy32oCIqjvpV9+OKsXBTST4z4zaKyo/ObqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0GEpsbe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0GEpsbe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4073C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790812233;
	bh=o11H/7kgmPztF9oo+xlh2vwu/4ZdvD5Ab/No11aOJuQ=;
	h=To:Subject:From:Date:From;
	b=G0GEpsbe/3/KJNX/svuY7Epvcg6sb+jZEnb807uG9AvyX5TKKMdSYReMAnW1ayswK
	 cmysyek2B5PcA3nSwAiwoWJgYhCPNEtExXHQu5wYrfVLQMv/+j/N6byCLmy2g8ie3S
	 gPDyDAc68qQxFETBS/Ck4bK+ZsCuADmkWWxfKZWd+xo56zdMdb7LOoc+hNsijyLWGz
	 9MjunUjJ2RQ9cRI6vuF6hoGdZICOVUQwQwao0kIvwoXd8G6SQu3LtvPg/T19dlyulx
	 No1zHfyiqW+qp4X+q6/c+Gu/I/0uZXrAtWtay8ObZj2UMDsvOR+ceBhm+nKqvagPHg
	 K3fimrojIw/0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1860CA5FC4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179081223369.4079.3892960032792819824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f84f9c57b1eb4c9da6a9f47152c8c57c9ca94b5323bba13fc11fdaa2ad189f
Date: Wed, 30 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790812233
