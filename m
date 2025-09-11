Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F15F423D28C
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757618394; cv=none; b=hyPY9og83iH1M6+j/rFoVNCBEe5W+dhhSxbUTji+Mhfn/9Kx4WMByzzHXDqTfaBK9o+wzilx6ByjozRoBbZhH7FiDshKkB8QKlkpEaRP6GodGBW6DpPe/BT84gOR994goBOA2wpdWCH7N3BWRG+DzdGIyMiEhDMcpfN+S4silic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757618394; c=relaxed/simple;
	bh=GfEVccXdD9WeF2Erz55qPOunt1166my9uf9BsbUmEAM=;
	h=To:Subject:From:Message-Id:Date; b=NCGCE8YnjYgTX9FnrjLZu7PnZG+cArT61ylO2rbY6LEVwKtAFTZkpXQr70BzoOWQyjJwcy9hIbgyubb9AJAZmFhHij801p8iys1p6FaQi/+nlI6WMr5Y2yklOryE7r6IcfMfjYGI1211zx1BxK+oi2xX/QwkcJ1LaQCjlVqLpdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vrukm3Jf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vrukm3Jf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C3B0C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757618393;
	bh=GfEVccXdD9WeF2Erz55qPOunt1166my9uf9BsbUmEAM=;
	h=To:Subject:From:Date:From;
	b=Vrukm3JfKOh2GHgxzenUojmzz0dpDo9qpBXXzMg2Y0yQIP0sP9JAVIQqQ1J4dn2dT
	 28XMI/ZZ5s9xnYMIUNtwm/gzTeG3OMZ56UxbyTAQqyDOkg8s9GN30aV7SiBiyvdWHD
	 A++nLaZ2rk9fE4ave8c4N6tCvXY9S5TquoTLxTIDRjFhpn8OymRDK235B+cvThq2CX
	 v54D3nOLt9EWUe4QcLE4BMKNtCIk+x09YCeR4PBjkMeDPnvFcJg15TuWrsfejxGvv9
	 19hYLGtrJzoC1ZfRSWaVfJ5YqTj0InD20bk4nKOFBAMYJksnyqOnxaRUgBsc27ZQji
	 YtS999YPPyz+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9DACAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175761839357.23682.6663791069841856832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 724cff742eceb3d178e7beeda770d18b8ca0289c4f8f4e0ba466bfed042475ed
Date: Thu, 11 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757618393
