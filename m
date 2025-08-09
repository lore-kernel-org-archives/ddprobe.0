Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D7E1D8DFB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754720994; cv=none; b=cnwIpyFkVXLTwUosHAuBFkZYUkUKHpbSwevW9ZYHDwYpN1AA7w8N4WhQlC8plre/cqtW4uoUVsKlkZBRfSoZa7JEOks/HcHuIOOKlOmAKrcqsvXK133fZWsNy3SpXQADKHvU9wbr12Zh69OQyYw8vEsl5MeOKhGehIPODMW7HAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754720994; c=relaxed/simple;
	bh=Y4gz4XIcvco+sFMZg3RcFtZVlpGjzr9cU0ClJx2bzZA=;
	h=To:Subject:From:Message-Id:Date; b=sH0ESIZuxc6YZi1YnwlNsfIW5L8Lkb4OgdLOzbJoooNrmJnvvVH+bmcljPgpRHXf/mpnb16Sv6qu8OzKk4A4uHTmcPO6Qsu7Dhg1ZFXR8Ex6kVK7N9ikxOd0cJMQtF1odkT+Kj7EFtgY1JRNB+U2B3TdCbIdkjt7QldIshCKlOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOHrmBie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOHrmBie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1309C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754720993;
	bh=Y4gz4XIcvco+sFMZg3RcFtZVlpGjzr9cU0ClJx2bzZA=;
	h=To:Subject:From:Date:From;
	b=fOHrmBieKR2Uh+1oKsWooKy+wfRUPg7EHt0KGUSRpb8sOGAQ5kM0von+R6vruJH9h
	 uCXh3qRvW+Zjn5dOqe0QqFDwWDRRJb4nerNhuQ7BBbFvFnRUYEo4JVQ3Jyh8SvXIne
	 pHrl0RpIAtPpSq7UacCtagEZjFJS9WTN5Gm9e26rfCmlop7Rc2GC3kDI/ZUjDFAsIj
	 2szo07V7birAvXS7dMgaGIXsKgRWSSyMczSBV7A80ayUvL7uu8Y4knYn0bnNPESUHX
	 a5mXD6S5/0sc1RrVY4vitxuwbfHBuidZHEB0Gk0BaT+xDsuzBEZ1GRb5Hdd08jW4pu
	 ProBsbj1MFboA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F65DC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175472099358.28793.13605524186189981479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f55d5e35ffe21fe19a5e3a836907b0f027f098cb64eea53cddcd6faba30c65cc
Date: Sat, 09 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754720993
