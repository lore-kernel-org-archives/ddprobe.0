Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03CA51CBEB9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768610634; cv=none; b=Zuah9Kur3Rue7NBmYASjBH0fTccX9BCdUd3B8TlYFjGmxEnktsRo3Y5II+X1q075ijpZ8Pm31P9f5WjBhOsyOSIpNV8fBvyHFTrgBWwFiCZJhLis1B0ghLCeNXJNSRkuE2rW53abqNjSCxP3CAYlGezLA3A2YUORuvFFuh5wyHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768610634; c=relaxed/simple;
	bh=C0BaQWzdO6L5NfTyZ/DYj2jAAM+Ka4QsaH6Y3Qlr+no=;
	h=To:Subject:From:Message-Id:Date; b=W3KvIQCRVpczxf2Pup72BMUGYL3nefsvWTZU2ixj17dGRNJlfd5zC3Vlxm7MH8b35pwD7136XspdlY26FXJmEfpe/qBEKXRdNoAppwsm7K2BU+b4gR0H2otBpDL7dhKTrmAfLYylABWu3yLOy4H2zkfzJcP0ytQ/LTixPvujuzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcNx3fXi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcNx3fXi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FF1C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768610633;
	bh=C0BaQWzdO6L5NfTyZ/DYj2jAAM+Ka4QsaH6Y3Qlr+no=;
	h=To:Subject:From:Date:From;
	b=YcNx3fXiJT5k+bKDTkPfUxGxMdFozDS8IysSTtM7edQPJHMd+957DzR9yaxALrb0I
	 O5XIp0TFyv4Q6t0vYI/lHR0wne3M+QBUseTROQD9gjPd8+JnxsuzBcuM5QnAjIWCN2
	 1oYc5ImNBYHP5hsRQqUz5lCW1afG6J/BCZyQmERPGWDyD7VUjkdKeu5zmr51bTbU2+
	 Oo1BGd7zzgvZQM0UdNGK6KGWDats4cpf3q7dWzMy2fhFKQAcBzDryeSZ12f/UkzcuJ
	 2rMhDGksNymloI+3kTVf5q2WGhD3ntx+emr4F8VRssvMzspyVaqB1zUGGA0pM0wOTO
	 rggBHbyrW+MKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DE1C9830D
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176861063358.20067.7568764858200120180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23bfe39a3de43d4b4b0dba3e125850730a608f1be3d2cd830a564acc8195e808
Date: Sat, 17 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768610633
