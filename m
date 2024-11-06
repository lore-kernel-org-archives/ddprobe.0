Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F81645
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730914554; cv=none; b=LYDqcitGOPqmcdVGIVFwdJqo6q5khAkWJs5JnMTUxMexA3xPhsKuUrmhfD41R5jmfKStbSL9VMCpIbiLWlVORUNcJFP0KfazKOTt85by1V0cs6Bw/NOG7pNpct3ubkARDdji5M92BmJQ8irzY4bgfXFvxHMKttA4IxPgrQkhjhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730914554; c=relaxed/simple;
	bh=i18UtHkBmNCQW376Ivbx13FQ9VOVMAuCVmlYa8lxKYk=;
	h=To:Subject:From:Message-Id:Date; b=PljFBJb32CfKxubENoOZug5XByC3uQHzp/en8lbbPmckWusu+kToggvTffE0Mdgh5ue2orMc4+ubyasnxfW4mZ4rZSTADvvbENEotI8tAuc16727B2MH48gI9pp6bKj87Dg32OOns443bg/OYkgCnzsWX6jTrsgz0stbnoiuYuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNohQDk/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNohQDk/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00F5C4CECC
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730914553;
	bh=i18UtHkBmNCQW376Ivbx13FQ9VOVMAuCVmlYa8lxKYk=;
	h=To:Subject:From:Date:From;
	b=hNohQDk/XMgLxrLBls9vyhRSNu8qJjmos/osFAZ0Ff1QB3OhHPFoHii0qCWRX/MUv
	 dZG4/wM3HxWlAbr97XfmbVGyr4P+BUDpXFJVLWFyShvNWImsAHW9cmgcQ43d/udMnk
	 ANZJdhUmP0LdOxfsQbUvJl1HMcJOQXFGxhZNxw8vlR/+vNXF0NELv3izPkLdLuDmEf
	 Y+KzIZfi3kS1v48jp5y9c5LFOSrFLnkiVvWqEYaR0JSQ2t6m1iIyYWUd933ZYdCr+K
	 jNGFA7kkrJU+RhPCnl1PkH5zmDJKUnMkQfb3bRUUn7F0GxULL2Pqay8BJa7IRS/Vme
	 9/SM9aO6aC0nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B32FD59F57
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173091455362.26972.3690269464032542395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aac3eea66ff9bfae338a16c6eb23a2423b6bb9d0b2917200fe409d22c1d1dc8c
Date: Wed, 06 Nov 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730914553
