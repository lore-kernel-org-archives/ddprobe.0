Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443A23DDAE2
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787692834; cv=none; b=HH5Xxq1aWS/cGL7bDGoXZJhLEw/EoTTThbEb+Ho9SHZtniHC88CK8PXvocO4ale3CzrP7w3izMhBayZyCm3m5MptqDpuDXSqm9YqnOidEJaSL1OymuXWMOCiK6JNxzcufBB8RFjqgTRlp4gnG3SUkpGu6te0iXfYHl8D8tXdPA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787692834; c=relaxed/simple;
	bh=+vAbr0BrGRo3251sZXy3DqbB/6a58t8Rd2bk15KTb6E=;
	h=To:Subject:From:Message-Id:Date; b=U60rhGJH8I9CsjATiZ1ZNr/Fy7Qks/bFbvBWFqyNGsvztXwsMB/n9ic+48JuL4V9VKhdlxM+z4PvB8Te3SUSqfZYB48aomXzUxXr81xsFd3nwxLvsbQCLuvqCgwM0z3ynYKlpKyzBWRvM4Dkc9RnFVvp/7Zvzv245JQ9ow+p0xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KcImzwq0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcImzwq0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7E9C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787692833;
	bh=+vAbr0BrGRo3251sZXy3DqbB/6a58t8Rd2bk15KTb6E=;
	h=To:Subject:From:Date:From;
	b=KcImzwq0i6eC9DYvORu3toafexBRqnuwe79k31oqGTwy3fpYg5CA704Rjb7rf0cv9
	 YcffWTXYK/5F0+ECiWaTe2xrmGaIF+I/3E2WwL6MCmvoHK6oOxIfbisB1IGU7qLkBJ
	 5Hdk6LS8B1SfSUh0j06VzvPeBlOnwFG4MigrNstIghi0JeOfd3ckYDdvzZSxhCf0G0
	 KlL8Wp3OqufzdV10RcdcccpXX0aUA+BGAesQ8K5LR6DxT1RhIfoW/toT0kJ3Tl/YZ6
	 4n2b5RxSCsz1lVFhtzlsZSH3nDQQt9oKkHw+r1+eLnn1LpM50kDcbIs6a1JmjTmXHg
	 2RTOARMjmzgvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEADC61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178769283369.5226.4141272083513440633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96f68a5d28d1d130a9edea3cea7f5f04ed1d91b0c80e7b1441f78d5b52ee6d0a
Date: Tue, 25 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787692833
