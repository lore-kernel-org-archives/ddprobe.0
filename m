Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFDE2DE702
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 10:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765536774; cv=none; b=DAF3f7Sg7p1TgtdqPHt6dlAGGbEMRMeGr1i/dDFKgCcj0NOxu3c0nxKkK04esRyLbPbu6FlMt9mHXF+3B5CT3p8axgrAartLwKEzstYghpwaFtL0bkAiJvbxCUMemt1YV/u770ZwDquAPGGF+WcjEMDXDwoV1T22mHEhhSO3nPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765536774; c=relaxed/simple;
	bh=DITXeNLiao7Sz3Wyhy9sSiSY0obpiXDWu+BhnGOTdCc=;
	h=To:Subject:From:Message-Id:Date; b=eKLYhYRO1laMeIbSJZ6LyB5z1V604iNAooHPn6Ni+LM7dic4VOl9iegI4vub0wkpv6JQkBn1Trhd1Bq4CxKjy0iLGGiLF6J473Xm5oWrNgjSnmXKrgANp9weoiEDtleXN8E4x9KFEmI4Kw7Urab9wTv+lSGoMmd3RHV+rWMkNNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/Zj3CUk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/Zj3CUk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9092C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 10:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765536773;
	bh=DITXeNLiao7Sz3Wyhy9sSiSY0obpiXDWu+BhnGOTdCc=;
	h=To:Subject:From:Date:From;
	b=Z/Zj3CUkDEs26GJI8LMDkLe5uOQv7et9aeSHCV3tvWgTIEaWDaY80QrNZd63m5jJJ
	 o7K9Wt+Umeo5Ywpzjo5yZESTSSazkl7f8JfMJjXAou93+XSUPlY7yAeCSv0hteJJF0
	 wdBP2FKozJIyE6Mg8bbZcrpy3IibfVymnlwsPf4mXQlsuYcYzfshzbWzHokgT0ukGV
	 wmsqNhMj/N1pKKDqYdWg2MxdZxVwKxPisjPRjeeMTWQdzy4HDkScvNqdOE561qo9Uw
	 IC9YafWJnU3WytSld48059RqI15dzdutynnZHVLmL2014xXEs+0n+m5uCm309SX52T
	 dzXncV6s0e0vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96852D44176
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 10:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176553677360.29993.4832226688321936806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e2b4140d41f6d754851b3fec302b27c876fa51e3dd1a7e584d57fc1e5f9b112
Date: Fri, 12 Dec 2025 10:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765536773
