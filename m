Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B8C257AFB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749475194; cv=none; b=upGs+Nl9zph/FzvY6mxK1ytoIK/YjxRSXjltT4fCHBxMrUcuEJRbWOwQK5iTDD7DZn4XONASVwLPTtEftijxSs0TkZp+SaSRhtvpoJ4d8dk16e2oBXcy89ZMZMh5C1qx7vkXRs6RA6ey4M1DrjbFfBSLy7rKpeVIJc5BMUaNw1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749475194; c=relaxed/simple;
	bh=RsaVJY2dtlUF2jzfmIvilNwRa/28/2DTyw8CyaQ73z4=;
	h=To:Subject:From:Message-Id:Date; b=tXRyaLrTiotkbVDMWpapY2JQhrSzi7WpXw12zDJ58EwdH0OHd7DO0NFo/WJVpYas3A1Z6MkskDrLsjBVJMWv9Kzu8DVGEoHjjDMUeDF0mYQ1fntYPZgPle3c7FJ3A2f0l0Zp0ZewFA8uksT/nMc/59Qgg/cqHeb78fNV8uLu2EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YN18ovDu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YN18ovDu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A350DC4CEED
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749475193;
	bh=RsaVJY2dtlUF2jzfmIvilNwRa/28/2DTyw8CyaQ73z4=;
	h=To:Subject:From:Date:From;
	b=YN18ovDuHpq9rMnZsaXzaBYYiz4f4TrSwlRbdpESBSjr+mHQEWdSZSG9CBjem7FS5
	 qyK6zuh6iuDdA9OvKo3hnuhP08RqT73jvisSG6O1MndnplbkoICC6h1/H2zfr14w49
	 EOeJhIhrdqZWlKGljlp20qH88I9UAkIvpFGFYtRC1AlZox7aFHYjkVTpJ7Xgdp/+0m
	 LgXbpun8jWSPBKZdRssYLdtBYUw/SMbHvJPARbppYtBy3JkJYTZCkT+NLr7zzEUnLc
	 57Zb8p9h7S8pDXNoIp5zFx/iMWR28JPZNgErHcpn8+0h9vsaVahPdLlXZ/63zTt0HJ
	 ++gXEHjT0LoQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD9FC61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174947519358.10705.819481934256425167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa2386599f37e43c9a11803a98150e7b923676afcafe315d1655c9c14acf1f53
Date: Mon, 09 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749475193
