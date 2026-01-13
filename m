Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4F2E2DEA80
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768274633; cv=none; b=aLciHyAzUqDD1yNOBtjQjwYRgdFn6AClEAzA0I8/xCq08CyyvX0XZ/ii9TOr/O0pPG+Vo53NLrsxb4rTyiz+IYAsN6TIUbyjPDAsLgWFV8rP+LVj7L3zbLPSWvCTJosdC4Io6XqwQyfvkiqaVMEr6YS1t/q2kPmQK3T2uWoQsaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768274633; c=relaxed/simple;
	bh=vSPyRl/YAu6+ZE0PmpGIhIUksBEkMyYs/sg5KndsZzg=;
	h=To:Subject:From:Message-Id:Date; b=EIPxuBDmVLN2tUwghkFyPUfwaqnHwhZjKcLPs43PYodacMy7ulfAcTND5CXH6sl2NsdotXhoxkrEiQ/XKLNNpjxUNJ1PoCNWcH/1k+GfqcuklWl3CxdWcLNmOk/x88Rh593uAl9vZvEN9kp6fvA0UkV4iO1POX45jZ4vzOuWKAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKjPsctT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKjPsctT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 980AFC116D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768274633;
	bh=vSPyRl/YAu6+ZE0PmpGIhIUksBEkMyYs/sg5KndsZzg=;
	h=To:Subject:From:Date:From;
	b=cKjPsctTL7+O6a7aFkWWadcApb+XQnS0pLW94FulsZ+GtuA14N9Ga3SkPmTwMHnNP
	 VhDngu03vtQ+OMD1GceMhNjbTcVWnFxuIHgVN9CXF0uT00Vl/8wNqXxKMyAY8y54bV
	 +yyYsnLWXvQjgCJ3tutz3teqmIWzPUxvNSbTfvq3lR6deN61i0RE39E/Bm7ujQDzYa
	 mHnM8a3jBBFxNeqzV1tM/Zqt9sc0pGexiaIePTA56logKPGwqhUgXrX0c02Th4RTLY
	 j9u1G8eCuhh6CzIH5G21kxfoROf7O6aD8rl7P11nGBKdXcWDrs8bywX+ex4v7ZpAtU
	 wMU6W+5O59s0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F789D29DC2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176827463358.4916.13707994795013463417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 633492b0e5ed050cdbeabd66c341d9f08529dd8c0b225def83703f810660713a
Date: Tue, 13 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768274633
