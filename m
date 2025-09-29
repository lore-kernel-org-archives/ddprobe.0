Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F282F9C2D
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759152594; cv=none; b=NwLrxQIsbM/R1Vjty/KCgLU59epTbrD3vVp8DtMuLShoTZ6omVmq7+rvKEpSSpoaEhsJzYEK9v8DMh//i8r0/aa+C+jQHKv+ax2phhKnPpkcCTYmne7PMcisM3BcVF1m8cx9dWvdecQaBSkzrWsxrgOPRlCB6NsKL7J4gaXq/mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759152594; c=relaxed/simple;
	bh=j/wTpMYWen8UX4y7gO0aatEnUA+oaHW4Nx64XRN+lNg=;
	h=To:Subject:From:Message-Id:Date; b=R56DawzNbPNsk0MTnyAPdukgfyduPuo/bKdD/my+XCNCEbR4y6CaVOQne2DKJAoogVdQFe3YdQAY91z9YRh9W2ozmyzeI+0Ucw6nm/ygHW7Eyl9RGh3sV495i8zG9TbK/kg9svtfUnnpBpraJheRo/pvuH6y55oqB7/lNY7GVKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEifXNfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEifXNfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B9AC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759152593;
	bh=j/wTpMYWen8UX4y7gO0aatEnUA+oaHW4Nx64XRN+lNg=;
	h=To:Subject:From:Date:From;
	b=TEifXNfP8ON2fkiaiaGKXjpR36JGsfE5PPqOKEQP/E34sYDjztDNHEAQzZL2id2SY
	 ZUzcULCG2WAuTKoGHdWr76dYYBvG1BPoVQJUonroTbOjgHPBc1C7RrP1csjSSfvawy
	 D9aa/NRy25Sp+qk7ErrWitlvvZd4KIXvImCcddWhS1L+VR4y0RnyYCUG8DXRdAdRDR
	 dWxXpMDYnrDdSGOZcS9k692Y/8OMx6UIhnBEPJ0HvM4nna5HRHI9EVq2+MdJg19yun
	 05lHOZz7gl5L4e6fMUprfB5by8o30c3O0tTjuMWXbu0aRpxafmwXJicZfP1WybgXM9
	 xKGC62ImeBNLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F7BCAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175915259359.25631.9678599030790331858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ce6f7881ff6bace66cb067052bb7d5045aeaf994d48533a2ac4454d37840d92
Date: Mon, 29 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759152593
