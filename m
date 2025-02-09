Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8DA3C1F
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739064354; cv=none; b=L9vNXFRmKwz7Bps5zoDmouxlAh3483E+r7p9glQJpc3FLNkIAj2Fi9uf6UzCQO1FSxGl902ZneewtGnYu9V3HDwtp6r9hSgFMkWogbSDMxXQstCdqyyFpvyaQT3U6NizF7BYIzFcyUrEAv66Cvxc6pho0eTijzywN116W0g16xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739064354; c=relaxed/simple;
	bh=T88S0P61PF20IgN/51cWC6vXxcDIrVgn7vfkyoPRFUs=;
	h=To:Subject:From:Message-Id:Date; b=jpXK85haM8q+lqyfPSfThJy3LKn/hyCWQnFXj7RO5OarBMWsqEo+zs83IM4NirgBfVh2xGZjw3DUXRvSdFpRJ/D3MxtsmbVNw32Dzs6NUJFPsbLQ6UEC1TaSFIVDqtmuqUvBGbGRyGzz++rlIU/rteypagzkseosfgLHayNwe3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OrJqMhvv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OrJqMhvv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D09C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739064353;
	bh=T88S0P61PF20IgN/51cWC6vXxcDIrVgn7vfkyoPRFUs=;
	h=To:Subject:From:Date:From;
	b=OrJqMhvv4Glf6U4hxQuDf9FsGrDBDIsN+VLdBeW7rOrjLIVXsb4QRiv68PGf+Vw4j
	 KmbciRiw5IAwN28BvuGo9+9/2NSFRphEOAwDJBzqqQIPNNuKY/Xirn13wZsNVDU2BG
	 W6iVJaRUkTeRPtHKwu9FDWDChsfPsAlSxVI+azIIEfkrkFcaGQAATQ1SAhuTyocJh/
	 TGkvpnWM1H+N4UkKKN8K7bexfv7Kpw9Wbki5JPG4PWTo2wq73EpXfli8SjJD1gisyO
	 erkZ7q8tjXTAJk+HryBA3G4LlVr0xL5qbFzLsZvA0/1IQu9vmk8+K/IL+BlpB50IY+
	 CKURCdOtIFCcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D32FC02198
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173906435360.18579.247009770079933461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bca1d1d3d4f11019e2738cde83804c31b7437f80d282a0168927b835a730d4ba
Date: Sun, 09 Feb 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739064353
