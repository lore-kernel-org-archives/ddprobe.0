Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2835D14375D
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721941554; cv=none; b=nQBW7CnD4QmAYSqdZqvH38GGezNFm+bnb2Z8dTDhrfwM468abHr2CrsIqUNYJOUwANr9jxIDFLVEAw+D5fxMvMN1ah7gHnmcZNXjCmURWdei2NDomuhAZkUovjTILb/ykM7liViz6TvvwEd8lfW/WSjVZD3SOZEmqMSTMRq7fOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721941554; c=relaxed/simple;
	bh=J6LYul237uIDiWLTcnFAbO//6MxHdNfp+ktCTj6Q5is=;
	h=To:Subject:From:Message-Id:Date; b=L+ZCNL3zDsmN7kBWnuidM1OQubsLab9Sq7tlc4CtW3yVeSHaNm8iNhIYivFinfs0h/sJEhIdFb+r5Zb40FIHMpwDVEmkyv52vgYjy+7LUt01rVAGqEFLAKhxkWcfIW8kiNsJdjtZiENeMX7LbrLtmRzm83bRnMvzWHm+56rsTic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQWN1A4r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQWN1A4r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0007C4AF07
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721941553;
	bh=J6LYul237uIDiWLTcnFAbO//6MxHdNfp+ktCTj6Q5is=;
	h=To:Subject:From:Date:From;
	b=BQWN1A4rmfcYgKeARhgtZQlZymwMH2qEP8GRkK5g9Sbup1jzBdT/AbdbknCpFcK5o
	 RYGisVwatnPraWzTOcXs4QsDW5LDM0KSUD9KASQQ2U9UT+0Fa8AHxnEwIjJ4VqMk+b
	 uJhKkSR6mmJ+gPU7ZLcpNYHa0Alf+a2rAgZ/xxmCeOzGrmazvwUdP0AaFmJglqWNZG
	 1mOgDxZPdGgzVKVzODtUy5A+hMMgNLGoaAV2xMXdx+/CIxQJ7+gYDS7zPBaYb7RdeM
	 1MZFBPuoV2F8A+ffkat9+PF6Sm/SGGL3f3+x3mIVJM8qM4SerIcdkaFfEdE9uCxDCu
	 plbTcR8sBx5wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933AFC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172194155359.31035.15101492492106764710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbeea57a17642ea64579fcff68e7e2c85e2e704942171ffbaa645a90e3c142b7
Date: Thu, 25 Jul 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721941553
