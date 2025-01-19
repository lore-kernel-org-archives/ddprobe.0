Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C571F95C
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737253554; cv=none; b=SQtwjrHvZstfELrgWxJ1erNVp5JfI5SSVgo5Y33EDXBKZsdgiPws8PzyzAwVk55WfFTHPCy2xzqubHis3gIFTsYUQEkchIZ104xRQhZRT5hny1nUWWekG4UBb3lFqUgySRd+68m1VH48h5UkDNjMjl++J4t1Ub3ahd3TazMrf3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737253554; c=relaxed/simple;
	bh=Nkvf4uTwQaGjJIhlHKVZSw1W8jwlseveKKvPCKZOGFE=;
	h=To:Subject:From:Message-Id:Date; b=YkLdThBc5YZDG2MAWbcvY4Q88gQl2pJLHwJWftZgmuay4QsTnEyffRhHbwJn8IA7aFO+SORk1/awYrk4+g5eQ0KWG/VkLpbdgTkZ3mMjMXahgf4p73JxUEjgjHi3THtnu2GmP34M6r7Hv6I0JCaUuFpOCtI76pd4PMg21GqcWhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WkNXSL39; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WkNXSL39"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D60C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737253553;
	bh=Nkvf4uTwQaGjJIhlHKVZSw1W8jwlseveKKvPCKZOGFE=;
	h=To:Subject:From:Date:From;
	b=WkNXSL395ewQIYua324ZxCqrgQvheLex3lFULRygepIKxcaT7ZzzA+eBn2eO2ztSl
	 dsG6Pc13ZPjDslcRwkQpioa3IBOOCPInlKEchx4Dy+acdhh8J9FSaP0wCuUCBFPGVS
	 I0QkDXfzHZiN8GBlD2j18pQ1CTEm1TPMXxPH9Z8JSoAYRAdxxyXwyNw4CbHeDhbb4m
	 LC5NP8KWQPGAJJtLyy/JQuXNUWG/C45O1spUrbDPTNGlfTS/dcST7Aifw3bZQaA60N
	 NkG+iDveUHbjmX1yCgNm3Pqg6owrDj+Dotd44d8xti44V5RG9VyvAgEy3zz+XYsuGd
	 Sxnukfp05Rgog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A97C02185
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173725355360.15721.10340751198247238474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60a98af1837c4331957f0930c452867269dc5b49d993a95daec10972f6f1898c
Date: Sun, 19 Jan 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737253553
