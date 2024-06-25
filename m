Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1611424B34
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 09:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719309203; cv=none; b=pBhPHq8L6FvE1TGjOasXW6tW94M1gYHLOmTo6/bM+WPjxBCIxK11iqp5a/x4lmwp39PsD9pKUhUYnEadPOkkGEIX0omWL9Ff6A6fWK5auft53/aGx/gPrjD0MTw6r9y16EpBVNwggW0MK1iSOe9oPt3k5UY2RosTTJ+zvAXHnQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719309203; c=relaxed/simple;
	bh=aqUSfHH1u0xGSN77+pp92GYU0Um+QOu/hTjyCPTrrvM=;
	h=To:Subject:From:Message-Id:Date; b=C2c3Pc+TQ5x1w4Q4nqDAVrMt9iAb8vT+RFGAwGEltWgW3RoHrzQvod8aAZhtyvam9mTxndXLDn6Vi8fz9U/XReGUc4QhycJlxVy7YkbP0+ccaKD+TXcWmIPpVcxgPY24lyAU02Mmlfr4bty4gGGm8J3AMcWL9KsrSOTlFVdqHo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwE2RdJM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XwE2RdJM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5639C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 09:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719309202;
	bh=aqUSfHH1u0xGSN77+pp92GYU0Um+QOu/hTjyCPTrrvM=;
	h=To:Subject:From:Date:From;
	b=XwE2RdJMSKg/z4JE8e5Lcaz0N9sgP5DiisJVcewgUW8/o05tCUzv/C8EKNvvvJODq
	 eK/NNY2fn2FbBWXB2lxGj2/8nVNgpmaFhf5lhLIDFF4kHJbS0vXpIXppRcu4wc6kzI
	 JSa0S6OsFkwfGXvb8gQS0QVG3t0KW+zjtmTAKpjVa3lrtegvnmp2IHUNfkRKIbuFuT
	 bgwif9VwbuHSJB+Z+9NgXpBYUvTz61mjBJRky1y/z+qtS0XNFyOSK3mQNLMZTOLyXs
	 7rIwDvpFce+RQwWGGK1H0ndq76R1cL4wxoi10TJNs5pGqz7B+vasgtaxoPlJSIcGlC
	 ZIf1yexXhfSGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C52EAC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 09:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171930920279.19352.17499904500724179791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61f1e00a0f8ecfd88a9f929701cd35246845b042a759a9894534153f2143509c
Date: Tue, 25 Jun 2024 09:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719309202
