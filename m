Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B211284B2F
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 05:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770962094; cv=none; b=eT/NE3cmqmuXUVbIYStXWhqR2cfKiW+MtSEJB3S313ebKjZkgOKOZery4KtnDl0UB6/MFklgFEJ14cF95ZXcbpb1lech1USFeGgo4YDsVd9ggUwpzWQYtYWdIOYt096/Z5zIMVBP6GGsYV7f0wRGO64CVp8KqVcWJ9leY6hvqaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770962094; c=relaxed/simple;
	bh=FYHBrsxPQLlJe/tcIo0wCVX8+S2mT+DvM5gNd4ppN5o=;
	h=To:Subject:From:Message-Id:Date; b=ZNXy4MZbk6/K5xaEt4twZhMKxNKNQqo46zDo3vkpkX7kzzo9cen9HOM8pUs1z5N136OM624FzVQe9cDn72pGXkFI3RjwtFv2qaByfdw+GlWjO9e8VJ7emXLVC8Imjd3RNqGz6iBSxRqDgwPTbBFknX2ofNzpnb9/Q/meUnk/NK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PI8AUZbo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PI8AUZbo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1E9C19424
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770962093;
	bh=FYHBrsxPQLlJe/tcIo0wCVX8+S2mT+DvM5gNd4ppN5o=;
	h=To:Subject:From:Date:From;
	b=PI8AUZboL3LO6puBNhTbYqhLjfP1MTL8MXLRcPwvsYY5/6MF3s1oIOTQv5N63X2vK
	 gcmsnmdkwMYcOH/NApfe8uwrPepoLzNV+YLF50+Axu76fpomvTlSwzkIH4INjsA+/H
	 iKWEnRxB88UTYVMD5rfkKcvEe0Mpi2JUqfrmhCWPJvTbXvhrM2hlOPk8AmZrssw4Gs
	 EJ2khlwUTpatJf8Qa1FPr9UGm/lx+QQOnsLJgGRup4f8y3TK5uFjNyUYc1OndJTef3
	 klxGWC0ODZDFI6jGG9oLuvx9VpJ4cv0MDTRgTO97NPKiwQfLxa7LdLOSf9E2FqrEGC
	 pTDZs445hWJjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A230DEF48CA
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177096209365.25969.12044864586691603429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ae8a72b755554abd8fbd55d29b9b5469881b1c6cc4535cbb8687a820749af98
Date: Fri, 13 Feb 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770962093
