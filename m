Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 767B5364BE
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 19:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718651903; cv=none; b=NZFs7jFG2iv6j9sWPatpzAUBJRAz/Gp6Au4XYH2zyVTFiH0ygbs9AvA/qC6VsqbMn4LeXrJgpi9Z1/kB2iAuymP+VHFvjnsyAHgjS/zv4FwYitsQaVb9m0H6HUvkFTFC9IKuuh6Y73iFJtvINKkHBRnCzNHhYd/32zv94ujEZIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718651903; c=relaxed/simple;
	bh=ryIzOwLn0YPD+Dhe0ETbVGY+V+hCrPIb8pd+faXRtJk=;
	h=To:Subject:From:Message-Id:Date; b=r09qb9hUYPKT3/rNYzH/fOzXM9aj+AOuI1iSD6vTy488jGDmlRCdCH4NJfLQ/8vWn2fe7DWxbnH1FTv8z8HclVPwau973Rtsdcn4xhgsKxqqZewu56kXUY/9c4UU11dJ93O0wc4cS8ZXS4KQPCPiw1GfUm7jIdu8VqOPoGnZi4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdKNY1Fl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdKNY1Fl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E64D0C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 19:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718651902;
	bh=ryIzOwLn0YPD+Dhe0ETbVGY+V+hCrPIb8pd+faXRtJk=;
	h=To:Subject:From:Date:From;
	b=FdKNY1FlpPiU36x/+fLy+y8fk/afRTSyuylVYPXvLO5IOrjMVj2pRQshxEU7X0Tki
	 5RUUmjOa8tsG63yUGa6jFzR3Os9luck1I2R3ZRKYyWjKRVOpPgPl+yoMHhyCkg7usc
	 OyS9duQBCDEdaNJhmEOYPxMQHYPilvuHQvP4Qw2tTBjBFWnOfuUXRpRiGGmf4Nh5TN
	 QrURUmrVRH9vSdLz1879XVze8UzLaaX+D26utTe9XQR+cKfPeyo8Tpo/FGjqQgwGcW
	 wcHTCt/gELgm+Ld5MIwEo19AuhNHjBJ9kI4d4BvmRPLzKUfJlFAIlxz4Orxy52Zp/K
	 5aqNPlchGDcrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD190C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 19:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171865190278.1923.12744935828064058508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a40b2226f903b1c074dcea567e5edd982683080c3232ea9e899b685bd1c7ac8
Date: Mon, 17 Jun 2024 19:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718651902
