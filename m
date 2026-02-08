Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0809D281525
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770564234; cv=none; b=LvByJ3qCSRKvCRb8iwSHM9AtXpof33e7H7rFZbs60Lixt3Vlo9CfMcSUpRc+o6X3KkxxTemdMPjk3cFdNv5371n3BsOWkVVZWOWTLfiRDpfIAJLAWu56qWSGDtz3I4vo5xaiKtiRMekgKfBz9ViyiTayy7gG29USE4cq7I2xO9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770564234; c=relaxed/simple;
	bh=vbZya3ya1TVKctDEYG3nLR01bOgjgKXL/EbooanBsWE=;
	h=To:Subject:From:Message-Id:Date; b=NKYGIlSvzE/UF8Hjh26VaVRLf1sTIX3UhhpvIMzknCuyFgsyOrGVXqAePlyfMoYLzZeu/4Og3zaRJ+EoWm50qJ8wdwK8akPkyaET2cCgOQXbX/AKY/wuGvwxZoHcHQIYQ4QqbMmm3z5LgGnzb7MgwqEE76uio41T2VGFrlJTjw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TlPNYHca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlPNYHca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C082C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770564233;
	bh=vbZya3ya1TVKctDEYG3nLR01bOgjgKXL/EbooanBsWE=;
	h=To:Subject:From:Date:From;
	b=TlPNYHcaQsycjx9FUr4B/O33GuqWFciGSLZRPsO1N5j/5SAZ3fmOi5l6CAVRJod78
	 Qfmfm+55V0yNIduKlMSeR17nTTmu32K971pN3sa8mayVwYllxklgSJUZoCqCpbeuYj
	 luLuhsndc77ZR/pmln/EEkc0HenFoyZTSwtnxgrrGRjCJD4j8O5yCiHmRueFY/FT/q
	 WPm7tAM+ZoqDyewNvUtPirggqdCMMXVAjA2tAXRAVG0i+adjbwp4BoeStfG2OWrc0r
	 cO9NtSD2XsHW4LoLlSQg6OCBcKmvSLTMIyGO9PEbXS8+fzQfbPHjsHeHGzQNixmQpA
	 IAtA8qwX60+fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933A7EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177056423359.5411.10130571420707701898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf77c4808debfb76a1c02b0b8adecd779a3320a5a2e21ee0da3b9afbd712de9f
Date: Sun, 08 Feb 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770564233
