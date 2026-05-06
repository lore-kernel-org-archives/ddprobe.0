Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E4B4266AC
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778075854; cv=none; b=nUwvPqxSg8F4keSVgnqoA3JVjYeqw3TBzi76RJ8t96TUeRyrPo/CtSudc6hopmSn2cNXgX4vq2Xqdhs6Tuqac8CBL3TqCrJc7+qSmQUNneZACrXRE6JJZ6jnyg1qW6EZpBrR9BWE9kgP6qPfZtNROXaCqNU3288q/Yx4h2QRGK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778075854; c=relaxed/simple;
	bh=6BWCtzNZZsRl0zHD/hEbXNA4JRKz41qF7bLDapriUaA=;
	h=To:Subject:From:Message-Id:Date; b=eUo3m/be9vu5CaOwUT1YFDYd8QANQ7pelJvKE4z3ZtEWRB56uPBrsgg9tVF5VfmALkt7K6U4bT8up0HGRNUmSkprJsGitqDNyZjHf+0mUovNIgsV3sH6W4Va1al4Ur8rYjxNR0YvgR1KprnoGriyGSCceI1ffW2pgeT8WTP3Kc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thKVgYWY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thKVgYWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA935C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778075853;
	bh=6BWCtzNZZsRl0zHD/hEbXNA4JRKz41qF7bLDapriUaA=;
	h=To:Subject:From:Date:From;
	b=thKVgYWY15A7pA4VXjeKcpaJt1p2Ivj/feyT2g0LcgmSQ2Q77fqlzZUBgxaBTQiWE
	 JQGCN1GlZM2oh8QGhgrWVmZZ86nMZbV2BfUt1rtafJGwHCgWwMy86Rp5ZsOtjAH8vo
	 BMFgY102Jw5Js/3qbqzjK3+t/5whE9D+SRizKwaLoZumQHr+y3W0Ye75KZNBfPIHMc
	 EZa3lyYFHk8980QtaUZ/Z7sSyBpB26FAkNB/sOENnc9mZDel4MsFI6RSF4TYEfp1DB
	 nyaC3Qs3XaGzYMbuz+kYOosZiDq593v5pDKT/UOPy3CYqrVT3qhLOeswp3+xvOwqIz
	 +QQrLtoJ3IjOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5ADFF8855
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177807585369.25334.14035284484020308668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79fb83d1a302a310dc824b7e450cf38bcda50ab5518a260c2837d5c6c556103b
Date: Wed, 06 May 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778075853
