Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFEF1854
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743649794; cv=none; b=twirgtmqQGn1ia2OXJ/iTcRosiOJeSNHt/rG3+BgE4foeIDjq8uUGkeyVJPSpt3Ws7R6nLJhJoulKY3N6sgumSASsrMKmFeSOJYV82HH2YcXmsryP/S2qc5sGTAlBq3LkWh6wH8BKpq0/71xD/6gsckB7VWj0TooJ0bqsfbMlNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743649794; c=relaxed/simple;
	bh=nbT6D9Qa1zYkBispCVJKwGDtW34BbJEqZ/4NGmqNUJM=;
	h=To:Subject:From:Message-Id:Date; b=E7jixbJHc8uiiNq0jPLusUt8WAf8O5NfQ5BmbxHkwVtdo1T+XXN793qvHpQ2beuRZp2fW1J2Kr/ddMX85Mu2oG674d4XuuVkRN4N/yJZOwruyTrYHV2mgYLPWzw2aE2sOc3habhuUTGo79qwjYPtrfG/RqByBo12S27DEwcpysg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxNbfK/a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxNbfK/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6592C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743649793;
	bh=nbT6D9Qa1zYkBispCVJKwGDtW34BbJEqZ/4NGmqNUJM=;
	h=To:Subject:From:Date:From;
	b=cxNbfK/axxwNFvSzphPvtRnN5bkzqLsx6FfRs0hMSynW0r+giZd94pzfkU+hBWL6r
	 QFf7PtMbU4fQwTVZsI8wJbtNiG7EntxpuWuBj8904r0jtjgjtuRpQ+5bGuGJzVIZK7
	 4gq476fTh3mbk9DnhaX1s1+a8qjOI6ppxXpJDYsYCubWzlVMMpAdJyP7jIzvRsioId
	 vc0BsRyaCbIKRKGXB2CgPEy8ymJdTKZJvJohFNtDsOmwzFvCWCHYrRbIT8aRcp7XQl
	 NWHa53hF11v2wMd1/WtqswVyrhhowAcc6e3/h6kPF1BePRKM0x3bbCroZU/oIXzL2E
	 RgoApVxzRYojQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5F5C36014
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174364979360.32043.12259628910218654463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d5f86fdc67e9760d784760e918f6bb4734ebe28012a7eef6a5d9313513bd635
Date: Thu, 03 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743649793
