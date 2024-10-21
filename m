Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B920A92F
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729479354; cv=none; b=CT4Luze9KeBJXs3+aS4OSRcNnkMB6vDx9YJF0kDNiNpe3SVunTzKVUCPaX+Wl5mi/P8+gLOB/LGHt8f26eNVJEwLTwdt21/mpF015fVso2h9zIsA8w4SULcOvCw3Q8DjbvYU60e7e1AAWk7ROew8tbl0AdjY1O2rx65IaDP5uwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729479354; c=relaxed/simple;
	bh=spARaRFoS/+g7P2v/2oMFvI8e4py/dNdPF24VZRi3wA=;
	h=To:Subject:From:Message-Id:Date; b=JWA/lNn1UwRWTGf2q/3Q67LCznQuP9ITLZGcUdJRbCr+Ipn7DDQJJ5XKqtd8N2/84OG3umg+TrZ3sb5NPKtnKVDFptZrLtzn9aMNfqZap1AsPoLiA5WW7CBkCYPDjhhKS1IGWYy53SUd8ksDVVVxgTPARtt2ElBt65ZYSpzl+SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcDDnCwH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcDDnCwH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B87C4CEC6
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729479353;
	bh=spARaRFoS/+g7P2v/2oMFvI8e4py/dNdPF24VZRi3wA=;
	h=To:Subject:From:Date:From;
	b=WcDDnCwHwb3tg4Eo1SDzzcCdqg5KH2tUSvaAQ4515D+VxFr82lPlN+QPfKbZX57aL
	 xXDRmGea2GcNfoHNJnvzitpZE6c+DvmFbjPNejW/wZij5yh7FnD7TO8LkfnClZyO/D
	 BWFcrLFgCJHhvP8xH0ybm1qsu9FU5HNqneAHexhjh1DAmhH4pkgf6P6QbqI48bcMPn
	 zhCQcwmts1nVnMEv4Y7yr86CmH21MVIzOOlSZF7XnBYWhIaH1iDq4Lic0WrHiWWOhx
	 gG8JPlkSG0N2FNQ971hrLIK5oDwV5YNkwe7J8l/lZZzUO+jfLSEipwVglN2XogvG/y
	 Z7LFLtwh3gdjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CF2D3C927
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172947935357.24510.4831956728589528889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfcbd49a011992d9d9167e7cc9c9d953df55f8ba8c6f948d52ae5d1d9fcd3f36
Date: Mon, 21 Oct 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729479353
