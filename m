Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDB9234984
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768866234; cv=none; b=orWOYyPBwx0WyEfBn/y5dkyTVMvFSEcAteL+GbikK01dHZCjIlH1aytN+3OSZRGiPI0icTSBepJi7lRTjgaIz28oLMIm3WZwdnFzQO1CMxL25vGehTY+zKQr8JBQDWSKRY8HV0AKDcMhvPD7m1jlsmcNLigizoMr2BY3ZZ49Wj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768866234; c=relaxed/simple;
	bh=EEiEtr2Jxk6EQCuCi1DGSitwoQ/e5Nluxivf+O7hDPU=;
	h=To:Subject:From:Message-Id:Date; b=SLv1myD37wdlZKMZ5zSxfYVrXptMTzeCRptSE/Li1PjB8AO4Ygju1LYvSRysv16xx0uEiA3kr51QmPjqfN/hRgTjqynx+bAsFTNIVh9eqtKppTMHku8Vre0WfJ6XE894AQdmguXXgE1grkztBdDg5FfQ8w5TwUjFWdfPau9f9Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWHDrJ34; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWHDrJ34"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BEFC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768866233;
	bh=EEiEtr2Jxk6EQCuCi1DGSitwoQ/e5Nluxivf+O7hDPU=;
	h=To:Subject:From:Date:From;
	b=hWHDrJ34S27GhmOfz8FJO1gfNzWd5CE1ORMxyOcgPf/3M2zXSNKlMA300KlqawfTP
	 7qb0m4yMt35pyk80G+hW5GBkWS2nQcyokvup8opoeFKWpu/jxoTEwhmhOVr+lHTrsb
	 GBIBptFvSC0FG1pYXe5+IoRkzt9Hai1hfQkNQv1Vi8Lt5ckmy0rIA72TWel+MxFPha
	 LUeTb92BHP8YA18WEwLDcBmC3T/hh+Rif//vwfvJ6SIpHDQJ/6/jH5PAwKI3Y8/j0L
	 K7BMbhxPz43CorbXBYk10B6Q9ftbCL9OeQVKJQj8zq0dCkTeMlMMHridOUanXyAOx3
	 pMNRZhyqRxIYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF8BD2ECF6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176886623358.8866.14013029775755587669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc65da14c2c40bc305acae97f5e5124b1aed249a29be7934854f44ccd573dcb3
Date: Mon, 19 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768866233
