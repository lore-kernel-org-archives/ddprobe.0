Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22115366
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757519394; cv=none; b=pGJaGi389yXOx8cdBr3Gx4slsT3F0lGFTj98nKWUR73zSBm65mvB+ydNLETidWy2Ov+vwoUcBUzqBp/79B6EZWLqKlXzQVmvhk2rJmZH0i9Rhva1v3KNb3ifX/0S5THqHMdMNdfykjceyzwmZ2GkUNSScsexLDdasw5vSBXjyao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757519394; c=relaxed/simple;
	bh=oee5l1qekmphqDs+7W4qL5/Etu8Nv6Qk8ALYyishyis=;
	h=To:Subject:From:Message-Id:Date; b=R+d2qX+ryMFU174L32p5WKsx5xkrjSrMYBTiPVCov6Ybluy3icbzGeOp53whJ7VTxzdgp9Q2ufzhBGYgk2NmUOP+Q5vsTM5FYMWp84fOmJfBKz3YfF9eSQrIdWCh8vk8fs0widsYHaun4ew8mgP2XZgPkq9EW2770LHdII0tjqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVfqBvbe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVfqBvbe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFFCC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757519393;
	bh=oee5l1qekmphqDs+7W4qL5/Etu8Nv6Qk8ALYyishyis=;
	h=To:Subject:From:Date:From;
	b=jVfqBvbeWQXkadfVOWWwHEE8nDPLuefH7DZT0LIwz6/rvOB4zTWMM4NKtA/nQ2tUR
	 7QWRgoC4vgkFdAqB+Ho9Y10zKRtToEDCibuuaSM/C+L8LnKxLLnpRHJdOLmHawHe8M
	 yOBL+1Gvy39IrgdMhVkjh/7WU41+xtI1GOE+XUmM9yg9IakmQr4l4Y/QcRypfjM94p
	 JJCaF0bc0sZvFeFdhCamAvXwgeOqZvlUmilmK+MCRZsSm+jkBI3NZFUUH21paEdXK4
	 YJlX7WMyIqAJEtfs7ccDfiYuQ+i2659kmAfjOJ43EbB27CDx85Bwerbzt4OZYFqsrx
	 pWYoVXh4SoDhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF0CCA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175751939357.6954.5678407086487728316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be07736ed089ae08c61227e056268f4b9b9b115c73c03fa9b130759a3b95aacf
Date: Wed, 10 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757519393
