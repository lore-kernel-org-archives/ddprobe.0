Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204B32857CD
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750765794; cv=none; b=i0/3wK+FqsDWBGFWsRbAZUiPXoeoKK4gXBclhFskOVi3nn8ZiDmlnktlAxYQ1p2JGwff0YqFWaPfAFFgyCeu0yOnQ2kGtxq+1WzP5yy1xlcBNZe0JQMA2fFkeGP/WBmeJXslLwDF4/AOcwJuKTzDodmh+3/PR+txuHcOVlcUEJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750765794; c=relaxed/simple;
	bh=JDzpc2waLEpL0cnUTp0XjfohdZqvUCLZrSUOiYqjTrU=;
	h=To:Subject:From:Message-Id:Date; b=nRxU7WvBvtqToNkEio8mhODMBc8dhSq/tZbcGYPZiat5QhwawOl85VRIexAtbCaaP6nHmG35fS+phQW9G2lcORMq7szaPZZaB9Sj7gUUXvJl7K0M7/3YfALigmLc3n3m0FpkxIiD47jxPeI5iXgCs/bF22xHL4Onu22CbMnyJqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Us4oHO0z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Us4oHO0z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3FEC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750765793;
	bh=JDzpc2waLEpL0cnUTp0XjfohdZqvUCLZrSUOiYqjTrU=;
	h=To:Subject:From:Date:From;
	b=Us4oHO0zemx37PvbgO/P1LkO+Wxhf93FfYTFYycsPlgXsubHD9Fhf23u7MIdDttd+
	 NgeleY3UMA0EVBkvbpOUuv8rRO+tFpm01FOOrgY5YwK5ZAojVhKs5P476TWe5ReUp0
	 iLmMEcc+6nbr02tSd0Qd3K/GjipnoRlNt4E9lrvKa7VJeVZdrmh9dXKjYgWnEWTokD
	 1PcO+Z8FhdIiJegalZBtdNPZCwQqiX+sQ48I9AoxYxPf95dUp6M2LPcHtlUjL0hnrh
	 IpPXydPMug4pi5U2WAhquULOthRI3dfgAAcLYAKpbvSEEN/gBBmCINyprkTwOsG9Vb
	 9vPMRjSJVxW+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDCFC7EE31
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175076579357.4898.4911523441605444458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d70125aff35d9d9a44dfad1316827e633a321487c40d22ca0859bf8e9c5d837
Date: Tue, 24 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750765793
