Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C55121C9ED
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747379394; cv=none; b=C0eUn0fZQY/NDL2HQPqziDWZ2hmJouolfLKewzQxMnYIYiYGBGAobZADQ87ZxCu8aRgYlsMh5UbZCQSc8NEW4Lh33JHpINKXOTAGstFYBq25v04pZYQFrSTY+6G0k0pcOaReO+e2IfWApl+pmJ27VIwOl63ETPcN7TWd8dELR84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747379394; c=relaxed/simple;
	bh=STcrV2hYZGciSeCjawl17iIn4VaCW5U5V8bM5YmRm+0=;
	h=To:Subject:From:Message-Id:Date; b=I62JWve/w8VAFRvpDEcgDUpZEtODJNECVl9nyBE5fof9E9a9e/hbd9cMM9ICMYDkETxmbGV4TSVFGnDfiW0TDBXCCQp2j1xKgeOxby3Qi2mPAdmkx7mSUpv4BZrdKeSHqAy7YgRG3QTt4e99Gr50PD+p8YKDy9yWeYgvJkIRs2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQYdZunK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQYdZunK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9ACC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747379393;
	bh=STcrV2hYZGciSeCjawl17iIn4VaCW5U5V8bM5YmRm+0=;
	h=To:Subject:From:Date:From;
	b=VQYdZunKsjWgTyI6vsV7vopiaCFesQSN9Fwsanh8aEx6l1QSwk59FSTxlUFXKovhZ
	 rSTIfXcY3jnsNHdWFIMBvLZQ9IsPGHXEBpRMcFUPQ6tM66Noje3My3Q/OKrPUUb+MZ
	 z6bxQVdMWNu+RIKYLeO1XLXTLYIrynREFgl6vNF/jAgYbNqpn/YxjuZ9FkyJ0kKykg
	 uKXpyZMzl0S9sEP+/bcHP4UnFpSDE39Yl6zvsP7BcN+sO3VdPW+NMD9KQOWCoxn4sX
	 ghuTscrTzPnyFuRXT+gC0bRNjAO1EDw3GgmnGoAvDGm97VJlWgzF8ZB8tn3CZdiEva
	 bgKG/kibm+upw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F241C3ABDD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174737939357.10769.16482950924375687250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94fdda83b527d0b2f564df25c1d038c1d2ebf9366e7654d7ad9d054c6c857343
Date: Fri, 16 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747379393
