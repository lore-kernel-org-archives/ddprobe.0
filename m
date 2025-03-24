Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3977725DAF0
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742825995; cv=none; b=anDfYbmA9Z8RltOxPsdQy/Pa5WF4ynkWE8MNMQP2pg8FwXvCGFUDkyMO1XRNRLFyRQYedF9JMMRuiGoGDHIJjX1i4tFeyWOekRoCitztNo0VIkVlDfshaOo6YIRDJT1+c2YcibbKfWNep2K2bTJ5TBH7K8iSMCEXQTZ2CNAXN2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742825995; c=relaxed/simple;
	bh=pRcJZonMvXNZT/hZhregUj4IEWnnrNdU7bn9Fgpp5L4=;
	h=To:Subject:From:Message-Id:Date; b=Vl7XM/sTDsFzDAPoeJ6yOJRI0tTv/b79k3vJi4acQRbZMmteGfRQvtV53fiMzonRDygqc6gcNN1HYaoWiBQOvvm7GmdpMxPIWVgAkNCSXoBC29/QdoxqJv5ZhWLYtw4WfQqgQW3OfUOHVnxQcB0fzk3/dVi9Kse5ygKmFJYRrHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBAgaVBu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBAgaVBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB04C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742825993;
	bh=pRcJZonMvXNZT/hZhregUj4IEWnnrNdU7bn9Fgpp5L4=;
	h=To:Subject:From:Date:From;
	b=pBAgaVBufKgGd9834GMwsEAWz5gaqppdAkzyvAlbcWk0aPRsAPXU04IiztspMuIlT
	 rk4b4Kmr62uZabIwyM3hsAMmNbi30IkvEcn6Rz1wMdNOaT670qKlUapPdwVJV6WZiO
	 U4vqGuTnPE20VNM0caIP5nzFTO39pnncO0ATEm6WiRhUpgqFJfh+rMHuBYMRiK84mt
	 6tpC6U8+oB31IcwD8cxdcNN4kmJJHaE4U1SlE5Dvt+2Ykd0JSfNa5aUKWc/TL96QJB
	 uCescjIliMh/+R8jxToOH/cZM30tyOIHEuGr5HhZ8zAq3HmPs5D0aePsR3HViyOT9u
	 np3mqYLj9PpMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CA8C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174282599359.5757.5471502386432243418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9521baaa78006b8471f246a62d81c908945d96eeacd9fbd74276b502556c35b
Date: Mon, 24 Mar 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742825993
