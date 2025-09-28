Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C10F1F584C
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759090794; cv=none; b=IrDyVEMwY8Gh9bpGU8LLpOYDePhv5nFb7V3HjTPtjlCGu4K56B5juv9WY2cDoTsOBpL4ob82ypfVOdAOkAn9eyhgzwBZtRhBZWhskOYD24m7HmoVKonp+4yD0AmNNeL3cVkdg5WXMCaekfgsPIghf0YnrqTrnHcMnuoxmOcoOiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759090794; c=relaxed/simple;
	bh=bqIAQYM+tjN+ZslvucFMCPHmtf00DFwoU6QJAmKljNg=;
	h=To:Subject:From:Message-Id:Date; b=oj7XVU7TgwsEZZSIRUoYTQ3ConfAymP6sJ+XT9maV30IVuASlUHylr8iRt0Gqer7FGD+ckv1BLhmxrPN5Zbzu38NTIASffjh3bQPdRKQ3Rgxiu9xqbe4IFT27BgeaYTaNpJX1ExmXiTgkcpg7X8q97svCUY54kaHMf1B38iWp/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNFk3BIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNFk3BIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A695CC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759090793;
	bh=bqIAQYM+tjN+ZslvucFMCPHmtf00DFwoU6QJAmKljNg=;
	h=To:Subject:From:Date:From;
	b=fNFk3BIiP/3ux8byrfpFR842MmFxkwLxYRgz7d49dWelrmt9U9GHoQ3VLkEnJdJQa
	 RDE3PQcgLCuKI/Sf54Sr168tKByih50yWW9WRkDzm0G5OT89J/EnqJN1zS2LFUUMpG
	 4rXObjL+XSPrZVUhVayUTzCcBQBY1n+sdtA57jAbIj2Re4PzjpVGC7JXoKEk84TX++
	 fS2mJNxgDf/2ZJgaD0UUwPdBQvMd7vdXFU2IrlTgjH6cmJ1qBy1un5fPZ+HTkZLUnD
	 ZUuY7bVTL55k0mHK7EEOLGycc6zTQUYsmNvF1lMX2dJ45LuHj2l044j+H//zwFuYJR
	 V167I/n5oU+xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9274DCAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175909079357.26864.4957443220914387434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9222e2aa91b7af377b8cc08d8cda08b6bf0c1aeffd0097d2f514a5b1e16965bd
Date: Sun, 28 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759090793
