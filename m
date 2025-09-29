Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F496237163
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759177794; cv=none; b=HW0jcwuPp+Yg99c2kmNFV7KrWYgG/RwfARporG9C4LFh248UV9hbVC5Ch5f7AMTQ9Y9SJM2Hz1AsR2DorQBOpE9H5tsfnwfpPoIE8ZxnH5WnKtpGut1U8kHgrVQ1mg0T4MU+Ew22vOPAho2rcj81XlLLT2TtAVcCMm4pQy/e/hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759177794; c=relaxed/simple;
	bh=/v0AR4Bmd5iol9RkiRVrWVngjhkJTmo2nD/vWP00ALE=;
	h=To:Subject:From:Message-Id:Date; b=TmgL27Vxas3aOUlotmYbK9aGWDcFlYWVd2w1CmtOEvMmbIOUx4dK5q3DFqBI73rezjXBVfIh4HDX07vm2JkJESnEhNYenLJkSIebvObdYj3v5ebGrP3U1M1MwyQzQCRdIH4PZmuZlL96+kGp5jMxjLv2vTePyx7++q1RFQ7fqgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ItBEJYEu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ItBEJYEu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94AAC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759177793;
	bh=/v0AR4Bmd5iol9RkiRVrWVngjhkJTmo2nD/vWP00ALE=;
	h=To:Subject:From:Date:From;
	b=ItBEJYEupWYPCSvznpnTbYk8ztdxD2LdTgV+5f+cgRGoNW4UV806EFYt7GHOxXN8E
	 Jx/jptnjkiAN0yS+QtuDufY7vN6wobUM1zkcxxD1j48Aj3rIiD/6jM1vSkWbvEw7P3
	 twBf02i0b1CKF83ut5xIkxjebSYc/zAEwsPWaxOIVUhfy35xAecVDmb2Vm2sAjSDCM
	 ipdquqXhmIwvT4Ss+IQpvron9IQTlicZ1hxnPLXsl6W3zQVINg5VaOQtb7pj/nEe1n
	 jcIsEbUI6om9iZ8ftHeHsGpoTKvB+MppehvNwwC7li6vLtQ7JwPtfqwsfriMF7jDwK
	 pVeQqmrKokTtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93376CAC5B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175917779359.28922.1600277433324913984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc44c4018b7e934d8b1824967679c3a9081b15aba32c16cfa9bb2e28eeb07381
Date: Mon, 29 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759177793
