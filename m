Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFCD5227
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748868594; cv=none; b=msPfGjrKORaOaZ3eAn8Efy7DMSA9tkuwy6mvj1bG1TaZnGb5RVro0m47xWKk1xulmqru0aljmrSxiNVJ6FgMPjFODrBEvFMNikrHQYCfyzVGB+5Gv8xrZEqgn72f3RV2a/B5+q6Z21RfM9PmFmkY4bDAFN7mI6BCuyUPZn/JP6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748868594; c=relaxed/simple;
	bh=YPtL3xGvi/haU2m1M4RxC9VDkmQD3ZDOrQYbRDrVKXQ=;
	h=To:Subject:From:Message-Id:Date; b=B0iST1OU6VxEocBunBwxpR1dtRy0764U7kHKL7neGHIlO3QDIK1LkagGgT6aCgtS9ZYcx3u3SGKvinW6mFGjufqJg4+2isFLrG8MCJpguAq6+J98N8rhScgznIynYL0bM24hMP2juBeDp8mdHHgVuz9aDyGld1ivtc4pCPJHX/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=txdULgV5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="txdULgV5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A521DC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748868593;
	bh=YPtL3xGvi/haU2m1M4RxC9VDkmQD3ZDOrQYbRDrVKXQ=;
	h=To:Subject:From:Date:From;
	b=txdULgV5Le6zYiUaPoLQEhRCHzDT2mhqNMVAQagOaCv1WyYNwGQ+iP5I5eRWsX/HH
	 F9MrWekN9VLX7aP5myBqh7QiXI/yJQzne5pSxLhMcdqQCNmJFPJFzrCKlsldM66SVR
	 TTk8exr35RuSy16KuYtISsMaVXTqXbhwhpPkLHLVSLuCt2e9w7kVtrWkqsdb7798dU
	 YO9Gy0m12VQV0OA/KjcZsI8ddcUAwx7p1usRLK+kCDjVACd5uvdVsFcld+RczHzIqb
	 DlzkYPClSc/yRoB+4N2J+VgoXVX/no3o8JWgtuf4Mq7tzZ0M4cVB2qFHfQt5dhQQCE
	 KjW+GL63129bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949E2C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174886859357.27355.11518703409680757758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e54fb0fd18b2b0fe6976566ac470bc673e7842c9aa8f7da377de9fbd58c308
Date: Mon, 02 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748868593
