Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E1C2222D1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766400834; cv=none; b=sWRHLZV0aQLigeGoqR9VLo3tt/9zsRcEPgRTZcZSl8fDvd3aOhptz+weMk7Uph2a53rvzMtKyj+dnHCe7OcFIRqspIKcmcWrPuhGAQL0TALbdEJV7axaB+HjXEJJd5DR9FcboWxJYkg0OA35jXF6kbeWJ7hHdcu32K28oHhcMAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766400834; c=relaxed/simple;
	bh=8/cYtj7GjjWuu8MvCfVP0NaXBzGsHDeIPkv6v7WHSy4=;
	h=To:Subject:From:Message-Id:Date; b=SMRq0ynn7MAu2kx1608/V42nV3sClG2SMNOSvHAJzSGmFjOH4wYrLhLHsUmJGHY8wtza2lN17N922oadkpLvQ/aFnTYWJqYaNaKxQLg4WcDaSbP676xJExPv9Is7mvCCdY0tBU8xE/StRoFgu2mosjao5z6rIiTiVuFgWGezbB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VI/Ij44q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VI/Ij44q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51D1C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766400833;
	bh=8/cYtj7GjjWuu8MvCfVP0NaXBzGsHDeIPkv6v7WHSy4=;
	h=To:Subject:From:Date:From;
	b=VI/Ij44qpwWqkI2q4S/LuspZqckz6DaUuVq/Va67SkjcwZIerrtCwjHxoZTkOw3ib
	 KyH9vTcMHN8oOCxO9ShLwg/8vvIqgGkkTSwQ4KKYIL6oJE4k3ak5BeFBGveQrKJivk
	 nSdcM6tToTLCCqeupADHEvHgrkggTN4niM+E7ZO50piCpNOeNv/1pJC0W5nRgym9tF
	 ZkO4hDjYBUSloo32VALNiOVE53m4QZlTZHBdEFdI0oD017ShjG/ckWSmIfrqjYfugq
	 N2MOgRs8L5kpA1Sophpbyn4St/06jmL8eOlnthnv4ciaBk7NXkzyIOjKLJ1gcWz4tm
	 Y/cq0TVk4TdSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9467BE6748D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176640083357.12621.2639246312801444975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c21736e2c526d3e380ba8ec34e10e124c2b3ab87a1f7d905a960f0fbfd28315
Date: Mon, 22 Dec 2025 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766400833
