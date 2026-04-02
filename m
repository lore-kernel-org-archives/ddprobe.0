Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A4F2F5485
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 13:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775136334; cv=none; b=fnacy1SGHVSMCr4dbBK0Xkp30XSXCCgVHY6jDYx9ItDWRJBrF5wo5HenSCUcQG1iY/rRBO3AjI9wsUbIVaEgzrOEjatfHLmBTe07PW4kmr/0jJ5I6owBfXZldKnclvXdLX9DK3dzh1A1z6gvKG5Hw522z50YSz6FfRiATDtLDjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775136334; c=relaxed/simple;
	bh=TP6qvOknIbrAxVdLiqCNkcToQxlp6DIx/lrOUZcohS8=;
	h=To:Subject:From:Message-Id:Date; b=PngPv98VAK+3C7B6QPIJ8KHcM+A2jq4StARe2ZKQEI6eFjtSaA6Kv89d5P7YOiNygKY02AKhz5HTkwOkXSZMJrX6fvKJF6QukWSl11dUomCNovCn0/RRpEswpOBxW69ETqzX6rHUtWs3njCBs5bnGbCTfRpNFbF7rvA+Ey/Fzbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jc7LMgXd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jc7LMgXd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD173C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 13:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775136333;
	bh=TP6qvOknIbrAxVdLiqCNkcToQxlp6DIx/lrOUZcohS8=;
	h=To:Subject:From:Date:From;
	b=jc7LMgXdSnQYMutPlyF5wf/Rp5fC1g7pRV2nNysBgaL0I8A6iHH3JNv2HiZyGYvYq
	 fq7YD4/GgEJmWB14Z6JVF8215VHckkChCpysjI06bZd3qQArkwMXjcFmeoZMFJGZCx
	 7plm69fUDpsvY5ize+TntHY7lNoLZRdBt9kXdwX5CiduFtp1R/VF/UBveS3g5Wqtqj
	 mnFQlFnNUp2SG3WWYe0HIAS7iGfvQH0iVWe03S0+pr/bKL2xPTGSo5vFLgS8ndHfTx
	 FSjys3fZyR3KUmkYZ+2/At6c0OGsP+/xaBeYvHmpVNhlzTYi5CA6G+C/Fd4MbZITg3
	 IRlTlvts/LVgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD18DD39421
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 13:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177513633369.21098.1279779309148408029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb0a2d239b073be3f233dc829e5699d85eeb5e0d847f9392769cba954d9de704
Date: Thu, 02 Apr 2026 13:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775136333
