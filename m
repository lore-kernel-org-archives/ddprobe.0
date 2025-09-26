Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4CC283FEF
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758869994; cv=none; b=E9htgxtCgPcJiPhHCNl3gHS1vKMDfp0k6nZ4o42NgJqs19MMsbUEboCJRghjWzxF7DNDWKWFq2M80MsdNPGpDcy0PIg0UBhG30oPuK7SMpJF3He13pmlnjzvbIIP8zCxo6M9QsIO1rvHhjiVynkF8RdRK/1U8XPcC9wjtWKskP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758869994; c=relaxed/simple;
	bh=/uPBUgMttJvtL/PeTC1hRcUrSb3M9UWzipCCoFUxgwk=;
	h=To:Subject:From:Message-Id:Date; b=Wp8+XEirJLbXiyZf4XmGRqH3z1TT7q7zZLKXAb39fTtr/OieXtUc1FWrvx88wDNxmEITXwPsc2JUzUqJeIijS5cU4RJcsHpOCDTRj9J+NJM7IIsdBK/i5fflz50PQrbEVd+QIlCdIYwKKA6dDmSmjaFhXred11j2o+5mChCa3WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRd1zmfi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRd1zmfi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E7DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758869993;
	bh=/uPBUgMttJvtL/PeTC1hRcUrSb3M9UWzipCCoFUxgwk=;
	h=To:Subject:From:Date:From;
	b=RRd1zmfiXV2wQEonkUqlejVgi+iEmOvyM4gznBfIDt9xS2xBqYtNApBicZvaozvuw
	 rSAOazZwhAEl6gGzbOdN+zFZoqijkRbhxp3Ryd9No1qYxgvU5k6sbLSFMQycraNfAE
	 zUgeihKobT/jNNn2y8MWnhbowRbltCIfJ4MTjrXWLVl1/TNCpM7RAjmqZp34J2v0Hr
	 9zWDCVb41Lp12WCaRxXqFvFTh452PAPD1dtuQEp4a84mJb3+pRE+6nn4IBxKCd9Cx/
	 4gWmUF8dHmMg1toIFKuCSI68nFg6TWWxQgKqIzE4chk+/0H0ut6t4VkTUpIUiu+/0A
	 wsm1A6T7Iux2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92213CAC5AC
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175886999358.2837.17967344279821872576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a2cdb90d59760225b19ea752dbff32c0484757bb3a71678b0cb0b2cb230f735
Date: Fri, 26 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758869993
