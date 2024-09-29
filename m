Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B83033987
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727634954; cv=none; b=d1ZdELW0gZn0KR44/JJDIo4FNAScbUZbymD6ehFdKICf4pi+puSBhiYOkHYcDCxxh94lbmiGT52GiPuhADR/v2pJX2BGON2c61H2AvNLrh1y8/5ZhWnIsXzME1mEaz0UocvdKq/AhqbHiCo+bfc0tPfLbI4wHAAAxsel7EFmOiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727634954; c=relaxed/simple;
	bh=g6bSEvgKGMwz6aWE3HmCq/MG3VQTWaivPCamAZccAwA=;
	h=To:Subject:From:Message-Id:Date; b=hTosH6WoFSi3jgsWyvdM8P17CqEAHpQ5YznfiijECU+zS1hArT5SVoTG7yL2D2CxMhGihTa9NfJw8LrdZrXKtkA51MxjyFwi7Cp81AeFgT/itSuGrf0NvPhME3TYbcH0U4l2nXlo3HlnV8FoPhmAM4vxTv6VH10stVohk25kS/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nmN3xDFp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmN3xDFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD81C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727634953;
	bh=g6bSEvgKGMwz6aWE3HmCq/MG3VQTWaivPCamAZccAwA=;
	h=To:Subject:From:Date:From;
	b=nmN3xDFpPVuGCf56RWZNs04N/NjFPr62Acwtt0g9sQ/wMDiq66jr1GPRBn4Z03vvp
	 J0PPnhOqORpS6QXoLTM+jvjma/ivmEZ/53tYhx9XXpTzRSNhggstoptsmRt26yBaF/
	 gl3u0PfrDEjMIpyKf+SiThUDMEUco5/Q8LeTNUq40Dtm/pN411r8652DfZyXfLF0n+
	 6GTd7m2hza9Z0M/Xw1clXP2LqUE0LiNzkpDCYVJvijZok5a58BAw6VC2oPUlwg9s+9
	 1JXEy0yokOdx3454ooKogGC3v8kIYhrW9BNQPwapK1nU6lnZFNEJAqADluqC1PaRUF
	 xYF/jelwuTEmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A39ECF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172763495360.15847.8585513012000764514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a527b1aca67d1c6e5a8811be2331d0d38210acb739ca64a5f36bfa2d8aad561c
Date: Sun, 29 Sep 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727634953
