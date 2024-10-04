Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75DE129E93
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728024953; cv=none; b=Cehw3GEYEAD3gMaSsersHnBtMLsn7fIohg4xQtmtCogpUXsVDS8y1+2ntDygXLqTUCP0waxS8DwH/bW3uLIQEQFz62MUTpLbd3+wa5P2yq+hT6piJvTDmUg4EHhScGjuX0JXDypdrRjKnohkC655wTbv+Q7VsZDb3+nDw4LJhYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728024953; c=relaxed/simple;
	bh=Z/NBQcMMZOpOXLMmg5D3RtDgUsKeLonICSraembGGaE=;
	h=To:Subject:From:Message-Id:Date; b=SWttRcQYkzLF1o4ZBVAUJ7KoRudl+9xgDi6rTpDKJmpcozl5KYHFRztEI4JErawtxZ1l8OqRIlloufMWtEUH4Vo+2pB5o9Qt7c7UFHbPDfc9ZamD7bkikJhNoNNaqvUhSFhdzo2auwQtGnkcsQFI2GfhDmLGT8PTqzb2Tp6zt1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gdh98zcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gdh98zcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C72C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728024953;
	bh=Z/NBQcMMZOpOXLMmg5D3RtDgUsKeLonICSraembGGaE=;
	h=To:Subject:From:Date:From;
	b=Gdh98zcPYzfR8b4n2xeAhqNnuqtNTArDOfvhrIz4HGsk+AEgVvsRnniJinwq+1pJj
	 wwRs0Tyx6BJ+jdKNJDEWAcg3gt2lPSlvetvmcYxQ6kB0qwhLMmPlVTpaeaWmptDyEs
	 zPcwatgR98nsL4eSAhicoriGTf1w6svgmHdiZGkzpJ3b4UWRuIF2s/RW4cjMcsn0I0
	 sYFjjOkQblv0AFB3JYvWSCCX2BqH9ZwsLmOJqM5vCgxZ1LXmMdzN9q/HCL6jtcWqNl
	 WrFJpRKwke2HEqPqVEpxYz1Oj7Sg/+lbdgF7KI70K98tg/QSzEAzM+/bj77HbXZL11
	 i4dbiLvIVsEKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D79ACFA749
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172802495363.31671.11698514039195423271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05c1d61fdcf648f1f50714bd0bd1db2e6ab6e68f2ef47595f367e7a211487136
Date: Fri, 04 Oct 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728024953
