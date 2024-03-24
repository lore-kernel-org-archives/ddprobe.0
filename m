Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F41ED266
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711307897; cv=none; b=Fzpl6cT/+UApInrVn0OWCU3P6lE5+jg+Ph4ZDz5dv8wC9e73DBeUpn8F5Lde59id4EYzi9sL1assBqxY92DwUrGEkS481hxD//MlRGtrdpZliU1OwE50r87oKR8myO1TEq5pAlmeXxdDh1IVopekPbfuVlIQhx+vqHGr/o/bsog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711307897; c=relaxed/simple;
	bh=dTB50+vDkHsD8yIbY7LS4ru3x5G6sIiDCq/UfrUu1pA=;
	h=To:Subject:From:Message-Id:Date; b=ud8hHyQEg1auRSVbb/D9d/QPxxDYT3UJNxe4mOf0ZS1GuqdV2Y2KssBTTqO+ic9e7NNDDCNV+dampdj5zisV311vL33+HxLx3Gbiu/WMN24GF+a+t5tTjH6u81GowdAKPoHhl1PQCNdYT8HG/2DxWLx01hRYSd062vcquv1STkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upXhBV6b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upXhBV6b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F7C5C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711307896;
	bh=dTB50+vDkHsD8yIbY7LS4ru3x5G6sIiDCq/UfrUu1pA=;
	h=To:Subject:From:Date:From;
	b=upXhBV6bYN8wndgVoGtu1pR9hQumkxf++O24VQnh+Mr+9f1JLlQuqqwDKtfl6RBPy
	 eMuSGUUFPGU3itChKcr7TVpEI4CCU0JWOC95ve6e6kWBjt/evzFVKns2Ly+THZlBtG
	 UkmsG2ba4PS1YM4ebXIZ+a1HR/aE4bK10+uJuVWIAvDeCO5knNlmnIRQNdlOLizYaI
	 hZRNovrFbSdslVvi7/lDymeJpg908naKkqpXu4p9PWtANpPNkTCFgAM4Pe/hbwe17t
	 HflVD+gZYAotJmFd48WynBq710I/y4q09jHqUUD/3h8engsQzCD4Ep5nItLxuq0Qyo
	 knJYp70alJkoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A18CC47DD9
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171130789641.19913.3108087479923277529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 902fe68539a598b55e697a91fb14a42a6f2067f7a5373ece9b31140668080532
Date: Sun, 24 Mar 2024 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711307896
