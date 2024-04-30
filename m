Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F1C1FA4
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 01:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714439543; cv=none; b=bvnZiuIfaWYT7EWWBHByJR25KdAZfNsy//Sfk8CzHaynqN31+xsJpJ6Ki2BDXA8tngih1fnDw6avMN7pIzFUI3o8K7f4k7eVU9VIIf9gU8mIgoRvvCDa/inXkcDVaI6OGUvWtiFU9hXOvc7/FWUniUPuuuHdRf5jZ6rlrobItiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714439543; c=relaxed/simple;
	bh=AZ175CJa2CNLuAcieUbzeygwphGfXn7V4Aq2QVBEDV0=;
	h=To:Subject:From:Message-Id:Date; b=BuFXARPXhe6/ULTNLlAU7AxbFMGdhRYMX8NTlhf9KDNfHSiEOc12XxRPUqxwA/hxTmUZj/59xL8jH3wu9RExHEthTn19NJeW/Kt/taOZ68hZWb5qPNtHc2XpB19ivJghy0VzbZdYEqh1z1c+u6CeHZdnpRADxMo+9TjBWxsuQZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sK48ovAk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sK48ovAk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50B7C113CD
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 01:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714439542;
	bh=AZ175CJa2CNLuAcieUbzeygwphGfXn7V4Aq2QVBEDV0=;
	h=To:Subject:From:Date:From;
	b=sK48ovAk91l6EjREF+FumiEAhed+PsGoZLC2ea6zq9QZpe3ERdy60Lu+NAIMT2xvF
	 vhYm7XI7XP55K2QIP8futQTVpaiWn/orkpT9RrHJyMnd5Mg5av9Rg6JnCRkbnNUEyh
	 q50DNx0L9BuEm87beF+PhiR3W5oJbA3wCu0HZ3tYDT/+0BGMPACyQ4fWycTQPPK3aP
	 sWia96ir/V5Cqmv0lj68/kAdU+OfYIZWFKJG/B5hnJzbtA1t4TnND1vYNnWjPb1HIu
	 UjPDvTRYISFshiD2JFgOG/2gnZt8EN6lAbmo4mxj0CU2UBNjJUduznwZA7Ql6Dc0Vj
	 LoYs8obyfhzWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B99C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 01:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171443954278.23581.3960509819438903943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13691325e5ff580241966caac407a0ee661d865d4eddaa34c487dcd598469c44
Date: Tue, 30 Apr 2024 01:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714439542
