Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7860214659B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 11:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720179923; cv=none; b=JaBiUm7rwLr8pZQtYbiz+PtIoR3a/rjWqYbnjSDfrH6TfPi2aEGx79Wnhs7LHWZlg9C2+AZee/K/o4tK6y6vsA7NJbdiJQTfw7tUW3k3fwmF/W2bWsvm9dxHYEDarVfwThtNm4mUdE0Ojr5yZ8JkCuFYdfs5zBibJU++joGl0wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720179923; c=relaxed/simple;
	bh=udrSp9f7hKncA/SfD5lXy02UmR5+FkhYjRw3SGtmYEo=;
	h=To:Subject:From:Message-Id:Date; b=Gju77X+zVO2NhgJt7MWJLFby88vdzZHbdQ6HztEfWfKxetlmxSeZ+Qwn8ggEV+z2kxxHfxBfJ2pOYXgl1VCAhQVqkzDnIs48rHgCY2PxOl+p4OlE4nLLIIMgmj9zhZVpBvZV7yXEhpWcWkwMTaPIzlMLZMNEA8HMyOYnk/93kR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yk97pawb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yk97pawb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1CDEC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 11:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720179922;
	bh=udrSp9f7hKncA/SfD5lXy02UmR5+FkhYjRw3SGtmYEo=;
	h=To:Subject:From:Date:From;
	b=Yk97pawbsb5HZv/c511Z5ZVu3CU0H+dDehZUtkzRfR/PVf0I8YWb6azp+UtuxxLGD
	 w3RCqKpamb8swnZ0ALjSX7UQRLf480+LRjkL6pp7GIB187BHZNZaolOY3UJahLVt4R
	 YF47H/TCymSgzrQnJR2oyyNRC3lKf90O2raxbXDeMAiARVXq70A/NGIQstxLgvpoCc
	 fQdUfiXlzbZ+GNGlKGEXNFSiLgqKy41mBfqrv0cP6CSEfZj2BMbr6fxZ1pqJwsgwJG
	 0BcWPQJEWTtz/x1GHmi09KVnIw8Gr9sCadmywJEhhUUy/wrxDsVDao4Y9GkoDvaCgS
	 uBHyXm0VwrxSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF0DEC30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 11:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172017992283.14131.13308183353639551188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f5b8ca82645bf03f102958d2a78d6642ff2fd0f72b991fa156ee97f5ddabf57
Date: Fri, 05 Jul 2024 11:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720179922
