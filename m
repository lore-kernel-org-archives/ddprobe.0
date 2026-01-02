Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DD6276051
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767355434; cv=none; b=lA4dhyZg9yymz+DHXIEmLCfiZKZfewCRarTLGN2Ng0AePeHDt6DY2ufGlk2rg9ZWIjrzNQ/BJXCA/F7/0Rz9dkW/DcqpGCYI9wGgDo56I3yOdai5Oub3p310bdXT5A6ONImPasdMgXwA+UpXrcoHD/rFlBDFZu4WsKVDH00jLTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767355434; c=relaxed/simple;
	bh=6LFa6ID6fbgKWheH5M7W6N4XXllkDOi+NcjsjzKwJjY=;
	h=To:Subject:From:Message-Id:Date; b=JP2u3LY4Is7R91TkiQaBx59imOnyEqhrxi4FxJscNthsM11EjGpedxTZ6Vvk37Te9npSmatEiTGVclx33MIS9ggY2cj2NAQN3QfJkGY7MObjItR3sApJlmTOddZYWZwsKjW9qJEHlNQ4UB/O5ZWcvrGmoRr8Ul+Znvbi2mlCLiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9QzZScK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9QzZScK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26B6C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767355433;
	bh=6LFa6ID6fbgKWheH5M7W6N4XXllkDOi+NcjsjzKwJjY=;
	h=To:Subject:From:Date:From;
	b=G9QzZScK3PoVFDf1fLF78ouErBLZ/Bjx5jWeCW68dooCX2dLcRG/oxLcMN7cpFgka
	 5YAq9MSm+0WY/TvIlq0uIeR2U5nkLSfOBpd8LGgBizER6jMa3FyLWabGweogR4Kk5f
	 uU3qKWkBQcrBCGcpPnHRzur7cYekhwcLXRYH28hNwCOoYsWLXF9JqKZxq/BeY5u+zN
	 D/XAbNjcuhQbneqmoisDMtly8ieUtTwlXMvLZa1EepoCMdEjoypAxk+y9O5b2Y+/VT
	 GQcMxshFkysgI8/045CziPDbsTddatSM5zKDMXI77u9gyzcyUyF5CBBLATs6OYmpFm
	 mtSLVpRmF31YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CDAFA3739
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176735543357.20801.14912286570279283109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c13939d258db9d473db54114d8d580f6e9da42e4f41b4acdaad3d6907666e54
Date: Fri, 02 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767355433
