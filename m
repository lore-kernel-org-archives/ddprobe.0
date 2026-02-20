Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDE93033D5
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771566294; cv=none; b=rL20shyNWPqBtWqEjwA8YDWSEs+ghsNiwoB5gw9YNbjOagYURFC20/ZjVyOLRU+wmjaOqFg/8DMgtjrjJOsMrMq2YsbjxGtNpBgKaMv8aO8xJQlxMua7Cm/uksmno1ZvuO4YXXAGHF0n3yAp/NW7THLfUVqEsVWmwQSe7sL1sdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771566294; c=relaxed/simple;
	bh=GY7zcrQOu0FAENySmlAWTBtpQw6TKqm14FsiJvoy85w=;
	h=To:Subject:From:Message-Id:Date; b=HJO/WUnYDhkrpNd75Kpurzse9MS2+QCa0ZBB5i3RoFWtaNHMGFveG88nmn3Y0b6sxPhi9HuzhRjw4IRS1vNFSR2Qx6gDI5nG/utr3CV/83OPNvFUlThQ5AsJe88xgyxXP5asnta00WLM6QLKwOflntjnAOepHXcgbIQIUe+E+oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/Vlok5Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/Vlok5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F0EC116D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771566293;
	bh=GY7zcrQOu0FAENySmlAWTBtpQw6TKqm14FsiJvoy85w=;
	h=To:Subject:From:Date:From;
	b=O/Vlok5YVKwOxd32RA6kyVfiJiOAiZViVp6EupGQYl2mYXqkBI6yLj2cURC9oqtZv
	 ZuZc15Cbg9RMvBXpuq6adLHLjKs7AA3EDA5z8xQ5AmAA8aYvfJv0PqGBGdtiBOWVdF
	 F9TTnx1n4lGiFOQ0PsgTjh65TFQcp89o/BBzraEZrxqnuKmowAHqL8UmrKbCLIOzwu
	 vP6elSt/QmTGvorLi8jxCTRCXlYiCWGtm3mWaV/4gd71VlXR+Y0OVc09W9FbomHRw0
	 1/gnf9NFGA9Sls/rkG3xCyVLCVmlskTRkF39v8HRle6ciFn8FZjZKlW11bm17ADZxj
	 U7lnL2YJjCJCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A705FC54F4C
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177156629363.25274.10116173589453895238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f08499f5c595bd540de09123d45ca39a9c6375950b306bf9c63cc9da08cc8af
Date: Fri, 20 Feb 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771566293
