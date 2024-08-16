Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4379C43ABD
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723794954; cv=none; b=rXt+RCoYz6UWxH5iyjTOT49IMiKUNFYKw3bDBBI7d5BnvjOXAOprg5ToBxRjGoYEDfqaaM3RO0mpkbxS0lte5OR5DW2dZe/rWw5dEv20WUSDwA+RxZoJ9Vvr44kg6hTp/i6pw0+W7vHMAGu25irNV5exZMuAjWPSGf8EPtYYeAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723794954; c=relaxed/simple;
	bh=ZoZ2XCrdTb/obeA7fU9/PQ7udDY1uVIbUbUe0mk7OMU=;
	h=To:Subject:From:Message-Id:Date; b=YYueY7PkfwCZ7Mzt+hEjxzxjaq9LhcrX6oDDhoVLReKd5g2NCBN98g46G3crxFXFGTPVUp0Cyh5o7z2K97GUSvDnkAdyDZhehdzyELOgtysuI5AXKx7mfXwCBMmsZze5BYHLYGR4V1hMp0BKyag78QSvI+tjdPfKtEAsT0k/LEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOon+lUT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOon+lUT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B259BC32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723794953;
	bh=ZoZ2XCrdTb/obeA7fU9/PQ7udDY1uVIbUbUe0mk7OMU=;
	h=To:Subject:From:Date:From;
	b=JOon+lUTECIOk7xNKXLAVSySFPq1o6Whiqmtz2HxzC+LYwRDLUPeDendz5dM5oZ9V
	 OsdBdmfiy4JQWBRDFBkmVcbaJR/vYLNvlD+neTOGnW/u8UcN1MwqiuDRsxbap1SglA
	 7OLhVat9kkFF3W5mUQOB7uHkOxvOCkxkCYXqrsCZEksh85J/ZGaBhSzUdyuJra3JeP
	 Bkb+75bmdnvgso34DBES2nXc5jOX5+OsOuaXoPPK4IuEpEhgHNULta4pn/tK1vdva2
	 3psVwB/Miff64YRMSklHmv9kUMf02SNGhphv0SspbEyyFz7a5cG58V9RVAPklSvdOj
	 8wLX56oBpVNOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A24C4C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172379495365.4564.13733401910597412156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b32b8734ecd29813a7bb6bfe60601de57538f6a2e9e603699866abcd9def5d2
Date: Fri, 16 Aug 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723794953
