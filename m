Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255D41F4CA9
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766244834; cv=none; b=N1XSZZe8yWQkXT4XRtgLETVfnU9n+OEJQ/wyqAdvYcNtjUlxzqNdb7ePk7MYBS9DXWvjwQfwODQmVzNdw9IGTCXKVtM9AtbnZRqcEXVoQEnpSBG+CGScP8Uz6axiBda+pwro3uUrgkGDTgUQsDfx1Ojqw467wrjOUR2RPiODadA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766244834; c=relaxed/simple;
	bh=Gf7oizPwT2cEAHJVtx20D/5sWGFaYe0tEXlPcIGMyY0=;
	h=To:Subject:From:Message-Id:Date; b=B516ZJxCgU0PBKh62BJC6p1QIxAIi9M672DCHoB4Lx+uZUDwhDAO99I6/68VOLoJF92EbHabW1Tvl0uICzyKjE+4sW94Vt6PpBOG9fnxtvUAgAHSoNMbooeuZKrFheZnhkJbkh/xdZhMzcFFl2zeYtlsnjm50tbmD2yrXqVUw/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Is9xnL96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Is9xnL96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AA6C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766244833;
	bh=Gf7oizPwT2cEAHJVtx20D/5sWGFaYe0tEXlPcIGMyY0=;
	h=To:Subject:From:Date:From;
	b=Is9xnL96tt+yLk30h0tSk8qOs+FNwLEBZ67qlJRuX+0SNYBAzkSsKgST4edKS/MrI
	 248Wna5XcO1wtozXiSHGBW90cf1sZM2jaMffgqBnzBTY9vCBfM9eVnPMAooZY0Uzxe
	 6vjUlRE1hJJSqWc7k0Ad72XR9hEm0A0+cK85AIS3P2uENqGI1h4Y5eodkSChX+s1ZQ
	 DL56gvTsiDyYGgy2UlP5yOhvq3ChW4YPqgQ9DW+Rxg+0OKVQVdUbIeeEAtThrZ1+iv
	 uc+WKD6wUV2uayDQRYZJzwJARNOQLm59/mDZPQVhqIGGO6wVRy+jr/2nrl4SAFbcEb
	 KQFBurvqjGehg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97005E668B1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176624483358.931.3553338108001462657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 658eae2b1344a6fa7a87119251f82a6923a8e6808b7011c730c69755ff6a7451
Date: Sat, 20 Dec 2025 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766244833
