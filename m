Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFBB71632E6
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738962954; cv=none; b=WuF4Ayui9fATtGEjPJSkEAc5Sgm6lSAyAEHnWDOib2FubsPyyHABBTtmZucFoILDrQrgl0u7Fn4M3/wmhZv1BkNnnSyn5af3UT23kHdSnsupN2xpV2Z6bTILeojZpGcqPHwij+AFWthPFYh0BROD01dd87jcUJeR2fBVzFRHuog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738962954; c=relaxed/simple;
	bh=Gb27K966fYTPZScjsSSwEDQ0sTDrZdhZHYDfpoMCmkA=;
	h=To:Subject:From:Message-Id:Date; b=JATMiopjf4LqNkjLMR8jSnX+eJxAir515gAwi3SHBXIgXzyt1OZNxJuZYnMrlam5uDefegDWFK4irWtE/wwMTzhQQtg30N/zOp0vM1NIumYBifr4Idt4zsVkt9g4HNVr8isu0EqfnYhrJBvD8UcAsIhiOtm2Oi57NU25NOM/kjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWua//9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWua//9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC177C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738962953;
	bh=Gb27K966fYTPZScjsSSwEDQ0sTDrZdhZHYDfpoMCmkA=;
	h=To:Subject:From:Date:From;
	b=XWua//9eJIn40DJ2xBIW/9h01Q7egXHudcUyBoJkbbKHrFnaW6crtlUpxWOPZpTsP
	 N4OAdG3Qbx+4n9eIVF7Gk66n0sgTkedyQnmnuB4iCQxjOQvNFVj4Tvravr2q8PqrJF
	 uVKdhQfdKJCo9V+gejKeiGONmoeUIJ9Fuz2wJpM+hFFOviQDvLGzVa4floag7DqjpQ
	 ethNRkcxotVXnoN0T6txP68WLOiV1aC80DcxwMzQKs58Iaip3x9oJoXz7br7159czn
	 HNqjOO0b4mEHV/BxIX96uHuxIPEatG31pw9pdG3hnXykwFROUyBUHR9jxzgj8zyjKj
	 p3xxIdj3TgQtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7654C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173896295371.12122.4452449363508490595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1fee9b6cdd546a645e3f73844ac96397320dffe1cc9bb0f7f1edd0224eb4414
Date: Fri, 07 Feb 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738962953
