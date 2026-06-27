Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3351931F988
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 06:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782541114; cv=none; b=MdTaX/aUBs0WoA8n2vhsJHazmB9Lp9Brid9+iiJ2fvU1QwtRF8GFxTWbewD4YtR7W9lZV0bPsdejX7ypuQIjgg8Cg2zveI2wIy2PpsfQ1/f3X6MyeDC1NiJBbsb8FG73QrkuK5LZ6pe0bsUCrkQCQ5gCIOW/p3Go4mDASUdhviE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782541114; c=relaxed/simple;
	bh=6CyI2A3rQWadfsBQm35bWK1wFRGU1hFxJphfvjvPdWQ=;
	h=To:Subject:From:Message-Id:Date; b=OTRPFZvFJip4E+OtN80+pGKe9sAKaZEr4R4TUBWoBfgyU3DG+gy1pAlrghSsQlqa8P3DnjtxlnpwkkAEXkh/rgIPI6X/6MAGQ5EgbVShElQBfB+LTYAf6U8ae5D0BUusrjco17vxpNZXr7pr3zMkyVbon/SvVaayqkMn5kYGXZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lp5pdlmo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lp5pdlmo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4D9C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782541113;
	bh=6CyI2A3rQWadfsBQm35bWK1wFRGU1hFxJphfvjvPdWQ=;
	h=To:Subject:From:Date:From;
	b=lp5pdlmoolO33UN3qxALwJevWNwpqJ8qyUG/iWvbYD1JIdZ+Wdd57iiV3XlzwVh6y
	 WOk5wXansyiLf4oqNoG57PIZzK7ySqjSdJ6TL4+mhyg8fU1WNq1EV7y7tcNqdgtTDj
	 28W0aLF4ptUazZWOhged4MrF59X+B7gi+a/kYj7swMJy4/7z2XKTn5qi7GKgohmSqX
	 GHp5nNnvZTKPngCK9r0px2Dt9hY9n4VYh5t4exN/f9XcuSGCewPwnc3KavCvv33dtw
	 eDliLFSmiWYjceJPrN48q6uiVUki5nv/8OKCq3Hmw3Su4ftaOCbYlsO8oAZXD1hWAn
	 EGFTlAfLeGj0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D70C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178254111368.19975.9616495259727033180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91fd1bada91a048e2f91f442804a770e21e5f73ec6acca29a1fb30ea913e5944
Date: Sat, 27 Jun 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782541113
