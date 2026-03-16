Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17500146A66
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773628494; cv=none; b=h6A32hzphWA8nHyUb87DGIJcPQRtR0cUeoLr9vcDKqKiotzZ+AX//KJ7H+2T/DUQ0vUreKUwSlcW5mnKuzeL15Sq2o9f/AfqZy3vhJf1Zz3UtU1XJ3626keGTcA/yA8MKEUQUozEFVhBc9Ht05C6Mys7dh/qhn/zD7IvaMjEVfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773628494; c=relaxed/simple;
	bh=seoTctPMADEfi7LGlmqYP9S/6SsTPVsG4Ebqxs7PSjM=;
	h=To:Subject:From:Message-Id:Date; b=OV2dtIrMjnCMBUuRtk03sLfNWc0G2BfLMRvMO97UQnuDZ8nGUJ2TGedbpWSihq6fipePS6KADmfITsU0wY+/GnHea5gBLu0kopOM5uXSG/rRh/GKmTUs8RsHeYY9hBDjtCbMvFjj6E2PvkMo+ZhL769jZoYPDJJNL6K1axOraHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4Grj0vU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4Grj0vU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E10EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773628493;
	bh=seoTctPMADEfi7LGlmqYP9S/6SsTPVsG4Ebqxs7PSjM=;
	h=To:Subject:From:Date:From;
	b=I4Grj0vUYJDwwsix1NTVV7EZ6LQEME4cl6h/FP++9zXAipAxyIZGUQjTen0G03YFJ
	 jswGwO3q1vGEITetG8DajfVAtPobUx1/eBdnkR+TmuWncinVsB2ZE0IlSU4Mou5giN
	 8BC9jp/1NdEeCPAZArYMvdNnvYQ1GHms9bYbt3kEmpfmDKW8ia8PSY3yM2yKWr4aAX
	 UJdcyIUdecnS1GTVbpuy7m2tquYkRkZ4qlJI5aT/IopUPTchPg5NKmzMER0B/EH/GJ
	 ifpy4w9i1Hdeu3PH2RhSTs8YWd40xv4ziNtTJfqexcqNq+S6AP/JKZequ/Lgi/ysjn
	 izDucnlsdrdYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F78FF30298
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177362849357.13238.17701980947351549193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdeed5922ca79a9d5ab848aa6cff54500de6bd97335c0c3904a83329b82820be
Date: Mon, 16 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773628493
