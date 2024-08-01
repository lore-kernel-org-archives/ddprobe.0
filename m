Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EA445979
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722496554; cv=none; b=BTPCJ5rzhVo9JEPpWQWaLO+rFx/fp8v17osANJ/yWnxS8OQDKCP9beHPYpRITJDsiAR8UZZZK8kQkgcMj20nGoMq5g57ztRqesTLt2B5ECSiG8bEWhBk6JJtUBC1CASEF36kgdrkJbRXrTJk45vcBc2RhvXpXTntmEQ6eqd2Ykw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722496554; c=relaxed/simple;
	bh=AfHpX93FmoRtyqtaTjzHwr+lonOtPaXhm48KB+nqIwM=;
	h=To:Subject:From:Message-Id:Date; b=pRmN8WUcnKa775DMTTdIzIcrc5kCQRbwF9kBsez3UHeHnctBmb7MIbXuBbh0QZA8KCWzOZYoAUd2ZFQsUnBc5oYBhYsHaizS2tKOnrXC3lUlJep8kw1jNRIMF7gXWn+emXyL72pScgrjLZQQ5OQrGyH3FMSLqJPHghGgS98OSWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqoP57j+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqoP57j+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB882C4AF0A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722496553;
	bh=AfHpX93FmoRtyqtaTjzHwr+lonOtPaXhm48KB+nqIwM=;
	h=To:Subject:From:Date:From;
	b=RqoP57j+edOSWQldrJMKg4igLELLnTFJsLRq8Y/mRJx4t1JFb9ssTaeNQ6NHqR4AT
	 Hc+ekOjtBuJPfBH4OCTcXV32FPNdRYaP6mpGk7OZvKWkvcbUq0Zredljhj6x838+ux
	 2tEByKKMR5IRC3znjxBiRPvmHuT/3N0Wk6OjomaNdS8gi2KLKtdgbmFI+i7zZzeeex
	 oRbC/NXLfpUiqZRz6NV2e0Y2olD/c/kKeoTGUqjnJ7OkcMc/BSKCL+WwSl3Hz3Fd8k
	 lcptHyVoo5qc/GXGT6v9JSaEwi6jqc07Ft2Psr+1/MkuZzeDG//ID2mW6p7EWlC55V
	 hG30j0uUxkJMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5BB7C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172249655372.15565.17349427655227058309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 661770da5e0733c0530f28034a7dede526fb8561d312865fc8e95389c5dbb755
Date: Thu, 01 Aug 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722496553
