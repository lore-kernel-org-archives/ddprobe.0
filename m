Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252BF26AA88
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754689194; cv=none; b=fUGDQJl5oku3pFOhaiuKS7HaaBVoDcDtBJOWMqmWbgGoMw+SEJRubXgcgus/ZsjAgAHrUlHGQdnlhJExwd7hePqGIRGTMkfxhsBbK5murugDiV0E0fAfvcVZ4dw5ld0WOA+JEKOedhINDao+Nkzmi1m5R6zZ2iwFngyLufptaKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754689194; c=relaxed/simple;
	bh=DBS87WOIFkg2LFnEILL7oxLtJOI3iEJZKm/7hLI3Ozk=;
	h=To:Subject:From:Message-Id:Date; b=ja83gNcJtE6bm4084AVuYPds3zLO3vM/qbmqZchqjLagq7nPfG7kQt/7dPg6eGtxTfuMt8ku8NvAo5cOujfoFPRndHanx0Z1a7yq+qXbKfLqPj5WrDOO3JZevTsMKYvXESDbmawQhrchxR0Ed9fLMTJIi9K2raohvxu24yuOC5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeDSC01v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeDSC01v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39A0C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754689193;
	bh=DBS87WOIFkg2LFnEILL7oxLtJOI3iEJZKm/7hLI3Ozk=;
	h=To:Subject:From:Date:From;
	b=VeDSC01vYKUmlTRwOazKYKkKhjqz6aFxW4Pwss+Gs7wY3HZjU0J6wwGd8bCBcVd4Y
	 4NJekmRbFFUDExpOPltddpeHdNHtLxKnkWdGGeZmqxJRgq1pmbQevxThmZPYqk9z/q
	 S6NBJ7xuOM/eFTIqqYGTBZMOI9CjgUjokhtx2zAnF/mirpmHdSFxtmVyCQAn7Y0t3m
	 tbiv1OK4Hq3Yy7EE1dk/NAzuVGJBQQRCnjtVMDncy2DUuF8H0Penao0+txgxEKahEv
	 Olg8a9YoaukDtBIiys17XLt4aoxwsPX7WuDQWUos0dN5I4pgniKQm9TFMe0D3BLuXJ
	 SR2P7LidDU9kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90573C87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175468919358.1135.12974783566718804954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ba39ccd5b46254d473d52154fbe5e3dba80a9626e110a48f55d54d364b27ba1
Date: Fri, 08 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754689193
