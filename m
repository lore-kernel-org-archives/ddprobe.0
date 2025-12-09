Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265BA261B91
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 16:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765296774; cv=none; b=Mi3yBD0BGtKrFacdPlEKtCp6Qvn7MqlSbqsgNCs650QKbL9Da6s5/R3xFTqJUgEn2Jdfb9WljxSe1g1lvlbAyEZFoB0LTkoCFnggHySGCV98vSqY9dxrCaZYwq7jzSzGNmInlmwX5dKKhUAw2VVHbG3OnYdTqH1gZaPDLEHNd/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765296774; c=relaxed/simple;
	bh=pCCVJZt9Q9rq1OZ/i0FQzLkMAs/ARp0J1/TP9noCEqI=;
	h=To:Subject:From:Message-Id:Date; b=o6o0s0Mdn66cmFD7EZJme1Vboj3V3pBa4Kld0sGG5WWOoceS4wkhhgASCm4pVOHwyRrFLMaeneRY1Zk/fWM6Zd6Iw+9MiWP2lkL7gTMzpzOE2E8JUTb+zatR8ufGSFGVh4fQX5QSEHbR2kbN40CmX/NXzEO1PQleQm7XCBWLOMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3vDD4Yb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3vDD4Yb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EE8C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 16:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765296773;
	bh=pCCVJZt9Q9rq1OZ/i0FQzLkMAs/ARp0J1/TP9noCEqI=;
	h=To:Subject:From:Date:From;
	b=m3vDD4YbLShvKyvXGvZo83jnLCw0O/4UNqKw1+dgMsDjnvQA4NqUTRo1h1BtzXIMb
	 899fCO7Cv/EoQys5fClm4jJ+i13UkSgh/MU78JMeEFuLFytoZ5v51KMrfsygxj+LnL
	 emvLAXkousjUAdAl6eD9XImXHPWSqtZZyxz8jmTTcNo8sZy2Pg808bLKR53Ai3WPXh
	 Xp7TInwWFcDf3aTVe72uhuDZUjRZF6lqEs8PfYZfG7hCyncVscwCwdou8a5eRgKyQj
	 xjHvSd9eDI1tVs9GWh/b7qmEvckx2vH/kFHqzlMdwwYygjcsIzP6x+LbjY8YWn21rK
	 WFO/lEU9t5cUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90448D3B980
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 16:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176529677358.20813.8820179618598252631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93faebd252e585a11ebd9a3e9627fda89d532be51111f98cdb6aeddc38576a24
Date: Tue, 09 Dec 2025 16:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765296773
