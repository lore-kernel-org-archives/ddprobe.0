Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F1D2EB841
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770315234; cv=none; b=icBvw9qj2Y/nnCUtsEWwGXtTpraMgXw8/2VL5XVBB3RFB+kAPWZaavY3Hg9MJsWXPrdj+5GqSy16Lqkq1xjUHXRSI0h84ZTyNEkqGx+vCAUxv5RcmBRPD6tSHaK28Wx1f8h18rvimP8wX10Emy4YrkpwX3kEB1NAE21gJIGPBZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770315234; c=relaxed/simple;
	bh=wh5bdZhk/XZNaTnlJGfVZ3cN+hFrF4RkVqVG3yNUg6Q=;
	h=To:Subject:From:Message-Id:Date; b=dusDcllCDdxalwfgEVSRnu92IHCHNiLLxHUvWLSP1gBsG1IUAa1u6Y63V9EyvgkqjzRNkHipXMWmK8Bao6zDRNMsCljnkg3BTw1loStFO/Qt/idz4qrw/4nzhJinvFM7/FWDpDREKlSLhI3q22w5fAmxZxIkqh42gdTsyTXHZMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sRAvHemE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRAvHemE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6514C116D0
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770315233;
	bh=wh5bdZhk/XZNaTnlJGfVZ3cN+hFrF4RkVqVG3yNUg6Q=;
	h=To:Subject:From:Date:From;
	b=sRAvHemEoYk7RdGKTCKj//O0Lcp4p0smThDqvRh9vkJzoYI/muCczLJOqaG54amzk
	 UYFcSxWe098xcz1RVzrKnMcO14vYZDQAltvwwlxdgWmkSObZAr+RYkqiP6+JVCNMUO
	 UGgWBe4rC2ipiZqtnkByaRP/2hezXvUQUbsxWWcMqaOEeMSzTZfSqZzcjE3YpskCNd
	 h21yiWdbFtHYnvfs98aA/QZo7Himc1SZOXEyV1PnpaLtCV9jSOwMBZWloc9QL1+WIs
	 azwuQz6JIKnBCZxceX+NaZ/zduKl4Scl1/OFaIDD2lLwkK5mm6zztIK8Lz33OlDIPk
	 C01KxdCpvg1Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E54ECD993
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177031523359.17705.16257204241526059403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91738638a2295989782aefd39eceec7502db02b3231667bff5f4aad10cd412b3
Date: Thu, 05 Feb 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770315233
