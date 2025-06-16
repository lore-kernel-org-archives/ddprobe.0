Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9F7482FF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750088394; cv=none; b=B4pwno0ED4yQQg7zDFVBWehlrGvSIktTkV6BL2VSQBz5nfFOi/dhDe6f734fCv86K8NiRkbtEC5YoN04xuK3aa2AdNIzVgzgPkzYgGFN4bS61y/yDUI1ECc+FyMC4qWJXsAg+8JgkmLcaMRuHLDepUoaSj1TyAgpxDNKKVLa4Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750088394; c=relaxed/simple;
	bh=kJCnDsY38YuW/v4JYhjCo8iuErSn2U/7r4ui43HJWvQ=;
	h=To:Subject:From:Message-Id:Date; b=NEGxTCZFx60o3pAx63GUfMTwVJWoy1P/LOstm774PyRFSIXdJuPgHZXYMMeJFX5jKW4fp5valeFZrKx0lsVaEygTczCdIpY488/G8XwK4onkmTKD2sgMqLsxK0QEPizY7y0ccIUuDimIAPQ0hZutQtdAUgKYlqmJ6VdseJyvZy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABiGwM6R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABiGwM6R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB08C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750088393;
	bh=kJCnDsY38YuW/v4JYhjCo8iuErSn2U/7r4ui43HJWvQ=;
	h=To:Subject:From:Date:From;
	b=ABiGwM6RBk5uoZTJC2QKMuj1Tvkx1ft8m3SBLk6B15ROwyCUoQRH5XqxbuSf0tPjP
	 vtLj79oP2SyE+KrH5vRpHZzLDQI7fysGzQi2ROucuKH6lRCUcV3bIgxdfy0CDxZKtC
	 gwN0WVexWBbXIDm5RcFz0eghFdWdpE3xz4Ow9n10MqBq45LYu5QTKfehMNGHUv4juy
	 J9agm3xvhGj2tFBeZZOM9KL3EuK5LBbf+7a8BqtYUGVGXh/Dxzix3EtzddEKoeboQr
	 31VDBsKlb0tzYErQ1VF3ceb6kscWCd3ryHp+hBH4hdUrzMx0lwXuf/rQPKsGYOhpiY
	 brypiogYaQ2Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1E8C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175008839357.5992.7898309159601713169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e240229e6c66b04a5355da585356f0e839b99ed7034c350153c3aa8d9f4b0da6
Date: Mon, 16 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750088393
