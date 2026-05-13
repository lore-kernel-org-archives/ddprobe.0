Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDE22D29C8
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 23:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778716234; cv=none; b=Vd5xCyPYD8vkRj8O7NHDDiFmrus9ntSSr8vVauihd1PILdKUuhiA9jgL8myIAa1Lnj/7t9gf1VYPozdjWfjNjwViHvaW5REPL3xrL9fYxCXqJpZcJ6pLOoJX606NH7UyhH2+Et8obqbeCaz6rACtdbe9QzrGQ77KiEH0UijFOeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778716234; c=relaxed/simple;
	bh=CbOGWH1ha9jnkdvKPmx6qO5Tlno26zemlnEtywwENRQ=;
	h=To:Subject:From:Message-Id:Date; b=JzDAQgj10MgUnecGMCVRmykg0/OYsg0NbAMuMBEpsmbsh9oFSl3osWKSmyD2GBa10D7ZvccITN7dOmcAcilkk60rk1kOK8dYKCpMtABZBTihnsZtrF1TJ7TUwd8b/zAnWhstB5EEurmO6hewnvnY+wLXiQUSNuTQYnRaCRUarRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5wzPeOO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5wzPeOO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20C9C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778716233;
	bh=CbOGWH1ha9jnkdvKPmx6qO5Tlno26zemlnEtywwENRQ=;
	h=To:Subject:From:Date:From;
	b=W5wzPeOOSkTe4BTQVwkHN++83P/v4qNgLcGxXU6y1ktNgOtTAIeTYL2jja+8aebtZ
	 BFa0SSR/muJYFL1wlcmz19Swzr4hKXtB/Gy7I8VJy1NWER+i3YLo/TGLAoL02oXo12
	 HI1H45Cp3iJfM4wcaXV04v+8Es5oSmIQcQN+SI86Pa25RGs9vcenxvjw2o0MhFBGWG
	 CJED9+MXL2r4TRf/4+Sm1L6ttdP+lHaKG+AdJJICZBDU77vkJr+MujtEDkyDpVtjee
	 TwAV0gOnjm6KTqP4lac1s6zJMT6o8iDSYdpckf0kIOrRxjQlIfPf+Nl9HJDbnJ25Ek
	 l1h25CvOZ2Odg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2453CD37AC
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177871623369.31083.4995829993921058916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77bc88d93aee0ae03c05f3d40f26d7e69f38449885d60f826ca4e35da9bc534f
Date: Wed, 13 May 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778716233
