Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB4214006
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 02:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720838963; cv=none; b=ewPrXuSvVr3h3ZGs/94rAmWCbtiucCywg1Sl9STT05ouI8BSssXPmdLH+zGdOFUpKB/d3kmYyR/Cofm/8gIW3PjhcdJOcNw2YxhKjG9QTqKWcTAQmh1hiLvgobZwCg0jsxSkDvrGMUsyzXWBTtF/tGIWNx/tzbzBofjwR8wUvbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720838963; c=relaxed/simple;
	bh=MJ/AOqetDVOPepOlW/XIXaZcl/chtaktx3uLkoc1h74=;
	h=To:Subject:From:Message-Id:Date; b=gLcgR9+ZUQ8l002SOLPS2zG2a+68HbiEuSagNVCKXOe/KXt0JnXdHmc6uRhGl2xSiwRmLWY8azbAqlef43iU1LTQHDN9IkVq9sWCAITqZAqlAKzTA7bhRPYECYTYflgx4JpdGDWnAdLW4tGA7YtTDQSrwflLFs13wkxbaN4zans=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugDYMw61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugDYMw61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B12C32782
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 02:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720838962;
	bh=MJ/AOqetDVOPepOlW/XIXaZcl/chtaktx3uLkoc1h74=;
	h=To:Subject:From:Date:From;
	b=ugDYMw6199sz/scQu88oD2TjaKdl/++UGegFY8gPfV8oVJeDCaaAApy4Y9oOxImAw
	 543P3UFd3niCO+VaW41Aiy3t9+IY31/QEE9QLgIxtS15d8SIKOIsBYIDePifO2mh4V
	 SaTLnsA/f5AuUy8Rdzs4rL2YJgwWalFINECEf4hxlPSKZwoo1s+5dyRvvi6oFjWvJI
	 biM9FXKisA+OY10sx7MeW2a+0k4viEQwDcqwbEEnN0Uzb92OdTxT+pPyWFemj7oqvV
	 zd6nel1BPyAW2qCo4sBo7vC03n09eLN49tb3GiOwGU5iZc33jne5QOIzweZjQ56Duw
	 WMTaXnX7O4zNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8FCC2BD09
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 02:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172083896276.26136.1114525153151072346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bb4b5f4d4c1d43077c98f50b2f2869e0b689979301fe89f23d4c2144d6b6c3f
Date: Sat, 13 Jul 2024 02:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720838962
