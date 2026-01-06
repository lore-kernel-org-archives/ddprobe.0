Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4E91F9F7A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767671634; cv=none; b=f5ob6CpIXFmRGkvwJnzYaBc1pXM6JjgRbJVMs7NtFOagVN3AXvnngCej6s3+OY6RhOHJ12LPKpMmZlZV0zKzn2gMKqGgaTLXrPb07JlGhluY7i4hlbHyF8B/NjTGy0+Fk+2JbA8PzAU0rz6wGrh6aBakzLJ0a4UsurgItLOvMEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767671634; c=relaxed/simple;
	bh=YRU7yqEsFMnFSLn2vxRnJ22t6LPc364LSl3ngMTLt8w=;
	h=To:Subject:From:Message-Id:Date; b=GUx+rwNrXLr6/+qRg8hktphGryG3etXcHMRXUyOR8Vdw1eHlG1QEiGCSlJURus2GdA5zdr+Gczeyhj4HHG6H8ziVmdzzY7m2seuunDPIAIIvxTjdYuaOpCtoctHavck9GGNg99KzJlseCjhtA/fVHIDnZjqcKogTgYlVxC1cN6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxC6pXL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxC6pXL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED3DC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767671633;
	bh=YRU7yqEsFMnFSLn2vxRnJ22t6LPc364LSl3ngMTLt8w=;
	h=To:Subject:From:Date:From;
	b=AxC6pXL/c48yqvlGo+SgcCdLRtkJNAla/HVtFbizi9H72jd0WvrI/8os2Is7ak9za
	 Q2N2F4AZwoWzFMdx34KIMFrmZndPIhVuu3eiaDraLoYdl1joU37zW/B9pIFxANtuDU
	 GiKbz8Z/FzMuyDqQtL8I0K5tK7ERkimF6XOLA9it6n7kTUTsxxmetwyZBmfTwWkn3y
	 DMluYU3jVQF/SkW51y1msDavrqLcE/X0aEUw0rXEiZ3X1dWysMIClb3g1kufSxGVIp
	 vgkOAQJ2oaPGr2dc8aGlzb4JLOxQ5wfklwn09M574WKlckUyDyJRa31limNBEL5UfV
	 eAX5sSRw88Neg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E11DCD0430
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176767163357.23091.11415236735590150423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b34f72507a8ffdae1a7b59995bf5924d64a5dd506ef491a5ab469ad4d683e4
Date: Tue, 06 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767671633
