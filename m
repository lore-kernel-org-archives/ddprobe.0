Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2562F3F23B1
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786977634; cv=none; b=U3x/mpvyzj2PbgHmaqL1x76zaklsoi2CwKdCRn9XDy5bkHDkvFtxsKWsxn5ifxmzrwWWKDgBJfCzh2UAbnLSM7WBlDCtWuGoWGtk3smsOpAmxIaOtJClNgjAo3ExypcXKA3kSow9XLwvntYky2FWGd4p5v6/d2y6wi88ezsKHKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786977634; c=relaxed/simple;
	bh=HNQHkFt7uzC6v7BrexZjmAP7/1CgKDNpstLBGHwmmTw=;
	h=To:Subject:From:Message-Id:Date; b=iJWsfJ/kZ+Y+4NPu8erDX7hp7n4tmd6mqaDuVmWzLtcOek8v50m+iG8llOYucm8lSd/OQ1n5s9rqVHe600lSmhiMShK0EONAuW9qnNON0O2KQ/3vbmrJSsVwvUfDmqhgx51050kenWYnOmRcMa1Wc0tXjdhdoRkfBqMH7bQy/O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJ9v1OP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJ9v1OP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC95EC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786977633;
	bh=HNQHkFt7uzC6v7BrexZjmAP7/1CgKDNpstLBGHwmmTw=;
	h=To:Subject:From:Date:From;
	b=AJ9v1OP5THOKA/FqcFRhYGZlSx0fmsZwQQwECRV/yQ9wQ4OI6l4kYg25dz13GrxIg
	 SfFVLHgYaz68g8C99KAsdAP583yZzBsArhBy7Qknnrw7LoNIM31g1aKfCC319Vo139
	 eOAHDy8qg7vcjhvgCrP58tqZ9v2D9X7gPc0tREJ7pAvgeFatJLLf47uYQySkEnZu99
	 cxlSpzItNIb3RS0XYT1OE41bknR3AtvQe+B0HIJkUSvPhCvyIpSgnTV7uv6V+ysL4k
	 D76PtC/fk8TEko2Hc756DP7rau54aOu8O/xxzXkVSi4L/yo6so6MP6UrFEUapoBNpa
	 XKyZlmw5E5gjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA275C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178697763368.10280.10296840122130435200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80b50db54771e20d980c5e02a1ecef21f5a81203fd7e723eca9e0f088c193988
Date: Mon, 17 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786977633
