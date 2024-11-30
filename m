Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5DF29A0
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732952754; cv=none; b=ixxWZnsWtggUuUaO9pgcBvhA4wY+9NRjDcX/vGr6wLFbgQXMjYkb1gFN85OpKjuR52Ci3Y5kXjeycsx2NMe9tMxOicVN6uGyVLS8pD3YAphtsTmEkJ4ejHvoNpAHoNssFICYRbf8JGZGWNg6LegJhEKWqTrLZgsx9msydatogwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732952754; c=relaxed/simple;
	bh=NUQtNT699Pk94q1yT8oWcFR+ME1QB8SAPVI/rukvxUA=;
	h=To:Subject:From:Message-Id:Date; b=SjLNYcqv5kAvFxeOldM+w2pmQf0OdulMUkAm5VEOC/XyGxItkR5mqCL8OwtPyvB72afRW4BM/6Hovrw6iXyQ5JV06slRF4xI0Zq8HSPXGSBZGPiD9LWewa2TiteoY8Gd+foazgN5QkcVq3jPqVBwxAnpFyRH3z94wztvrj2EmOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehIhvK7P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehIhvK7P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3713C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732952753;
	bh=NUQtNT699Pk94q1yT8oWcFR+ME1QB8SAPVI/rukvxUA=;
	h=To:Subject:From:Date:From;
	b=ehIhvK7P9XqlVfsjkuhdtmwiuUUMyGNrtysyqp/o3L/nhJoUZIyMG8Rv3rSIUtfMh
	 gHo7CeyVUUX4cqb51VllqyXR+RbsCY0JXHS5dTfoZUmy3tcaYmMEx2JYnexS49ma21
	 UcHrO8FP1SsqMw+IlcNcY8YKba/zrBUAG4AB1FjyOTRVTETXInGPiZLWEBpnF/dPBH
	 sWCuivwertP7HLKBVEFvHUKj/rjQrV9xGGKEyQmF4n7s20pat9VmhgSnISGLCP52TY
	 QcWuQn+M8pnbcSQZfk3+xENrcMkWvaA368BasRl/6DXTskYuobpUb7AyPD5lgXMIUC
	 xW1DFMPEgmHaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF09D735F3
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173295275360.12253.6629441397103993066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c91c679b1fee38eca8d1f4becd055566fb4e4d05a07e69050642634a4e251ffe
Date: Sat, 30 Nov 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732952753
