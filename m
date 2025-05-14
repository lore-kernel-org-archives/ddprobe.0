Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E51214A4DF
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747186194; cv=none; b=jbdXsHnFhcNHomZyNP70ye7sGQFiv5lBVbz6tY7bXojsrvh1I6Hk/tpl/usMTh8t3VIAUXKVNPmSSg8eU02mfsaDJilYOzrBZ1Fk2Zf6JPBkn5Zewb/KN+GjjpA8TM4pgJndFd1PAa4Un8itTrdGt0U9ttJPu7rTiEm84xAgIDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747186194; c=relaxed/simple;
	bh=sAXuGXlwP+FPpm+02v5RkghZgw1zaHTN9yZIrv8pcTE=;
	h=To:Subject:From:Message-Id:Date; b=iJ9y5yONhcVAjviSo2KLH/TACaK+P1gQedSLYxeRdttbfQ+ZvUAQal7NpFliz5lDADZ0IyTuhoYDXYJcocEMeWzpRKrkim31G8ScREpyd8rV6zxt2HTT7o4aJAx5voV9hExWQg73Rxg7SSU167Mkfs8lZnJ0QtVnYCXqN+CQf/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pnKoyxpg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pnKoyxpg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7248C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747186193;
	bh=sAXuGXlwP+FPpm+02v5RkghZgw1zaHTN9yZIrv8pcTE=;
	h=To:Subject:From:Date:From;
	b=pnKoyxpgZPky7gxzlTItxf5ta31QI+w1GEa6ZgdzjWtxqqkfT9Ve2Ybi7Js4Buz2O
	 3EZTeh1dYxNdFqR/OjrQ1YoF6G6xYwZY3s1Bh5/rz518ilr4BOEPXUoVbceqLRHZwT
	 cqx1P/0HLDyke3RhA6bzmJoBoGzW7HO5Pxj14Y1X7IpB+hJgjbjTSI4jrRcW4u4mOK
	 rk2tmI+vGyKgQ6m7yczB72KsPoJZ1NR+e1JdQoZ5gw3ysO71R5173/2f58UbERlx+A
	 9QiJlWMu4+7gAlywxt4WbVrhJll93ZnjO/gq9g+if2wEjlSkY7Z9yS5BEbpbcxsA7X
	 VfX5KOfwIKHkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95241C3ABC9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174718619357.22884.15884051220006918958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a0956a198742f2d49c40b67d3a814b1f2aefdfe90eaca83433bcf06e40b98e
Date: Wed, 14 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747186193
