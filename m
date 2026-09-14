Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC2533F58B
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789410034; cv=none; b=Tu4svN4mUnj4F5dMoqLYYHsBIu3RQPSy+WhQ2jJb9Cq6tX53PfVktNf4V6NCXIt4w7gsmWllSSIeQZGa1aPJqpaY/bN4jWDOSbnPZBksJCG5G4O1VExrKDsz+HLpJ6VJPO5ZOqsIZlMaRNB6jVhXOOZ5mFpT+w3X2XPK9/fryB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789410034; c=relaxed/simple;
	bh=VwO4ZT/2uCijvz5knGiPwuBV1BRAQ/+VK/x7eNHSI5g=;
	h=To:Subject:From:Message-Id:Date; b=jly2k4csUNPWZ3Vb/A4U2DzhfKCPtckndVVal33R49T8qocghgF4wqEsqPFLj3t1bzdNgPyNX8dye3DxbIr6vNnIfBYFZk6VpvhnAcXwnbt7rUaH0CREzqsiXoyagk3uTPRzN5pgCMDolPfg24fd5siZ9ZA4gtGSOP5D+t2Faa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaByaq/j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaByaq/j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D356EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789410033;
	bh=VwO4ZT/2uCijvz5knGiPwuBV1BRAQ/+VK/x7eNHSI5g=;
	h=To:Subject:From:Date:From;
	b=aaByaq/j9SlXuydZkixCQl0rYGYUtcohB/hTuXlp7B+qTld2iBTVohVgmUEn/uX0j
	 8p66imnC+BmhzonWtg65vYAb9tdgED+Vl2mQ+PaXVaunDd2B/Sp1EqMcSEgWED/rt9
	 il3jCG8mMynKOeq/nfecvAcSPc3XEt27h3uvgmMYY5JQDCX3Rpk4YIzSRIAumIND6+
	 f4c06kTo3mwOcGcM0eM9i9BaD5PACv8eW0fN2My9WSmhj+YiSbuxM6LC8m/P/LycUY
	 h/IfGWxU8irBzDchC7D+GmfrhcjJz/rCIIzPYDY7LnSHNpBswVpmVNsfWFNyJCFgvD
	 PJlK35y1CXpNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC82C88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178941003369.25065.4922971785895966023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de83ba0a0c9bbb0db2cbbb71db1118cb457c04e147454479653f1dc1c08e4226
Date: Mon, 14 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789410033
