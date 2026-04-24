Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1243C2C859
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777009654; cv=none; b=Tc4re3OTcZMpfm/HIPQDiNjxtVVc1TxXXVWxIHOwKMDoUkR7MvjAip8qSAqr/21TyWNffoaOwAWNHnfDJjkHBUygNPIy4UuJdgChVgvtcgzaJ1oOHz0GTxw3ftzVtG6FVCaeZdTbKSC/gKaSytqP/veozj28iYmrQiD5nvyM8Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777009654; c=relaxed/simple;
	bh=KEAV6zbiFtCgtJYhu397izCgo8OryLrjBO/COPZoW7k=;
	h=To:Subject:From:Message-Id:Date; b=NeqpPjX6VrX3MGoMQVFLahbN14cHmAMPG+8hyLG3CLcmBAJQ4c+wRGSv711I/dIsZlAzUufN1C3i6+0cCT+Ti3EMzqZpRKfstVdGA1jOEZOm7o40Xt+0150evFe46J3R/TCXbBesWhtRgv0qptDprIT1sYHg5qtyl8f+Iy6lKbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S8c6XfIx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S8c6XfIx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2201C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777009653;
	bh=KEAV6zbiFtCgtJYhu397izCgo8OryLrjBO/COPZoW7k=;
	h=To:Subject:From:Date:From;
	b=S8c6XfIxcoNS32mdrOg7SEGynhpIvas9uL/osK/xtayoL3U7bWJ1KpEKse0hSEr5+
	 MuZDUrhK/1AUlvfVDRGC1IDAOLKTrcTLGNJLj16Nj7LkJBA/Ljoe0HMuEFdnFPAAGb
	 5A8/dPOvCNFYQlHN4v32DzpyzkaQ2ESXNPB+BiRUS7fkuphjEcoD3sNKBE/TnG3AVF
	 PG9eKyspzr11EgwuKNJ9eCtGKJhMTNLhsZDve+PeIQY/16lCG05ESzDQdWPwUgAOuk
	 2csKKdyFhiv3EZwFDHXaXS5oKfC7cl9KpZ+OvccmWBUf6ZgA1TBWl8U/l5948zn3Zq
	 w80cOqlXOFNcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDCDFB44A6
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177700965368.10923.8297950448401097364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38af0dca5def9acb7915e920d54bf50d0c34e107fbefb3432dd2e2abe4e4e682
Date: Fri, 24 Apr 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777009653
