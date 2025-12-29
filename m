Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154443A1E66
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767027234; cv=none; b=kB+vXCp4r4oq3DydF5go85QkA8DfR4B8e67NlRsC4tQ4OWFwcxZtP9jSPeU/Pj5NIO5nVybD++B6jT065tMZSuKRM/d3KJxVPqDoSOgj9UEbszuoRG0SdtfsNJG/rfv5PxLcu+lgVPcbmhPVTwAk/Nb+5Wtpnonew3iR2aLHB4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767027234; c=relaxed/simple;
	bh=ZuhPAJ4ULF2GVZv15QAidfl/YJJteLHOOtZj4XjMfas=;
	h=To:Subject:From:Message-Id:Date; b=aadMZIdiZAZr3256lxty9zSGgxoUeY0Mx6r0AXlmnsli4RfjFPVZbHUJeP8kyz9VOexdkntoue8dAc6zx3Ib5q8gTjnuUZHDeDXI2mYY5o8glG2yceASENUxaV35ki3zy9LwSZ1uIZK7GTFO6tmoCPmW/gd5whfgphMfXE3iBuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNG1bnYl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNG1bnYl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47DDC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767027233;
	bh=ZuhPAJ4ULF2GVZv15QAidfl/YJJteLHOOtZj4XjMfas=;
	h=To:Subject:From:Date:From;
	b=cNG1bnYlq645B0zzNK9aqK1Sz6gf7lB8Br8JJ6DqXhc0xjrt1LvzUQvJbvGIS0qFT
	 cCu8S4A3hRsyQFN0GQJQ/Y8rXsUkba4/W3mavd4HKVSk3GegVkvaOTjBxFlYwUw9Ti
	 EojNCvx77bfOwbrYUbgCHi7I8Xi0J8xy1juSqsG5cztwOd0pXwMO9b+mTVDFcxzKUn
	 0WIhu8Zl7deiGQOpJKkQGKeuA/2l3p17ENLagFqA4uDdZ2TmNiZnyb+5u2kfZqn1fD
	 q0ub3W4WQ1krTQgdJZraoNqHm2KUu5XMNeK9PXW0h0lNZxxLOLgI0VWnZT/sfRrFKT
	 WBN+TZDWmqrCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B07E9273E
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176702723359.30127.15295784479509950487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 842e5170bac08a15616e88fe95f94b999ddcd5f41fdfe8ea43f28dc37ef3b463
Date: Mon, 29 Dec 2025 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767027233
