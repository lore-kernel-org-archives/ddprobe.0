Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270CB2D7DC7
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757738395; cv=none; b=pHa3IPvqZixBtC4ay77rsdhFDUzO2Qqv4qTH0WePlSrwEAjdf027o6U429+IWtmIFZCeP2vTD2gPz8RcRVQQMHdWDIG8YOK2000MlsA4No+BMa6jYwCETihn/naqR46H3wLk9B5pthmojaR9mC1WK3eVms5rDYjNn2IRydh8D34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757738395; c=relaxed/simple;
	bh=VpRG6HxA0i0AYGRa8vULZQKAXEr5tENl4NSs/FyQgP8=;
	h=To:Subject:From:Message-Id:Date; b=dHliZBek0zwvn2fj0+5mewTFUZXDfQU1mMi6tKztiiRltPIG7UnEbtuvGXJduQaNcFOeb103zzNuFntrlELvOp+qUQJ1F/7yUO+ymfpcH5NejwsTocK99a3D7q0H0iT/e44WjW+OTzpWNxkWmoZqR0+lJR5SSkMNpm5XV18QxzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+preveR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+preveR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD33C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757738393;
	bh=VpRG6HxA0i0AYGRa8vULZQKAXEr5tENl4NSs/FyQgP8=;
	h=To:Subject:From:Date:From;
	b=A+preveRlMd0utPhTH9xXTwiCD+Cg28AGDgl/uwQuXIzRmyCMx9zvsTXBJRkfivXC
	 LCaWV1BAgDLtxuYSaeRzt6rWByL8aAk2EhWWdkIouzpIyTLsUQsgL75lmJazdLiA/8
	 WEArCHySTbNde6vcFTYHWD2IlxgA2LZgv3H5GcG+VgSGlnIDrvBVTMiSdyUxU1LdhY
	 bAKKXBMo07QyFKAdRHGnQ/wKmyj7z36VTEsH4T0EarUig2FWLjiDfvbgn9YY8SFOEg
	 Y6rcJ8kcoYT1WaCcwRa5KXc7Ax/DTmPpD5j2zVgnvaUIgtGy1rTkNnt8WNJUWK/h6W
	 kfiefosqIvWKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94495CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175773839358.15085.16720767931488352678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b44963871f5eee74b6258529501a307743685e28f7d4c15965b10146613199ad
Date: Sat, 13 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757738393
