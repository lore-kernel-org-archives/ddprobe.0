Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BA1270554
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748351394; cv=none; b=Gk3sR4vvmmVbhzvpOJWfq1lbdBdMpTX2aR2w33KH92/cFTglJEkC8Xs8PEZRl+rsNqfodvKDJo/TUevic7iOJAp0Bk55hOUs6hb/srEHjBnIK4LtzRVaUqwrg0L4fN23xr5SlJzjh1yBVs+RHGXGfAPIKaCOoz9Fqc+sGSADJ1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748351394; c=relaxed/simple;
	bh=/a4RhAGR9GdzSgwSAiCqXDzzfwQyIdN2AwaLyKiddrc=;
	h=To:Subject:From:Message-Id:Date; b=ZBCwCsxo+7eSiqw0nT2lpqmDNMtp9SCwT3pkSLhwAQe8+ONnrs2a3GUO0Hq6dWMzNEOt5v6c76Ym2byR/yyEC75HxJzWQaLkWlhCmcIPKlRDHXymzMmW/2pQlpYZ26vnAyhKFIHzMvZ6goTeFcZ+yK3JPNsxOEDgBxMF45xcJlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eAWx/8w2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eAWx/8w2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A142AC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748351393;
	bh=/a4RhAGR9GdzSgwSAiCqXDzzfwQyIdN2AwaLyKiddrc=;
	h=To:Subject:From:Date:From;
	b=eAWx/8w28V1ZwiGdgB+SixHZQls1fYTxO6aU2WHeT6OllSqYggPSwF6nGegujdYIy
	 uIncQhxQ9YLTwaaRgGyOU+kx6tJeEzgbgkNbRm2v8bUieIW7bM3c87tNWs3mQHYuDQ
	 4sT4pMLV/56qUxVz+PYWdYXTRafRNKBp+FDoCPIxVwxftUJ+Ol2gXIOaOqrUJTZvrX
	 EUa4OL3iOTyUl95LGBanvQGVO2sRhSmQ11Od+xL4Y33rukgS4436FYttgCCV6tt3Lq
	 XtQscll2uk2+cCM9hzLlUU2PmrdioRDs9WdqyZjXrnlX2E0V+Dyi36R9UdYofV1caq
	 DHmV19b8/ceRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7B1C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174835139357.13515.6359663165070730729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c16a3c985af14b006d3b39856269c55e5c2bc01a961d3775322f8b792c70518f
Date: Tue, 27 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748351393
