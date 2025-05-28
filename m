Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D377280335
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748431194; cv=none; b=dDy56NAZYkMGRZqELfWHIKajfGl5VS6SAx6Yivmix6d7huqtCRts0RM776aI1f8Ekom29/NWqJBKFMDEXwoYFtuEgRaPuau7d75EjUstoCHxSGHF4bL/zSKNM0F943eDuvRns766MAPFbzFG2bIPYD433e6JbShctbC7rWbhB0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748431194; c=relaxed/simple;
	bh=na8EDDmCQAl3W/TPbt4cz3Tytww3gWHT4hNx9y2IAlc=;
	h=To:Subject:From:Message-Id:Date; b=TUU0k/3OZ6UHwShPi2K3SFaMnMTrwcew/p4IDP3qCo9DZth64CKofnsrm9URrq+5QvXEjawAFVAd9nU2PX04mpI9t9BrE9CIamYxAQXlzIPZDCqSQS/4hqViYFQJUt78qx9qGSIIda5jhRdptSVYeJcsqg+IwUzFuIn2sKWkAUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bL8R2Y/q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bL8R2Y/q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A831BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748431193;
	bh=na8EDDmCQAl3W/TPbt4cz3Tytww3gWHT4hNx9y2IAlc=;
	h=To:Subject:From:Date:From;
	b=bL8R2Y/qQ7TCfUJxo1GTBV6xdCup54pA88Bp4whlYYMflHxD9sPQV5BFT1w8GJgwQ
	 FR4YIgbbC+syQ2FUH8XYb0DsSmTBQij6FoxnpKtu/L2HwLyxu74AKXNnETQgYC87mN
	 wsw5USPpoWERhlC1/XyW9MT6E726pe0YpWL0ifN44eQ0r5paZqkd2rhLY+CVihtb6a
	 tldSEmQxnVEzycwN/3xR8GkXGlr6hd5iyCxQfvjMwPP56Du73X/CesJlVO7LxDys/U
	 kHphdhBi+5stsMURvoFQVoLvcEgVFTnLK+nVaB8TfRAF7RqrpS5uIgmZIh5jm9V3S4
	 HDT8nWwJEBx/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F22C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174843119359.15246.1347228346697873430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 331f09a4baff3d586054eb489898ca5b7ede469bf059105b83ea080916b68e72
Date: Wed, 28 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748431193
