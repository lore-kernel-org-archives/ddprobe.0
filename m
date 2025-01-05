Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABE3C1876
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 10:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736071554; cv=none; b=PpAJGV7nIz64jsCI1CpNWH6rzowUNx/vQdvTwWaIVjyOWgEs71V+KwNkyVp3F77b7x8VusX5HgIQXF6OdrI6c0Jx3dtH3OIBbM9/toLGfMLfiqPAhCFtnJScHVnAuiOv07XSTCaWSt6HghNCXRlHND3yjBOYCv/NiPbKYyOHPB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736071554; c=relaxed/simple;
	bh=B/LKRmK9Ru3vCdHdHgvAh4//bRLiVFUZkbk4uC2CiWs=;
	h=To:Subject:From:Message-Id:Date; b=Wg8aV8Dgxv4YEebZ6Fx50cqLUYW9kKdpQLiVdBAZZBJ2wMNsa+Fdi/gDVKQfGUmZoETU2RlE4PNawzkP54lq/IN6pTDjuSm55bdm9E5TtttiEq2dmvK0GpMbrdKw0MkNpTOZgQksVWFn83+xX8EOXmFF/ZwqjDwFmRPXv0fGv3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6W/NMbg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6W/NMbg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 31D1BC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 10:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736071554;
	bh=B/LKRmK9Ru3vCdHdHgvAh4//bRLiVFUZkbk4uC2CiWs=;
	h=To:Subject:From:Date:From;
	b=a6W/NMbgQaMdMuKicLWPjyGg6nA0ysAkm5YV/et6SM33SmrWS3qWvf1yjqVeicHBv
	 Nx0G6RuQ1AyeyuxcYFlM7n+BlJYFqdKgv1/ABBeG/ju8BBDU4s/9acvogQHNCTeHgN
	 zfzihI2fGcWw6oEAPQtrqf/8sRJyAkJj5ezIpRAocDETHnKhvn5O8m9I5UmYENVlzE
	 bb+Fz7JbCiwyndEsgOz7qhv0Ja7ggeoIDznaGjMMVPbSP/rG626lwp9krZSniAe+Jo
	 VW4rUJf9t24fw7TNJO4XOaOgVfGnekBNY+KzAps7WIaIemcmIwMOWPEtZigTbDzu5S
	 BI5USmVYV5hgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D122BE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173607155383.17526.5140467934049423161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b786fc596ead4386cc5959fc3c731f974cac596151a9e60296658c8b82f45b6
Date: Sun, 05 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736071553
