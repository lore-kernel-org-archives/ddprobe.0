Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5184F3C7696
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787902834; cv=none; b=JsuDXfvReHsKumKfzhu9P9tLqAy5lOIG3ikQUFZDBo9bXoG2L/TrGzkmvvqswZPfbDEe1RAqQchZcn5bkcBo86b9GDlkGLDnEJgRrCRN/hPgg74wIafaqgm81jCTxmTouA3Z78RJy7+LsdR3hxDqOXo2ucasCxLVRmrvORVk31g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787902834; c=relaxed/simple;
	bh=ZjVaBIWKC27lMUdmngyr80ikWJhSSi1S338KV65v9do=;
	h=To:Subject:From:Message-Id:Date; b=YXonqG04meebYFb0+KjJaKtLdvoQK0K61XPxdScBPPcIgfXt9msKJ5qRyQHrQGF7qzYX6WbYiiK7NezCCv5EWX5b/4kYfr7PlnO4dFSwQjwK4DxX6H4U6qSKydbaZJy39RuzzRhqIsqBZcGR9WBRBK2QDXjTF4vHqYXSOG4cBJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pequoL2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pequoL2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB921C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787902833;
	bh=ZjVaBIWKC27lMUdmngyr80ikWJhSSi1S338KV65v9do=;
	h=To:Subject:From:Date:From;
	b=pequoL2AnVVyjFUtmIHl9Qs1b95qHjtttd/hJMnWJy9zje0393Nrlel0o7Uj+IcYG
	 0xbXIdeeId8mqg9qGMnaNt9lOuvPofBo24LtnCewcPmZsQZOKtmkt3kBApHg3kuXos
	 1yyp8c+syr6voElGpvXFzST2I5MQjvfwP1+oUBltIQgcYqXI757KhM1uHzHwP530dy
	 sGKYevtS0egJqt2iWdZ4GpRpAfOVMA3rEvALcyD1INE4tOK8hrvO/dYdDackU9peGh
	 dhjMTWvvLPS4L79jT9wjFFMluNGfFllSLIcpsUpRpTyPIyM5uDOwzop+FRZ6P3jdsm
	 tsMuYqKaqVkJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78D1C61DCD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178790283374.26597.11483640842914165363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 399c14e6e40925de1124bfb0622eb35b938ec13e514a9beaeae6eb3d08d97561
Date: Fri, 28 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787902833
