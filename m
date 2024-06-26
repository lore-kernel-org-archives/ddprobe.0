Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53FD3193079
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 21:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719437003; cv=none; b=gtIkv073E/nLfuilibllkEiJiweIIu+iV57RI4Mbo2vwM5zT0qogdme/94r7sw/31GFNDf22d1fuWcLncpTC/CQVMzKycDnT+BbiBuQh1GnFFUBAqmWBjY6wXaW4u++JWCr+VWnoX3fh6ugNPH+puHBrYTiCWDlAJ3JihofxXxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719437003; c=relaxed/simple;
	bh=FZxzmW6SCdCXxkZ7idcDeZ316U/7ujXxTZx5otgNI88=;
	h=To:Subject:From:Message-Id:Date; b=XCg1zlP0/xJoR9kfBa8R7oGYLHF8XeCJriiZ9QwhQGM/pzcuWAnpscszfny6OzBL+LQdNSs5bXwghMvUQ7It4PboXYRrz4KOrVNqll3cQw1tYH/XWFq+Y76T4jGfNmjxy5sRGjsMauarPAmxrzuKlYKIiwkxXi/AtFaD1g402pI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+OatstO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+OatstO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD55C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 21:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719437002;
	bh=FZxzmW6SCdCXxkZ7idcDeZ316U/7ujXxTZx5otgNI88=;
	h=To:Subject:From:Date:From;
	b=B+OatstOOoBL2iT3SDR2VONnvwb3F/9xU4KGuVrk5S01wmaq0O9afuDI+3uW0tzIN
	 g+wEjU9of46GXQ40KDQclg53p4xRrhL/uuS4ViNRkMr1/63x0Y6KMTb14lcWbZwNLi
	 JJCJ7jIaxJzpzA5gheY35ISAt3EWcFvV8Nt1X6S81qdTr8Qfxw2aKry7ijWZ1LtM46
	 nNe/eQiKRihBWeb86Zc4pk9+9pT10iOjCY1WWL62RMNeh26ZjzoLCrJ5u7uI+xS+aY
	 60JF6HGXcLMIysfwO0YEZ6tdpU9maeSf1I8H8OuhF1kh/FmKzgCeLbN0Aj946HgJhh
	 4xJdkOwy8q86w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD86FC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 21:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171943700278.29761.10952511036542301161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 581c51fa64765e17220b1821ad918fd004db39fb19740e1c7143563560ad194f
Date: Wed, 26 Jun 2024 21:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719437002
