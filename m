Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC2A126C17
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755017994; cv=none; b=alvRnM+Aj2uqrppxlxegRMZuSlmmNx21up1RcXmWwcXJxagMOL6jvFl99ZhFjw9c/Gd9m6u72NYjtjmdX59iUk6PkEziRJx1VitpFn4ikp3ORUT8/oNhXK0RzganaAIRm9DawLSozjLOynkpVJnjCN5w2UIRoQA3c+qa9Glo8Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755017994; c=relaxed/simple;
	bh=B94hM0xkZ0bOMS/0tZs9Yx6iUS4GBvqCYtgzhjVsBEw=;
	h=To:Subject:From:Message-Id:Date; b=RjGrZWtBPq8D9jfiNlzMnCD7pLI3f++nWQpxMIXWO2W0pOryp49ILbONbD8LMvT6oNDnaHdo92ng46Xxl0GFD5pj0811A8FNVg6HNZbHzYalSxZTR/LgdVjolIQNLAype64hm1QtGaAAxHBmJh+QxtHq4Oq3TyE/hIyRfn59yqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwhvTWcC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwhvTWcC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1211C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755017993;
	bh=B94hM0xkZ0bOMS/0tZs9Yx6iUS4GBvqCYtgzhjVsBEw=;
	h=To:Subject:From:Date:From;
	b=UwhvTWcCanCrJej4WAZEmUlJXw4WBNMRmgj99bs4RofLzIXgr9Uox8gY82w4S9gBe
	 m9zezzcYAKP88LQ/nfP52tbPT/9cW23E6EsKuxPy8o74Q/35uqrGwLCJbLT6W3NIqJ
	 9Mi0ned1p8bO+MsoMiU5CqBPdJZYjXwGvFDYO3o8+/rVRXsX42XTXf+vTXMxUQSyf6
	 +iYnYk/PrZ+Uj1J8IvyWv/n0Wt5ok1g/ziMTdE7X/1lOb7gA0KNExpfmkp/ocKD+gL
	 /tnRr3An7TYW7VpmD9kGMVVr/TJiPCMHmbjpPZRuBOn/Mf6z/izA0x8iLB5VTvfhV1
	 FKNfZ6iWhlrqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90230C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175501799358.17465.17089258004166125068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a2254df02d7fba757ed3a9d01e9fc47fdeab78e297a216197dbc063073d791c
Date: Tue, 12 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755017993
