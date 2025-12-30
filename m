Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D18B931A05E
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767109433; cv=none; b=KLtouSeGIoWLiZZEZnIjZcYfLGLRVyEDetHWGvNj3AfnCCXYWK7yRp1M/n5pjZTIvSwe39hqVN8Vi9Q9OLppXgQNP/vw+Y50yf+z0pXNPZdaEgOpOSiB1H4XBOaF7WKvLloMaz+nD9zdo/EnqrrkIaq1Cto6cxx9Cf2ksYkltGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767109433; c=relaxed/simple;
	bh=0DfNdPeo4boWuJW4rdhoyY3u05S2w2imNvFvHn+iKDk=;
	h=To:Subject:From:Message-Id:Date; b=cCBh7wLRPTLvg1TyNTe8h0QWTVyrGlQ2pN1JteVqPwzCq5T4BudsbTd1C0hjwH1hel0tBcG/orgFU4jzfiFcfcIPV0rWlkv8LDww48jmhp+409z5D60OWC1OiaII9rUKrpRO3xrykavSBcCi5JeoaNpF3TNN8H387J47m013Brw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPD8UbkO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPD8UbkO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F418C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767109433;
	bh=0DfNdPeo4boWuJW4rdhoyY3u05S2w2imNvFvHn+iKDk=;
	h=To:Subject:From:Date:From;
	b=EPD8UbkOjzzeGRhSfLs9iwNQBKHQvseTrlfqgnYzWmhSKPAkh9KTM3bnz2c5Si9AB
	 nqX2dgnfQEOEGFNfTB4foFKj2zYQqnrckYhRS/6av/Go2DdAlESeEqQv8WvwLqpbp7
	 firoYvKyL12OdoOnFWpDdQoXpTXn+N2ikQdttBNvAvKW1+T+H50LZ1Uwi6SakLSKRe
	 Yn3SxirU8MkYhHyNiRhQIf3uPgBIrpG6cnfmq1zWTKy61HLcVa86kqRaILTvMQy05u
	 ULCyL0fejvk71/6tnjl/Uf/miI6aAP7/oPoyONIXOJ/WkRB+HwH0frttx/3QD/XZil
	 TOSbMBcR8EyGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F5EE0218
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176710943357.23619.14126088939293617905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49238838a6d4a50a3e3f22465da5cca18b7bf476a5545e9024ffe1c796101d5a
Date: Tue, 30 Dec 2025 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767109433
