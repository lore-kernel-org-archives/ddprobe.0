Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9AF1E4AB
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756864194; cv=none; b=O/T4MtNdZOCl8syMItnCzjhL8FEOhJwlL7kUPbpcMuxsUmVkLXNnaHuEzYvv+1eUWlaww+7WWi+7pHipvXkbZdjHhqh/e8VBf1bN035Q8LbQ8krrWwSsjnwo499eKCwtEeWxTc7tmOga4uKKZjsAfX+hKmROpTjCNK80UA6DZco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756864194; c=relaxed/simple;
	bh=uYO3sNcaChDAjAMQ5+OgdqHOyZN0xu3oZnGV3NNNssg=;
	h=To:Subject:From:Message-Id:Date; b=Ce3Wh1V6ssbjbGez4F0NjAqYcYln9X2Pw5HQXiD9Y//OPIbHZ99CcvPNDzKjg7M0utHVGvP5b0sHgH0wfU5Xo8X5hRq5UL0hcZPjNXD1fctCDGVYAvvL94vYqE8Z92UdyH53jj4HCaHftbAxvTRYmaMTZ9Q7LCsFe9ACR2AV45k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFcZWWVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFcZWWVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64E1C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756864193;
	bh=uYO3sNcaChDAjAMQ5+OgdqHOyZN0xu3oZnGV3NNNssg=;
	h=To:Subject:From:Date:From;
	b=FFcZWWVV2Gqc4Oxk3n9VoJrLQGR6Kkrxz09l/lL4tunSRzBPqflPgmPP7ZCZsWBIA
	 KK8K/zJ4pDspNdYpbfylfhtX1SUvRrlASEEhMgWDHgPzsOAcjBe32HSUY43l9dzisy
	 QHZY8mt09TBMGUrOmLa13v9N2KIXP5M9tJIijE00CfNUeB/73yuwz5jVARhU4iIAcb
	 E2BxHqCGneH6ITJcoTvyWZqcWJcGvqTIPYDM2ZV35bMNHNAdkCVSd2JtdH/y78qwNo
	 LmrDYNF8A4h49+O92DpzhrauOTobkAqNY9H9dvYVUkZapM6KCUva0MfQf6zOZzR+tq
	 M/EtNjf5KPGwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB3CCA1007
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175686419357.31529.17315849571186105086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d02c857a71e1ce2bc6430840bcd952066c3c1ee825c45cb781836d765a72a8
Date: Wed, 03 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756864193
