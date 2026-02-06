Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F7416DEB1
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770365034; cv=none; b=WUovRqFNh18BFObLdVT7PRM8WD8ZLzcuveGumXt60e4pGo+OQu/fCujcE0OJnKN2eOLFl3kxYkT3lNAiAG2ndKFpwMnz3bK2Bei+DtARcv80zDXFEmn+ScsF+orQrQJuPUesuNR0ag3cgf4Y3cI/SXmzQlx2w1P6EeHvd2bhrYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770365034; c=relaxed/simple;
	bh=CMcWz1v2Om6s2EAj45z/vdXUEgNKFabmZGuLxPV/azc=;
	h=To:Subject:From:Message-Id:Date; b=W7YaqRtcu2F0toGmg877fpme/Rl3TrFVuUnZvlMe7RY6WC1xirtPjYaLqVMvwoZj1wEYIdQZTVdUacPaWSMUsb/+ZjvR4rYRp4sU7awDgxS7INta3oi9Umhy//3XQ/SI+tDSCpEJaib9OsAxKLruxMT7Xa40kiWIvYbj68LnRFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbFsvT7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbFsvT7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17BFC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770365033;
	bh=CMcWz1v2Om6s2EAj45z/vdXUEgNKFabmZGuLxPV/azc=;
	h=To:Subject:From:Date:From;
	b=fbFsvT7b2/4V5nTFr99MV7mjLSWi0hhjiFK5gQOJsYLL8qIBlFvkS+e/USX83xfa0
	 ufTuZHs5aqjd9xoBW42ZiMx2glZlj5K6iN3z6AGwUo0lFTnX51z0bQKloe1rU6IUSz
	 mhwNx0jXXuMCAMRshLO3zYfnXx7ZgeZWFlTA8S1JyiNHKu6Cxbv0Dink9pODPpgab6
	 4Rc58+waUAnPWbrnwPMtGsS6gLKGD0ot3kdkdRE6B1kt0xepLilsdDJikokuBM/+hl
	 mrXyFkpeqlXCBLWYjc5WmIrbuoBH94enhX9YO4WWu8HyR9gJJeImEJjhPTKXBEa3qy
	 Yf4PmLUI97pMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915AAEB28D6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177036503358.9193.13983896229210286842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d47edc20255ec4b3e6122db0a7b6bb45551816a651ac66cedb18fa7b1e2055b
Date: Fri, 06 Feb 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770365033
