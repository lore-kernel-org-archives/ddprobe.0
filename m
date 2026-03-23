Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038BB8C1F
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774236294; cv=none; b=ZIl9Eq+W2sJucVuoXuEkn27yEme7BiLCkYDyiDfaWm4im1rMgjC2vrC/oqj3vyaOHYSUQGF5jUFSc5Fd5m9PJJSKj3CenmV/1crXNKF+cKkKiTac1/I54Bl3Xn3z2uP5vxkkS+lDJQu/yZWvGULuGrVtWwJNpxF/h86g+UGiviE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774236294; c=relaxed/simple;
	bh=Tir9T8aXdfqojD/pS81nuj288RhrZAWMMUcWGnl6r9I=;
	h=To:Subject:From:Message-Id:Date; b=AcEEtcrSTckUUiPd87ylgkP2St8uiVYbFOaaRhrdsq80dgFaVtlDUHbkfEBoNwHArXapHNyw0+RSkOA4zllQJSGlaRibHudXbxrPEU550hibINtPpPjJzIuXPGYudVshjeVtG183hw3coPwt/eDnevJmDBp+7f3AK3YRByFq0Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ok9BTkRr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ok9BTkRr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A3CC2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774236293;
	bh=Tir9T8aXdfqojD/pS81nuj288RhrZAWMMUcWGnl6r9I=;
	h=To:Subject:From:Date:From;
	b=Ok9BTkRrprqeC5esj3DVR3pUJXjiUz9Oyk0cd4z+PPMrA1bmkLgSaf5cpiRaHfJTV
	 YjKSoGsX47sXeVOP/CUftJCbFbdFjESCljEt8CHNUkBTedODvBlZZsd0cN9lUY9A3I
	 x5exOgXRaMQL/y+O0uwtDEUvQdDRoWP9KL+OcpkQqzC/U0akeNdR+z/SK1hjUNSgdx
	 ZjQuhJA8+YHhV6v5IPjIqGmg9t4YzF/PNugByP/ZDPRJ9tNZKzmRPqBiaV/0nWUSgP
	 e2RUloha7KJ8t4/EFC1+nz8zSC7JCg6PufXWFyVWYz9Qs0li047EU+JLFamoTlYw5W
	 F+jhswaKQW2Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9129CD58CAB
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177423629358.29747.3389643793276306467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29547b5d9f2a4b936544345261e68c1dd30ecb5cf6b76b331d28fec4259d5421
Date: Mon, 23 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774236293
