Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5146B1586C8
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746566995; cv=none; b=P7Y9mEArVZ1WYKSkNuRQJeVYVlMkf+z/ElGM5FSJ57/NJTyM4leczVeRwgOaoW7wcXsnrgKo1dRvt+OCS50o1SPnHLwkVdM4pEYYXfu9evvIzWVJYmyR0rLBpA7U4cERMksBOhfOkmQl1fKuGw+WPhvwaw5mdF4CpkFs7G0sDmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746566995; c=relaxed/simple;
	bh=V5NhWolATbLF5iVy11j7shEE5heO5bdpY36tmyvwBZU=;
	h=To:Subject:From:Message-Id:Date; b=HtaMnlIr1UAsgyctAr0bdJnYBkUs9nkl/6Vltxylt/qyBqwH1+pc9cZfmzxr2BuqlExkCj2eyyxJlu37gJaFp3RGG79glB9/DZdpJ57TKtXSEKssBFa5XIt5S//omqca5dGnTkh1f7E945AAJU3Ui0VRTiEBve2M239drcmwzIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G80VeqYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G80VeqYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C79C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746566993;
	bh=V5NhWolATbLF5iVy11j7shEE5heO5bdpY36tmyvwBZU=;
	h=To:Subject:From:Date:From;
	b=G80VeqYjKxH0MrUZUzNPCGfwp4SsSaqa/qd93UxIkvw+tJ5mHa4KsH/2mEYeTgAo6
	 inXKas496fmw57Ds6ywc+wujdNF04QNIB/FTSgcoEI1IkkjLc9Dj7O9PJ4EKs3we8c
	 sS9EQI6o8vDTvlfyHJOBpi6yy27H2I4IVp4a37rrEXOhVekBhss9KGTfkC19CWsBQl
	 j3QhxTQ7ZU0MfNNBCwfrnM5UUq7XDVuUianlScJCM58XK5iQY2dCEcTZ3GQMJdsEw0
	 OBJPkH81pG87hvS2BWpPV2FrgBWkOpC2unyJ7m3Q63Sng9zbGzUB0A/LmNBgYDBRYv
	 K68LHrCidfeiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95038C3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174656699357.32386.7176919938045280488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c83ea7a9022869137b5720b1a7c3d371427a413c87712bec8f6d73b37f6d1dd
Date: Tue, 06 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746566993
