Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F47A1D61B5
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738972554; cv=none; b=TwxVdxBI2969mGR17TT5Rs1ygNKRNtQz5VwEaWWeT6pvEGqAdrCiMwLM3GAeI2B2OcaoyteL634jza++1USjlu4vo9d/L7CRqXvPDFsNefld3wMaCnjnGa75cQQgdua7fn+zJIAqwr3i9jXXtwsfRizRrdCuMdGAv8Dpzen40cA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738972554; c=relaxed/simple;
	bh=f6wqQz9uSjAPS7YWukcsCElcKWeBmge0QJSaDrMQShU=;
	h=To:Subject:From:Message-Id:Date; b=bvMPvFTJAORv3o9D/2nohCoktBA57apLXSYQYXd0Fg95e/Bt1lpXiegRSSK/RdNsQ0FL2Cv3B/dknq1fx9WHYx5DXDJmEec9WEat/Pil/04lRnLI9mmPv7Ca816Nt6O5mCwyczi65ssnK2KwPFNJJIVgQ9zVtdJACahuta2Z5mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWkueGI7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWkueGI7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2E8C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738972553;
	bh=f6wqQz9uSjAPS7YWukcsCElcKWeBmge0QJSaDrMQShU=;
	h=To:Subject:From:Date:From;
	b=QWkueGI7osxagMrdN07pNj1W7J8VQPhaZdFnyy4E0c5FTpzhugJQ0AsP7gs8WObn0
	 SHqk0NI0MIkOSRVQDCtHsFaPgK3hvLAzD4XLGT0NVa9zBCl87lxVTY3sYPCcHagZvh
	 i/+CcfjvtoKtyFyEeViCA8BUw4GQJoOjr2nYd6YQtH7aZhMgT9lvZy2Ax+mB+4zt1d
	 QKhR7i0XqDfytdderJN1pPj308AkqWhdrcRU1bx6EcJRtWTvYw2V3xz/7QdnxxQMSA
	 m3V9e5HBe64FfuXkgek7zsn52OW/9Ln66iaJ0JOlTe5735pmpxDyqfWUM/GbEtDbcx
	 vtz8KklcK+sBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF1CC0219D
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173897255363.5824.366626373459580778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cf8d1cbe435590d35bf83f765848a8c7f4500976e7347029cee832b7948cb01
Date: Fri, 07 Feb 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738972553
