Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32101182BB
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 08:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716107543; cv=none; b=atxCrEotCUCCMDQwa60eHPCGMcw5s1VKRwvgJSe5ZNuv23W2pug+QatiPkIcyeoa+XwfTtEcyUhV7k/kDm6QlIr6r6NNlNwrhrJ6pveCrZQBxw98wq4Pf8bu2kU7L7aFma5C5UdXQNEkPfJ1iUYRjrvplI2N9cl0AzMhcqiacVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716107543; c=relaxed/simple;
	bh=uCF6o/Glure9+0Ycmz+YXU8VL5TiPhH5hdGlbapQxuk=;
	h=To:Subject:From:Message-Id:Date; b=GKzGlfynM61jmXwDOUNnBFmfcGaed9VNPgodRxFXChdUW8s/7iQqc7Anjk0XzkVt09EsAQVEi/C4MWUBMb9M3gmXw4rQEDeREnKHO0lgvwbA2ilkjL0qGc5pbz1zvkVp0MT3dWIE4AC7WJc3xDrWZRRwMOrTW0PFRFHAuvfS67k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLbOR4fq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLbOR4fq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1308C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 08:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716107542;
	bh=uCF6o/Glure9+0Ycmz+YXU8VL5TiPhH5hdGlbapQxuk=;
	h=To:Subject:From:Date:From;
	b=TLbOR4fqNk8WKSCvbYS7RVCwTKzPomDOZMFyrQEKMqdK7zvIv5381TgvDUT9fidGC
	 OUl2kHhAsvbkwVZRdOT+nWxuxI1aQsBjXSuW7Un4BFBuQf5KBL5+lHZ8gvAdKSvIh0
	 HYyHa9BoFw0025ZGozRpeJR7PF5Ovwo3gLPPlstVdaA/YtEaI6oxS7gmWonRoPTAwf
	 aocZoyOg1Abz+SQCn18AxrKdYFMsx1Tk41HPUq42vONCr64t+yK3XyNrOTm2DNjnzT
	 /aRcm7Lcp90/B64iPYzy79qZUZJvVeSizT9S1IWFMuS4v8GFWjU2HpHV1Qow92NhXo
	 IwHgXT+h+ruUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBCCEC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 08:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171610754275.21619.18129949206423877714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80738ca55f8814c0d020d99dde683db5b1cccc54a42f6e662328a85c2c7e814b
Date: Sun, 19 May 2024 08:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716107542
