Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5CD442F
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 21:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716414203; cv=none; b=NTnbmAfhA9wqxOR8ISAavNlDmvjEZKLZhf02nQXeHgIY6gRHlco8D8iSlDsttOtQo/KKA2e2Pk3WSZFhFCLGSUWGjTaihvGQASDWuuWQYi7nISNufalWrbpbAb1sUGkWK1inyAf/5XXuTAUv3HAwVAUvnCOKLkBnioCsEZ0yXkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716414203; c=relaxed/simple;
	bh=ZOGrmBbITuHfg+zWd5s+7PDPO6HXqpKTuVF6L+SecaI=;
	h=To:Subject:From:Message-Id:Date; b=jxZMOrf1JP1kbn4TsfjOSR7yCCmC2gNTcaIt6xI1K0yAnB8E46MH6CTL0JjhY6nKw6kSK5IsokYa6Krlxdf0utARiFtmCqESELOCEijD6nD/Q+AlEI0uuZGfarunPNU5Vh1ARVazC1lUng3YuzvX7IdUORpbF9GIzfTej6xez+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBdas3Ly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBdas3Ly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F2FC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 21:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716414202;
	bh=ZOGrmBbITuHfg+zWd5s+7PDPO6HXqpKTuVF6L+SecaI=;
	h=To:Subject:From:Date:From;
	b=SBdas3LyclgnKmaxQKDLsE+TviuHNNMShTAv85KZs6jP7i6k62v8d6m66Bt6ugmBS
	 5wlH6qRsmqin3PaDrpCsjSBgzMyvKGxBgye9+EFX4rvfMt9QbPWG5oIrf7Y/O0d07F
	 ViMIvlGDkLDBc2TyItA5ITpAgukkG124S/DhGLkrqEYl+Dl3/9uWVqQJAQp7kuTvoo
	 yGj86ua2uRfDvNjxOYkbHLSqH1uiNTiLshERWHyDgU3l0lVV60zU5wiXcSi6tBJwFN
	 wlw+IZXgQL8PS+OHJQw8KXHw96QO7+gvMnQyJ33ZXLCffhBr8bngg6rwfZ8cjj/3QS
	 +v1JrQietUWlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD71C25B7A
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 21:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171641420275.29357.210958459810079294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 938ba2b026cbfb534f2e8ac8c7fc5dedec269bad3f618a3248fdbd169c1b90cd
Date: Wed, 22 May 2024 21:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716414202
