Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0B434EEFC
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768326234; cv=none; b=LcNAVdTOomPSiKOF/rO1wv9c1NJPr/v8YgQ3HBRnIOEKytN5DcCaX6U5eiNRPCB127Rhy53bL3XL1Mer+LaSjazIy73TCpyZ3tz2bAjpU0FP26RDRUoJ2Oua8hUwZwxW5IPBV50Q3CpzEiIksCJ+R6QKqbw7kCfVdNgYAvAHrl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768326234; c=relaxed/simple;
	bh=SGG3ZI5aGVu9qvLb8QmfB1bgoQ9cGj0i/XxAjvTUDU4=;
	h=To:Subject:From:Message-Id:Date; b=YsSzt7iyYPEE0BuhzMk0SVqZLOMijXfaCgq0bBrRX2uboCvb907K2QZKcMYy8aLF3CApd/MzepE9p4iF3LNbQYNe6ketWZS4I/gWCIPNN/Th0UttO54Xbsvr7jQRfK765+xgfRe1oWzjDCtG+lwHUQXovV0PQnBV/VMUARzeqvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlIDW7TB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlIDW7TB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E318C19422
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768326233;
	bh=SGG3ZI5aGVu9qvLb8QmfB1bgoQ9cGj0i/XxAjvTUDU4=;
	h=To:Subject:From:Date:From;
	b=OlIDW7TBgm70lABWG4RkcG1PfmLwuJr0HCYAdvSOSyb56/LVVkRsqcOsz04Z9+Dhw
	 2XxlXvFZkFmKoFNt6GhKd4s10wvbPg9s6h9K1ktQYryiAr0nM4X80f5z1YtthQeVA+
	 KO9Hs3enQS/I6b7XVQNl6JcqrN+RAl1PaxkDUGdMpJXaEJARrm4IYdECc0K3Tjv6MI
	 GedYD1ExrVWE1YDn98Rk9uCJQmuGS1RsktWiaze0gl0Cy5zl1p8KPBdX43caZfdwvJ
	 dQ2tXCStCE/q0iCmUwsFLkKvVa/5sKO8QpLzr/ZVQ5ydYH5m4Mzl1BxPS2Rd/Z+i3G
	 rZla5Ej9g1kHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901A2D2F349
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176832623358.788.12989008012611132829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad9037a712c83d5b7682169d70cdd9bd86f9287c5d8192ccc52a5c403c5556e5
Date: Tue, 13 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768326233
