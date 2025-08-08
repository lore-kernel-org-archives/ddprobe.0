Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBA1285063
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754667594; cv=none; b=SR7JG8+UzXHUI9C6RrzTMaVX8v2FWmjlPxqx7i8WIO4e9PRkuSN3dxb6jdHKajJx9R6/2FoU/p3zsda/VoOIUK+t22Hb8XE6+ItinXWkeD4Y+2zr8cFW7whOfZB4OgA3lutlOhj3gh6pUqQRJETrWozxmCUz/sFRAVp9tTOKvjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754667594; c=relaxed/simple;
	bh=37uLbWjmhu8zuAuBg+0D2S2+aDu7pR3lPuOLQyTZSJ4=;
	h=To:Subject:From:Message-Id:Date; b=WsNXUF4TehdAuFsrlSESh82KA0OSnbSJ+XzQfJyl0+PZWhdkhKUyYPIGkhS03y9QNLj0ymBNG1qyvig1Xd5vIgZ+axK4UdCXIvQQA5RLiv8yH1/aGsC0e3oD/k7kgK2xtASHtOsXcuz9eZYkpd3HVCR55gnr68damS2ehSbPdCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2W19RHs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2W19RHs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E735C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754667593;
	bh=37uLbWjmhu8zuAuBg+0D2S2+aDu7pR3lPuOLQyTZSJ4=;
	h=To:Subject:From:Date:From;
	b=g2W19RHsLoIAAGicKU9umU4Y2cAQbnRPXL/dcW82OrtmqXdz5iDpqQfiCYVPzo0i/
	 oPkgqzw17wVOVUuS8/ngeIrYrpnE5N+MzD+JMc2gh3OLafMD3TDe6qbPZi/cQnCplA
	 /4bezPIw3TJN/C61+q0yxne8rO72QasSGraeT/jc9JFTAgGsUskB3n9VUTWRGsUyjP
	 dAVVywbcEcK8bS4o4IhT9C8S+oECcKQ4C3BRfeaPUzzlm0zgVsvEz2IiEzrzbPMBau
	 gglqZqLUryYRsdkl/zbf2lVg4kaCqErKTq4dz3nuER597lKDsxpNcZ4sSFtxjal6rH
	 A567ge0TxQw1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF6CC87FD2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175466759358.12349.4099288057015123855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeec55fdbbdc8b0496d2314b5574f43aec7488952af4f3bd5ee4325ec6bb4b15
Date: Fri, 08 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754667593
