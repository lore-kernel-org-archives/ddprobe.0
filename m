Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F228647F2D2
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 07:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778570434; cv=none; b=IcoFuGn4zzNjupwGpQLLCLrmOsu7bJ8mAfMIH87tUbklbTTImzPJjxJaPf4IdFM5WTPiisB5e2IkBx73JKFQNorU00GtUvMaNEFoWMml7sy38aBc2xFlC0eqENwyVZ1WLwK/tT6w0SzpKrKOwfPZZep/aqYz4CFrr7vnCLiQ+VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778570434; c=relaxed/simple;
	bh=Mcv6+wkWZMJCAUgABX/QKURorkFovMACQL3Zw60njHA=;
	h=To:Subject:From:Message-Id:Date; b=piVSEObYojpFqJyTZJoxmdSkU/YI4aIV9TS7WAgusSxvwiyaPq6QGnv0aSMat9gKAn5KR5pKdnZdbkhbYstBxUzEg2Br4H6vrROFeMwfodyu52fKEFWuJd55PIRQP9FDnLArxSJ7raI61xMKY3Ml+a215iOPr/9gZqFYPtXSQQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUb+Rbzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUb+Rbzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74CAC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778570433;
	bh=Mcv6+wkWZMJCAUgABX/QKURorkFovMACQL3Zw60njHA=;
	h=To:Subject:From:Date:From;
	b=aUb+Rbzhv0dV5DkPTzRL5r8plmssGV53IuC5NPEmYlSd8VBlAbhjhAgRX8AvjzqvQ
	 3ymM9dr0etATSog1gHOPRYsxJMIRYDONlJqtcT4fXYNoSBP+c2ksALSLBlNgGAVXMJ
	 sj9/LqrvYxhl67Tj0OUhP3mmBDFoJlHgQf/oIV7tFXydhMPJxIJw+b55ZpxIUJfUYq
	 WnLetdB9FgJ5+6HYsNl5EQybrJl1Hl5zWd0wOiE1kA3ePgOuXnzmdB8I8kZL4oK0Am
	 t/9KJ0DVFJkNhNmw3jB26l3xo52L7Kfd5iVJ9wbeQzSlzifRt85HEHEmhT2SWQYXjo
	 h6Ib/hlNHv3bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0BCCD4855
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177857043369.15879.4048516874111263178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 215c5d695498a1af2e7e20ca8917fa3acde158284b83847a51e7d38c18221105
Date: Tue, 12 May 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778570433
