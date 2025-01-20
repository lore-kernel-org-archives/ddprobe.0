Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE3618C31
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737338154; cv=none; b=QD0qk0D4E7gNhtvw+CTRRjNqRUnGKiOcqQRFavSD3BsHqpY6kZJDUTAA6nYw4gSabDiYHRgY8S6176R2h1ElMrJcbL3Zt5zKZ9XvOHbCmvm2pcC2jFvBS9SL1IGxdUtNiL1zac01/dXaL3xaHwPvP36V6OLoGOBYHM0vVMIzrmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737338154; c=relaxed/simple;
	bh=tHc4JlSwr1/qM2Q2NkY93ky7p+iZIEjxbknladgGr5s=;
	h=To:Subject:From:Message-Id:Date; b=lcjbdm5mcU6uLLthoxwhWoI5bIfwxbJe/ISlRLKmKqUrLKkPTyG0jxN7ZZKzJDNvfJcxqbvcTnwVsCNCq6Obfb1wiyeSwmOQLBrj8pP815gtxpwcX7JUXhtDIeK3peVUVP3YVqkDymjISiY6MSk1HjWMFShBspj05bOvcFc8U1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uR2mlPnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uR2mlPnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC19C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737338153;
	bh=tHc4JlSwr1/qM2Q2NkY93ky7p+iZIEjxbknladgGr5s=;
	h=To:Subject:From:Date:From;
	b=uR2mlPnLCGRAjVkw4pq8c0ozNQ6TV9WrxaG80eOB/d6YVAGDwaNYF/1pUL/kIn3/7
	 98Kxm7onokgQDfbgdB13xnc/+tI8TMZMwl/j/H1rcrHgxh/Uc2t7OLYHJ7HGS3oGx9
	 hHt++ybea1dO75liPV2evgYqn5qEaDaSVYZsiMO3R5HBNJBs7+l72JWfo0iFHhQi3K
	 aLWHozuNRKwKEInxj9rLjToYNZ5nja9a4H7ouSbxQq7zoTB5Nr2AdqbFQD7R00kfs/
	 Yb42OpsGMz6anHOLm9ig3F93IEOaAIYMaE6mxabloZcj8kRfmHs+lXR8UgSeLEIZQj
	 VZbm5HToGB/rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E179C02187
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173733815357.7842.15445534081242978496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f12c87ec1d2f2d6d2cfaba42b05d85124872d419f3d9883f9bb93f646dc1daab
Date: Mon, 20 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737338153
