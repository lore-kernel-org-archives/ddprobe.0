Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2923B229B1F
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758904794; cv=none; b=tDw0XldEllJ4l87w14L0AG+lLsE/w0fnJGqIvhyqwURuvS55GeZpF3gc7A1T+vAGlOecJnDDU/CiTAt3L1iD8trtt5V0LIB12hxIV60elB+l9oTpAtmAiMXzfmVjS+ggH3yI5pFu/XeUxhcv3284JeSmBw8ApwPDLmdlrbrLPzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758904794; c=relaxed/simple;
	bh=aZscdFqBWPnXd2wCfEJOrLDtZmZhD1GUgwG8T7FeHG0=;
	h=To:Subject:From:Message-Id:Date; b=gY5Idj/WbAwVwz69HIFZnMKDB46EIkpRLop/K+0LRCgS6gVbS8DBD+i76L47KWpIEuSoKTrh1tSf4fqRWrvkTcKhoqSySPGlxzEpVcKg8oPD1cwS0rsw/G4HwmtbiFwVeIRKpx5MYz+ppKHlrlchsGB4jGvOkVsmzEjNMSzwaQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtE/JEtJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtE/JEtJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB8BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758904793;
	bh=aZscdFqBWPnXd2wCfEJOrLDtZmZhD1GUgwG8T7FeHG0=;
	h=To:Subject:From:Date:From;
	b=QtE/JEtJ24P/Nn6SFKg3HAoyiuS8VJEIwbjFPEfhy2sbXUTATmv8yXWIW40TxtKxW
	 irkJqJRQJoDtX4swmJ93gNpeoKkWxM0A9dOPYM+6PXGKIvIVSegdaswzM6liwh/IM8
	 GGGn9TGlZ8xqyp1R3XUZB/y0PYHLf3NvAiytMIxPEAGd9EU0lHIIK1oVUoUnHZoCGJ
	 PZXaQkZ6vvHxDlj0AVNKas48tnD4MqB9m3NGLs9r35b88Z5UfMU5QCVZ8imHA9mnR+
	 4RYZGA6qCEUbacuy6ykZqBAEbsJPK9jAA3TmKem3pLRea8NiHk7Hs5tjkZ5sdFgd0B
	 JOf6IHXsujrnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A765CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175890479362.18611.10297021650424100027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d83db36fbb9060cc3041631f0c4198f40651a8701fec884929c1fffd99565c2
Date: Fri, 26 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758904793
