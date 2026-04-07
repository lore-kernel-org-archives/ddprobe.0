Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90B6A2D7DC4
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 23:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775603734; cv=none; b=XY/8y45mN7qRf2CZHmNGuKF2W4ziIgSN2JsFLGq/nHcBqo+342QXzEWjtyoD+da5yo70hhtKxv+41OikgSCUQN97UFLVMhDwi9NFJQe5pgG0osEe7J7E9XCeThOh/qpyRYRi7VvQSu0Zh36MOtoaQ0cc7+cTzDHcz6JGaO1AxrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775603734; c=relaxed/simple;
	bh=HuCZO4OtSz3zUotyoFCUXp0l1Vy/AyoyqJ3fDhvr7+M=;
	h=To:Subject:From:Message-Id:Date; b=pU5G1LQ6FBzmz0uzogZV0T4++albiXygw9h/FYGkAbB5/UDir2N7rBhT5Dqjl/iXfQIQHUpLvGr207XhIaS/sKVZSq09Hkv67MoX1l3yP2+7gIzJTj7XuQoARNSGxCTl3husmr8yhOS/4qy5ygjjq20II+39DumXyUy7vx39BYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnM66raa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnM66raa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2BD87C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 23:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775603734;
	bh=HuCZO4OtSz3zUotyoFCUXp0l1Vy/AyoyqJ3fDhvr7+M=;
	h=To:Subject:From:Date:From;
	b=JnM66raaX8D8TcFkLFnrq4CnMkSUaRDbPDWGa5obiIY4RYpiJTSpP2P4jw+MfAqKx
	 br2EqTLTalMuyeiaV7Pij24njEp0H2GnEILjRmmYW+t7ccZbFD2L4x4mrfV7A6QEMO
	 eAr03m1yGZVlhN4ROYMR7JpO7wftO6Y8d4170/wx4jAKV3RIQC3yCOIeSQk2n4RHgq
	 UPQ3LlSKWjlf4RcSbsOgEzcUtKsP/zCdmvQUJE9AMUw13Z8LOB3qwKGpaja3wq1CFY
	 6Nm/Vj0+CIblzioqyieW7eHgPo0lpxNOYFKucsQxK5clCNBbyit0pu128B2DH0abv2
	 CyceFT+kKMzGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC6AF105D98A
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 23:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177560373383.11035.16409261431010759911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55a882104d009b4311ac07de3b953720dd6477b3ef04de03d585b00a1c7d8b1c
Date: Tue, 07 Apr 2026 23:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775603733
