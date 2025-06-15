Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 694B226AAB8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 13:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749995994; cv=none; b=C+8D0tb/3U3U/LCqXiQtVJF+2YxCA4+4RRKoGjvGTiAHVHAEKpJCPxc91OEMBhTF0co0eBDeFU2lPvJD9svbKBXIM+80HATQb352c75pXzQ6tK3lNdZfYUMbdvIGS8Mqz7MoHBEQYZTojfzvFiyB0ATwCl+r9l8KBquN6iamirQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749995994; c=relaxed/simple;
	bh=gECGNWfu06TlEHD70pFQO5TBzDdKHSstz/9yblGNw+Y=;
	h=To:Subject:From:Message-Id:Date; b=i+BSBmHnJsmgXf6SKdm3nQeTN5+hzdecJmeY8SETnqPDA0NOp/ZWgVLE0O1TcviWxiDWc5N26Y6hOfM4EuB71FhA/CXSqPo4BYU5uvwkJ1Mi0vcPrfL8cNvTwoxKkL6zM1e9NOF1cNRdUgl8e9JYcLQIuILgKtsXkpttNthrjPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChKhmPwZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChKhmPwZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BF2C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749995993;
	bh=gECGNWfu06TlEHD70pFQO5TBzDdKHSstz/9yblGNw+Y=;
	h=To:Subject:From:Date:From;
	b=ChKhmPwZpmCbaIIMnouI88d/mnMXvsjTMb6KtVITK3IlMnICLc7ewo0EJuldI4xQg
	 5qlguYQ9uqPNuHqrSiTFln9pEMq/rmhpQtpL+STEnG2+9Fl63gMiiCKXnLobMUW5tE
	 cjToKyzguVeEnNwDoD66Igbm5VBXDqg63oZFO4jL82U8325wtXh4vF8qilPKcBUgAA
	 23Rl5b5BDF+g7b1/Z881nhR2OAT7j9LkM2PyAaN1BCS6YxhmU5+CgKMk46/RR/My+Z
	 vICEa+JK9w7no/VrYILx3qfds1F2fEUEC053uYLOfNNR8TH/ZDOj4nFsG/e+4GSWXR
	 ZHSuHp3VJiitg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA32AC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174999599364.29700.3140234741205901091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca6b0ac09d5d1ddbbd6100f369719120e0141eca15dcbf98f154ee4ff34b5dba
Date: Sun, 15 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749995993
