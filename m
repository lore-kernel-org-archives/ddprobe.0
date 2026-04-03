Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9B16A001
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 06:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775198734; cv=none; b=db0vU/O0BVGSOnvcx8a4SgEg30kwvYQvKLGt9M5shMKmySEOeDLfKT5EFG8PZEI1lPX3Yrn4hEMU1jMSb0Li4YoNrTtN8boaQabwpQfRNEMjRH01Ls4vQ86Oy398aAD0yqhY/ViYTDRZmaf7isbxRabB+IR5iCzrkYRbHwdqNsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775198734; c=relaxed/simple;
	bh=y4Qfktvp/3GQkkXR7Zx8LeIIRVST2221mNZMWm6QKGw=;
	h=To:Subject:From:Message-Id:Date; b=AInIJ/XCTdvhgMm0fsceVy1SM7WNP35y3LejEB1ndaKqgKo9YZr7kvoZfwua65o6A55vrHtsS1Z6OgcGMwOhmGsTlmbxSaShMcVmh7oxnf8cxe3AgboKJTi5JTMNfmWOoQnGlSQWj9betMLuVdO2rTDGaKGH2mDSHzdbVQCOad0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBpNNtv4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBpNNtv4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBEA5C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 06:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775198733;
	bh=y4Qfktvp/3GQkkXR7Zx8LeIIRVST2221mNZMWm6QKGw=;
	h=To:Subject:From:Date:From;
	b=XBpNNtv41gasD4VYAu32tRClv+3JKFkpZZliUokLbMUQkfpZLImpMJEqYjVsW8Vnn
	 4sOTxqRu3siaXAwwXstFB94hoV7arzGwo/7NIjrdeesQELTxbQwabvcJf5FtymUl/n
	 gJ7FP9AgFpkipMjMNfu1qgD9Nquw0iIngvI6VP36TSd1Oxr6Dh9Tj8ewGZWtMU/IXB
	 xI8l1YAHIlKVGE5eaLciwvLhKvxot7dtkQiwLESXAxGwhSnvWWoQbQu1KbBMqjQfA5
	 6FqEjoZbJNXoDSwanfTXIOmsviqao7XO+A9cJY+Xjam/XT4pO6rvTK35pqVJNum8YQ
	 QJcXaaZ7GDxDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C4CD730A9
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 06:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177519873368.20176.16664151622161500071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8691adf8644d1a24d7f889065d141a85b3cbd50c310a7b46843e1b162b0fc71
Date: Fri, 03 Apr 2026 06:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775198733
