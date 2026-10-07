Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CC0446A608
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791373834; cv=none; b=fpxlMX1XoVTU2cAyVh2u6h1fM5itv3QaMtyMXi5X37hHbOW0DbH8/JGTwtiK+Dxgt3FHcenhtWVldK3Ot8/uJ1cs95j+VyhqGoVKjTlIQWIkG3m6TR/EP7SgL31KLtW7hSq4puaddGFtBzfjyf+Yk0t9ckb275TROrMOYBgdwj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791373834; c=relaxed/simple;
	bh=6SqBk4Ccs7eE8Sj6SEFjT8L3hODXUnRuJjWFy14rq0w=;
	h=To:Subject:From:Message-Id:Date; b=MYFV24vyIhm0wQ5OpQ0j/GdnPUZiFrjZjdxPP1xZgilsBFvz8qJ+oR+g7iXzHQ8eTXQY7mwTlE4fM7a5ixBmUTtHolWctYHVD+J/75mykDgc83GRbpq9UozM/l7Zz4My87ed3FT7cPOG1msbU/rWX7lQG3CMVAJpF/SSFE7eSKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJYBIEQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJYBIEQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9BFC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791373833;
	bh=6SqBk4Ccs7eE8Sj6SEFjT8L3hODXUnRuJjWFy14rq0w=;
	h=To:Subject:From:Date:From;
	b=iJYBIEQersx/bN4ejb7M+TeEk/VziH/TlpI2BAn0SPFXYBtPXfvTqPoRNP3LYoCA3
	 FpxxsbtY6/3PTeQRzQ8WHxRAsmYDwgerTR6YQFq/aWgZDSdCCmEi68pBSwIJiP7oCY
	 gOh1QEOJsmQ+LISpnJGfIc6Ez0HBXkQBcBVMpsgp9vBgBMQ+mj0C2kARz6oRE/7JpU
	 5QSunexYJLX/8Ipfit3C4jm92RqoBgRSfUDjLU7Fmgsr48FZvP116GHoElj1Gw0eZ8
	 2bS4eMt8GXFDxuVxEMLXWCTxrXmB+VgWtdtQ7PKXInsLcANz2UKhNzCGbbbKXdZ16z
	 4x6vCLM7YBJ+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA14CA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179137383368.25820.1689705845903262314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 121852d8e7f21fe1c773aa6a1c0737bf5ea2ca2968e92a2b99d3ae7dbe77b0e9
Date: Wed, 07 Oct 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791373833
