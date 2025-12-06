Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C19D1E4AB
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 21:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765056774; cv=none; b=r1b8dHbih2V3dRx7gLO7lH4QEazQC+w07An/z+XhJSbzelwo7urAnJqsR92WrYQqpYQgHZVZlmhVpjW8utYB1EulVuQmShao3OaOfNS/9p04H1YJC+y6WhRrw2+aOxLYybkLtopSsEnrQemRJDmUCiQ1tviAHakP29idDflxcwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765056774; c=relaxed/simple;
	bh=AsxeHTmMiQMfa3+a0YwyqdCjQa498AR+g+E0Etpy0a0=;
	h=To:Subject:From:Message-Id:Date; b=kC4p+JUOTQbC9w1C8L93E9q86I6hutHsJ2XhZ9UTP04dMUeXSdZ5OrpaTrGoOdMibOlcK9ENCwtD2KxOW7N5MDMKKVVFN8tS7A8J4qcUuSIUsF8OU8H+f/oj2J0dbK+GizlmYXEp6j2qXooKhr3pwAd4otoRDb+Iea6dDmJq4P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3COqlGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3COqlGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD6CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 21:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765056773;
	bh=AsxeHTmMiQMfa3+a0YwyqdCjQa498AR+g+E0Etpy0a0=;
	h=To:Subject:From:Date:From;
	b=s3COqlGZ7odLGjdeOjdBgEhzPhad4JsX2oerVv89TTe9l/A5tmyah3ly6EeYhAUOs
	 QCPaeHgc9tNZiFULvR5AYUFARXmLkXiANKZzx5hIdw4V0UpeQk3Eo2Xru/20ev2UX+
	 JqjPiYJhChgO9zFN78MuyzEvyzJBajs9i9Sw1t2CPt9v666OfBvMb9MBhMnK4ZC4Sl
	 XF+PQuJslAX40lUBCg63cte232tVOTqZfJoQVSWb/0O3DOFv954PJ7T/fK3MYt85l4
	 TrtFJX0BilehTUiZC8t1BY9TMvTer1H6wLHd9UOJDoUc5HkrE/jcZEloyYhmxUufiR
	 ZJ/AanbjR6c+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98483D3B7E4
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 21:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176505677358.24974.5683380220225646753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3258d13df7a592192915a918800a4fa75bc38c60537be0bc18df0bf0e2e067d
Date: Sat, 06 Dec 2025 21:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765056773
