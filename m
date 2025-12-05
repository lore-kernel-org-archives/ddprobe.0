Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E34E4D8CE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 04:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764909174; cv=none; b=QVr4eShAU4uEZQqpcyuBrtdIHm8/GZuXBo2AP3ECCuceHAPZnJno44OyzourN3NPoNv1mUnwEG3dy1dg/kHiUlGc29bzcYF0Hv8GqxmY+nMX03Df/2FlkXq1eGrwlFaNtr6L9J6Myv+RX9h+A38okudV8u7CpLPAdhHd3qmgEJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764909174; c=relaxed/simple;
	bh=zg0Jy9NrH1CwSAaUM97Bqe9Ow5uZqotJ9RpdMqvU8KI=;
	h=To:Subject:From:Message-Id:Date; b=GowJR14CyrMuhuDfbhY1MTYNPDF9lUrI+Qve12XF2+HnowMoNEH1peYO8e5we1WfDfI1UKBO93DWeeLRVX0P1k1hGG+AiqJEW4q88vJA+KnzAL1GZKwzvENxhdYw0+cTg69CxU18LByygcQvkZpdR33wmPfiOneJGTVLAqdaO78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fAio6IUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fAio6IUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACB0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 04:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764909173;
	bh=zg0Jy9NrH1CwSAaUM97Bqe9Ow5uZqotJ9RpdMqvU8KI=;
	h=To:Subject:From:Date:From;
	b=fAio6IUgjOoejpQihXAgbIIp8T3S6VNww41Sq3XqixyrFRl0/4awXWxJtVg9gEn0l
	 N5KIpjYnHf6ZFtcPByn2xC1g0THekXvz22zhhAehztDLYpmS1YFCSAfRjHMexIGAHj
	 Z99O6Zv21qf3S3sau2p5/7AzRg3R66Rzn0Ru0F5CTJ1qENLxw3R1pHLKkecfNu7lDA
	 kmc86BU8dgRg8lIAezzyIkzrRraAL2sfsBeqS0sX6kwAGpFgPMVYN1TLvy/iQIUv99
	 Q9FosivXPGANLArILOb25lDXzVe1ewWMzUqmFAspX7U0xNrt2mBCrnDOlijfn6ZQ8x
	 4MUZK8Qs2au9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D79D2CE1F
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 04:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176490917359.22012.9860986575843951135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4078985c68b54769dbfe1c2237a8b7085e4ac7a69100ed779e24713caedbc7b0
Date: Fri, 05 Dec 2025 04:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764909173
