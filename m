Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4770D28EA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748183394; cv=none; b=l4uW/1DP3qeROdotGNZfuaBQETi5xQ9QcNFb/6L3edLM/Ei92CR1m67ZwdvAMtt0gw6TGraDglASVmGQSRgDbEvmCZp+Aixrq292+svaXn5ahESeyUTycnxLtDMqg7FOZcJwC5l/VmBTCgEYC9Q/T9YP8vCkmOHkDv+fDMQJuVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748183394; c=relaxed/simple;
	bh=ks4ApRKaJVKgvWYqrt2RbK0mgk5nMkTRvxslc50jNZ4=;
	h=To:Subject:From:Message-Id:Date; b=XFAsItzngA1iJeXMgmvatGQs32qO968weOzK5bhugUn/NmQ7K71p1a4+uD4ar1Bzb7fQGs9BSfdVoWUswyx2ki/YoJUrIgjQd+YgAx9hNAI16c3yz80lC3nIgKmjyR6VV4pSz267sWRT5PidxSgTB+R7mQ46SMrNgSQ9cUehcZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XoOUeEk0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XoOUeEk0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA63EC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748183393;
	bh=ks4ApRKaJVKgvWYqrt2RbK0mgk5nMkTRvxslc50jNZ4=;
	h=To:Subject:From:Date:From;
	b=XoOUeEk0g5JuxGKeeYbPrgp2q/ToOEwDYhiEv14Ows20vZRKlC2xqswtPKR07lEPd
	 9O0QueWVxzaP0+FJHXqO+OPTjKEpo9cTFKRlm9NOz/W0XacXfrBOfaYm8ijxQh/JMx
	 Vp/IwK1geeS174qxOuBaNtqFY2RPRwcCyw4Z8hJttogs/2A0Rh4R2/wFWKaF+PdH9P
	 AuinhJn/l8o2G2E9BZ5Mg4WEC1DWvetS/6LT79m+D+KWsYFMzMysn5A6YSnXqzmVR8
	 0kccmMjWFXUlAp0mXnle4iwg1SNcvKtkkx39OLuCudygNdGpuUjtN/8q4AaWorRYjy
	 1TWcWyvM0zFOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96808C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174818339358.27602.2898353677591975335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c531554592c47dc2063acfe231a58152de02649e7780b062b359c1baf1f95de8
Date: Sun, 25 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748183393
