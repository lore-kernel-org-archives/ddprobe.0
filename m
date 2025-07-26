Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8657645
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753511393; cv=none; b=ep0P0S3rTMt9GYSVCLIcobbmtWuynQ3FSaou64QOlOqR3v4ODWZ9uHesUVE6Hn9FVYBuYkEhd6hInzs2UPUZHXP+/Le5cQL6oPUsS0Erg1I2Z3u3/1G1AjmC7NL1PBP3oINgeqb1/Pmf/Qa9bzma6PMTAYPpG/zALqw4ECSv/fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753511393; c=relaxed/simple;
	bh=oKTdBHYYNzkkwjxz895Hi+l4+0epzVauWPrRPoxWWs4=;
	h=To:Subject:From:Message-Id:Date; b=EO/K8ifGtU+f+UjvSeyHMEaezJbM2m85FwphaHmVoD0BAA0D+eKnTddw1g3CVl1OSG2rLiu23I9bmh36zboybRyWl9sZgHPvlRB2hP3pUDLUEJf6ia62tIN/VZnRtw8UBkx/d2cqwII5Gq1i2Ms1dXDZ6HZkwkjIgIhtJzul7to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NU9zaYdr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NU9zaYdr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D67C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753511393;
	bh=oKTdBHYYNzkkwjxz895Hi+l4+0epzVauWPrRPoxWWs4=;
	h=To:Subject:From:Date:From;
	b=NU9zaYdrC4E4o/fowzwX/W1Oew/9Ic8yBVWRBd0ypuVl0u6A3o95FEJaYrXbomMtr
	 F61gubd25PxTAwY21v6iMl8ah0ja5OnLTZ5G0QCPtk3mKe6Picxv8IHSJAA0zsbjIr
	 0Jm+3ox6zBIXj6E5EsHKVYEX0tR4Z0RFHYrBCCfQuDzv/B7ZxbwV5RR9ZUikxKjyIY
	 GsLkf6H4ZNBHK9ldvEz55KcFysdRv+wO4596qizfoqw3qmwggN0Oz+MsdCvM9vbRuE
	 VEzXhJ/rV43R4PxxCWX2wvuc1vHgmtlTaIstFRePDoQDN9+8Ga6QB67ZrvGbPVBeU5
	 7DpoOU5p1dI7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9573DC87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175351139358.23588.16286786628559852521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47c9d2c16f5f7f1714152a3658177d664a70ec5194b929c72b265528c72f707a
Date: Sat, 26 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753511393
