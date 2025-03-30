Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7BE74C08
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743325194; cv=none; b=NpVzCKWE30TrnrLu6s2/xTAKgIhRk8V2hvx8QKMrIXtJxbwVIEOGfAZj2YNCshXRx9o/aMBCQcfnWuyAIPlx1rSCPmX5QPihtGZQhec7NQV2qcebXf568D/MLWukVGrmC5vlOO4Yddpo3u+CTmCXPug1pa93u371Hy1GqmPMZtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743325194; c=relaxed/simple;
	bh=UWM9mIQQ8Fl13d2MPFNKdqzuhHrRfpY1Lmvq3zN0YOM=;
	h=To:Subject:From:Message-Id:Date; b=LEby5HgvsJS/pdJiHLLvEHoBdKgNb4diq6KQg4bEtTs5OlOkUZvyr1cghoLlTUl1iqWSqTvihMsaEgyIPgJnlQ7ekKP/sStbpLQX3ijuQ46k0E6wXUdI6mW322Hxbfwi87xtwl/YRZrcQeFHjmuO/rQbm6dUJz83mfAIABHl2YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dRmbZtE5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dRmbZtE5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B572DC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743325193;
	bh=UWM9mIQQ8Fl13d2MPFNKdqzuhHrRfpY1Lmvq3zN0YOM=;
	h=To:Subject:From:Date:From;
	b=dRmbZtE5PSoCH3YpOx7DjWULa9kGFCdxMHJaM7OTyUgehuWMEvBsG1e8JqRwEUU2T
	 IyNE/I0SSBf9f6sQMohlPe/7KPLUzWXvRbdMWhClPT9oUK6YzRkcj28ykvKojBOwig
	 34gPORsNGidQO2Qfgpcq+7sxzHf3zYMG8XgY3U/0G1GBM2LT+JyV2RNaf9KHBohSbr
	 FdIKv3gMO/CZkyUyijPJlhU5Da2HmewjxyPFKlYyex4so0F8ITbN47bCSnPkfpoL6D
	 NP9VvEOtCJ2JCJJ3dD+zslqVvUprm/3iVccMCRCTkxJ9lfFc2oUkXe5dlFeOILLSuy
	 XseZByC4kcsyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2434C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174332519362.24884.14758656290208011040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e1a353a0edd69a1b81049dc7975b84c410215abb5d43aab989fd54002453506
Date: Sun, 30 Mar 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743325193
