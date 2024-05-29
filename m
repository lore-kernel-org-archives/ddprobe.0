Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6721B13B290
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 20:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717013063; cv=none; b=mp0xPuPcT05NGKgu+vyCxZo8Yafqb652/65wBqFVzZEEEgenM9vnPxgrXjZ0duoHsWBMBiKFM3t63ifMwWUCTHhFQGFEbHl8KDrsvno1NPmhudLxPahIxWRQ12aauyterZGM35m6Uu9X4K8V5v9unebYW4sBOt02j/NIOk2nt/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717013063; c=relaxed/simple;
	bh=J65Ubm3m2LxRCqTUrXDmewL4uvY0mJGdmPj8/gKCTXs=;
	h=To:Subject:From:Message-Id:Date; b=e1sJsirOjrQKu7qR8rfs/b+LHmAVYAROuQciaLg2DIKum0i39g5ohZxa8TMosW4sVyp8EKPDv8PkujrzNhT2mH8XzFoA9BqZhkn4C+nX+6cYDLvcdDVJ6ItQP4i/HIEPazvx9DvqPbohv7bgeodXJB5/2ggj8WwLUewyX4aPCWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nFOjwfjk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nFOjwfjk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E065EC113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 20:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717013062;
	bh=J65Ubm3m2LxRCqTUrXDmewL4uvY0mJGdmPj8/gKCTXs=;
	h=To:Subject:From:Date:From;
	b=nFOjwfjk3scMN/Dkr3LR1LUTOXLoupavhN+WQ9YgO8i7vVtw0aTcP3AbNb/PkJEmo
	 lMWLiup4YR5wCQnf7yq9D/vLnO09xypXYqQNzbWWutPeI3JJD2PB66USNOWB4HuNAp
	 bnZ0HRiDLTpq6KMBkPz5aMq3Jz7vCyqRLtj3ceGY7IRGZ4NYuTPMPv+74M88XydoUs
	 nVCBqq9Egi+KyHwwkxtgyu0tcrBzTfmhEiEsDQytBh29hcIpEdR9Uh3MLw5AcuSyBR
	 okuU1NtnBsuDJ+Zr9HFFIZa2kKKi2DBrEY53/Y4GMdCcFYlyDseXcAcUxCyfYgE2BK
	 +s6IcO4CsbCFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC0E8C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 20:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171701306282.4797.4869075203230038194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 396e6327789f6b0592644e0aa87105f0eac64b4988f7befc52dd7c4f0b527a95
Date: Wed, 29 May 2024 20:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717013062
