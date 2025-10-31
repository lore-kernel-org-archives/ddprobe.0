Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE1831A812
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761951594; cv=none; b=tufgu2of7EkAGHrKC/gSMP9lhYZR7bthUMcSBspcEekrhirmZjCwS0nc5Erd/lZEYzgjMXpAJKVNP+n/wdDgkmhindR50qt32/U4Ydt+RogsvHXifZp+ou7FNuxBYDTpZdk0ZYBP+3Ktg+ozRz+2DyOnFIOothL1CDw1a2FX19A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761951594; c=relaxed/simple;
	bh=2hqjP+9RvFVeT86sni3pVQTARcfRRhHEY9d9iUjzq/w=;
	h=To:Subject:From:Message-Id:Date; b=ZlPln8nNSLgRh8OO2H1K+idx1xjWLc9IUdDo2GH97Vk48oMeVkCoTDR+f1y0KIkJjG2Co6rC3aqR0Jb/4KJI1alRPYGclZ3MEAc5dUDar6TGRvTT/uVZXBEb2LIaUgSFT8xvQquKCZemV0N3hF8amkCy0ARMM863Zv7CB5EoON4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNkPIa3A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNkPIa3A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29C3C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761951593;
	bh=2hqjP+9RvFVeT86sni3pVQTARcfRRhHEY9d9iUjzq/w=;
	h=To:Subject:From:Date:From;
	b=XNkPIa3A+JWEj43KdTvkHskdEnexjEjEnEiVVSB+c8u8yPNXjFZVF2mWmOzmGYWqh
	 egBOt8rQtbt34vQeoOM6ozshthRHzKeMVTEnUP9z2N9OnA9tgtzA7g0QOFRVRxSeGN
	 qOjVR6ZP1nHvdhsab9TwmT8Q0GUXAyG+5dgQSHLlVmrrhlLRUWmNZZtrbT4nLBskVp
	 p8w2oHDymVQGSE+C0q3QArxaM8fr5/ga7Xr5p+muF08VA8m3RZhVIwvoPCl3puJpB8
	 CZbb5n+nP+hikUj2z7fylrvkJj2ernqacL1VC+khPGXj6iXjJ/qcBgl7ns+wyLERWU
	 lxSIy4qyu1h3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A7FCCF9FE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176195159359.21044.183141003229834739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0441a95ffbf5b8bfe6f799fbada9e3e47fedebea5d886c1aee74502ec7aae9e0
Date: Fri, 31 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761951593
