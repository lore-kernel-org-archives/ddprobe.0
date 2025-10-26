Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0BE423D7E4
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761469194; cv=none; b=H6hvYQ3Bd45zXoJAFAjaxIN+ci1YacpV9FagNnO0vSuES34vBZwHXiB/ckqM/DiHkvWjJGcVQUIkwtH+Z+H2mFnMED8VC2b5B77gQnbQKldrz9puSzo+/Wmy6pG9eqAlz1hT4BpBH97JWqlaCWdLjTY2W3mcZIykyInWCjXDPrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761469194; c=relaxed/simple;
	bh=XlgSOQzSyfDllvUvOybZh86D+PMIoSEcZe22cf4MkmQ=;
	h=To:Subject:From:Message-Id:Date; b=iFQaovcQNb6zRq+tTEa9GTgvIhh60ECyDXHLmBFmF/WHi25IqcvuqIPigjwM8aOMxZpizO6nejD/yX/5urquYxmHhfqsPXcpruVLNtrgKdBJcxJVWHj6eZWU9rnZ7zi/3maWyr+3fezJXOLpU0ARRsGi4kGyK8mTZUzcCEepSK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElfVdFYg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElfVdFYg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D574C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761469193;
	bh=XlgSOQzSyfDllvUvOybZh86D+PMIoSEcZe22cf4MkmQ=;
	h=To:Subject:From:Date:From;
	b=ElfVdFYgVrYrl31eujm3I4IR/2eX9BC+lB1cMhVbys8TAa+AlOB1bjTUdvDj2W+88
	 V1hcFk/6DpOZuugodbVLA/IqZjAsi5PbbHXnHnyaLDkT+Z0vt8CNZtGiJpRUPeYHvs
	 U/AXre1yknHfRjBQaVsnmN7RweLePU96UzZk2u/M0rt7+yjOInd+h+F+pC9PyeY89w
	 VJssipr2GQ1VaWjTxqw6mc4t77HY4tj2WhoLnG1u431JqxXYKZ260VLPpXMYvhrE5d
	 GbmRv4ST3h5G4w50coPGnK+qR3GFMSLZhvxxSGTg6Vb+Q2N/Vl6UdsgxDa3k83MdKW
	 ZBcG+/er4Afhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFF2CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176146919357.13360.10250777937240951815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 136eab28cc44e537a6203444177713de5d46e0a142824cbd6ea158ed250120f0
Date: Sun, 26 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761469193
