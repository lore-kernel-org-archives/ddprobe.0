Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3AB18DB35
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786935034; cv=none; b=CCK9CdoMF88wlgIEDszCNtqAo20up9UcAYgrdfP4BA+/Op50c5m7TGhoXaRwLBNUFw2DoQpE2RMEtzyIAYHXzGeJCKqq9iNMMD9U+vepZ4Y6IIdR8dR5Q2HNS+vW213Gjpke37AJ2Yy8BGKG0uLbYlEMuvozUNNJwnv9kK5OkfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786935034; c=relaxed/simple;
	bh=B67NpzL8kgi9KSx+Uin0oegif6dGWvjik1LmkYlqOlw=;
	h=To:Subject:From:Message-Id:Date; b=ig6/Gf2n4OLwqSxjci6h1AqDEtNPaaqh9kP2Tt7aSOjKu4+ehCS3qy0nEV/ZrTC0rkHQn4KNzkJ8kqNUX5z+6Q5xv7hSfPuYf92408Faq3rgpj6AYhdfaOIrzSH0SHRwnEVAi21DIpZ7kL7eceg5QaD6eBZKtXAmTNTYOJqmuBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOViiDs3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOViiDs3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49C2C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786935033;
	bh=B67NpzL8kgi9KSx+Uin0oegif6dGWvjik1LmkYlqOlw=;
	h=To:Subject:From:Date:From;
	b=fOViiDs3o8EaBu6zP/hmioQ4QL9aFXszGtjJAcLwF1rxl5h/beWsU/3N2nvXLF73v
	 cIQKbWDAKfhs0BO2tjAzrbHj+wX6MSQTtrzrpd2nPPqKYKmeweE4oaM+Tgyz25ZYWN
	 T8sep7zqLqYHI5pSdvZn9F38QfNe+1N3lZP7f7FvL2svQxTiQ0b9rdtNa5PUX38Tp5
	 kXUs0mlvQMq+78RgYsHhAM+zMVCDrd+9gvDEJNPVH9VV1sbX+kBFJUSiZprTu20ogi
	 LLR6vI8D9Jz0FcqH4nD6HzQ1zrTiYpSqZAjOP6pbHYHcsl48xl1ON0yw1y1pwnR9gx
	 aWlP/SvoF7/TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF78C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178693503368.30613.3209436633008497035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b1d7e95325c9fb4293c56138bedb6003bfdaf39a3c1af6bdfd84abbef21b5b7
Date: Mon, 17 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786935033
