Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2939A2E7622
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 10:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764756774; cv=none; b=YMMXMRjuMcW6fMP55VDSC/L6/I2Y4p6YVeCudVfbsE86Pre9yX+Hxn40wl0Ry+Egr3j3UM106bZ+a9mF/PfrUjhLyGqP85nZKTXMl3yYQSVn9vFOTG6Mb03TokWwzlY3ppbABLNaBkhWoAr2mH1fZ/cb8rqjPJ/cnANjwaoZwvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764756774; c=relaxed/simple;
	bh=DzjYYVFxdSLf30uozZlSVtz2hKtQ2lNVLs5wvYxoiwk=;
	h=To:Subject:From:Message-Id:Date; b=eJ3dQczgHmZ4nrqfNqU37bybevqlUDMzYEV233qE15KfjHXQRZf2aGPtXsF3+0EZBPfY7tCs3JPR5a7EsMlFBZqyiwhmEtHPH3xKrmUD23//hJCjOcZIylaWiDIyZoInWwrt0vIc+bHC9Q37tHzTapi8L8siqRgAgUXJsgrbqRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9g84t/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9g84t/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B6EC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 10:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764756773;
	bh=DzjYYVFxdSLf30uozZlSVtz2hKtQ2lNVLs5wvYxoiwk=;
	h=To:Subject:From:Date:From;
	b=a9g84t/ldCtoXHFjFrLkc8anGdD2KzmQ9aOAxoiIdpPfq9Ap/9sTv2eWYU+V8hqJZ
	 eAGj8u/EiSGEXcDAk+fwZUsglIu7pdT71SACb5cvhs2x0x9Ps63xqStaUmNMOi0NkW
	 fllDxFDWAAXj1jkit/8/D4xOCGfrz7EPGxYJMCxAEmG1jaYrgOijLB9EGU/UXYvfvJ
	 o+ex2gjjKkX61DVHu5a1f3HCNHCEi2TD78skK+sn6HyQB/5/kege0o4DiTIkkUCiRm
	 /Oghg1zSbfW5b6E4v9qIiRjxoR9RcyB38rC3hGRDFhuSe3I2Ow3knd0A5+aODd40bN
	 DfqxrFLZOASRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912B7D12694
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 10:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176475677358.21803.10390410146257554242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47e8518212e3e3deb51dd5bed35da3600291de9fb0579e0bc072491e9ae39ba1
Date: Wed, 03 Dec 2025 10:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764756773
