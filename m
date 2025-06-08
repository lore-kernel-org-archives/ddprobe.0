Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2350A24E4DD
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749394195; cv=none; b=cwiDarBddoSuzlyNHkJ9ox6PzmKI8kASf1UnDlOiz3gdX6WoPsqhh6o2/2x0jFL7dJjrT0Dhc6SW9KL8C+QVvro67FePEY1T2XObHr/JcIv+PEMkEWJWIOqDjCE8eXC/KTbReJ7n9SIH5VyoQPPsHxp5YTpAIsP9UvxGU3oSpcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749394195; c=relaxed/simple;
	bh=LI6JQII64a0Cr1IUUaPIKdsoP/YF638RR01D2iIeWjQ=;
	h=To:Subject:From:Message-Id:Date; b=NiMt0uCtO1Bcuq4QBEyDBPUECtCI9ChwAieQf4tRlwXnZ88L+H2bYvpLsEwSsSX5kBkraueHhY//QLFerYJT4+dOYGWI3cEgT5efvhaew4ZVmWF+AbEfmZ2vTFk8NIHUZiAQorfa41V8c850+IYKdCRW2xzz2qlOB/t7wgsCT2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t967VpPC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t967VpPC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0145C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749394193;
	bh=LI6JQII64a0Cr1IUUaPIKdsoP/YF638RR01D2iIeWjQ=;
	h=To:Subject:From:Date:From;
	b=t967VpPCpr2PIqVRH+HDPNLA+Nb/NLpC/epiFFLL0qY03b9JTd6k9CA6ESKBkK2Ob
	 I92Z2tRXkoQ7vFTFNuGbGi97KJi7HbQhHsRmvc68T1u4g7c6XWYMWCgP8kWnNbhyt3
	 q2GQQPTo/wXomrNNO5vuFR5zo4IRFBMtckcIwzEj39D45xVX082Z2GtZrTYlGyI/t1
	 HnA8QLWMXSNFINphny/+uG6/UY7de9sGtZRhkKnnm1Ih0ju3utg7nWshEEh64kZeF2
	 r8S0i2UJUOSXuVNjmGrqv2p18X5nSfjzboQRwG0YXU3xrZuMkYec16Imcj1PLCL+VL
	 c2nwP+5CQEJOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB72C5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174939419357.30339.17148168374948498805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d3dd0aded83e87326f1ec7f5a2967f435d86fc0d88c4150564b20a4dd7e186a
Date: Sun, 08 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749394193
