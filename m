Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEDF257845
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 06:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765435974; cv=none; b=GED04ez98+RthxeyKGlkxhSqD55bOJTlTDDoMdyzSU3Li+TCMNq5YL6FC3wulaWE82a/wXzFgv1+waGCq/UfRmi7qqkR715JDGMlP08w2nL2S8+2Dt3T7YjywOU7vK/VPZ0/5SAjNh8bTA4L0cCDBziCH3VNIS9VxHRpxw36fIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765435974; c=relaxed/simple;
	bh=u5dk5JsBms9RS5iNS6MyNCgq9LBcgQDI6uYedCQjlUM=;
	h=To:Subject:From:Message-Id:Date; b=I5DCvzSD1Kpf9ISlzHJwTO3ZikZhFXLGyEpo6jVz2fFabHOwXGTMU6iT5gLNr5AwZWXbzr15X4KM6NyhIn8o23qriR39JaSuzDexSLzvNN5tZ7y7/GSKAPS2sJ50NFfAVrqJKt/WlViAhQrPzmRH0TAGJmwEmsNLbdR8klMluRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4USELNX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4USELNX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD079C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 06:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765435973;
	bh=u5dk5JsBms9RS5iNS6MyNCgq9LBcgQDI6uYedCQjlUM=;
	h=To:Subject:From:Date:From;
	b=Z4USELNXfkICBmb+cZTs6niOrWklDAY+XpwCxnpJPHnYb+QjXGJiJ66VcH/2vsqWt
	 h2zm32FPQDi45KPbGzF5+B+llPb9SzVNbms/BOk2XDWnh7yiZWnOPaAt8hcGR854+p
	 Be2tmZA+PCEUC0j6oXqGJxem3/SXFWKs/csT3gHMT9prHF5LKtqLl/OwBrg1x1KC4r
	 dydYHOVqFD+PfhLs6EFjnd4LuLwwM2U3WalzmNen3bDNiUcQwv7q4NadCFNb9lNxLW
	 +Nh7v/86A7ERnBWZrG1cIaiJGkwizyx6/+GKksbJ8tGk/qSS5rHoBD9vZhHXEehwz6
	 3aoRjXp4ZxtUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C147D3E799
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 06:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176543597360.3923.3847753081585125825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b3d62a31282a427d02d32a625fc3ca88e35297def5b7bd47a6042293b88acdd
Date: Thu, 11 Dec 2025 06:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765435973
