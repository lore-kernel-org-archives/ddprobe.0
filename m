Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242ED2A8D0
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751004594; cv=none; b=FekEEym80T2SQ0SWl42hJbZlB0Hfxi19ukPup8XX7bXdM/nJ0cgVGq9eRwh7t0PfrBO4mkw6eO+neefwUznKR5R13ozyKNTwWqXOYwE3d1aI9v+V6hP0eKkB7E+NoEfzYGLV4UexxFijWUunwkKQXSOJCnEzE9aIV4NuFJ8ZQmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751004594; c=relaxed/simple;
	bh=DfwadfuQ8p2VlB0UBZP3IONI4jjvFCyGjgzVZN+JPBs=;
	h=To:Subject:From:Message-Id:Date; b=E5zsr9U6kDkiS6cWPNIBydrmmO6n6OYyV5+kp3tKnoKzF2cGaElfMxWGXf7DwHWHWd2AWSVg4hmfTqfNMBJ+GzKdM+M7D9W3/+o1NPXcD4bhqUw8DM7S7PBGpOnEPhgBEscvZLIeKtp8cs42fOcHDTdOeN1ocYB6bidWAuztoLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TTv3U4U0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TTv3U4U0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CBBC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751004593;
	bh=DfwadfuQ8p2VlB0UBZP3IONI4jjvFCyGjgzVZN+JPBs=;
	h=To:Subject:From:Date:From;
	b=TTv3U4U0MawQeFsggHfwutvF18YcMU4FskZlCoH9izeINZ8l/0drIeP3Y8RIe5/Zs
	 EWiJ8rLmj99CFt20o6W60rBhnVzV2pEH5PaNhqe0HsE5wKQnM31V5RKAR2DrdFYjLE
	 ZR26uJ5Oq93zzTkwfsZzO8t1Lr7xjQa6riM7S33jbDllFYcX1P0Dd+wkaqwEBZM5FQ
	 Y1ioPl6oocKOS9uGmBXDWwC6vTSGturzL4EQ5kNLnDqEstrkgfKmwILZe2Ky6Mj0NQ
	 VkWplcfaZQh3ROM8SM4rLBlzD3qqhUnWYN5ibP7WgNVpBDIEje5bpV1uAnKyE2MRQG
	 cCRlS7hn8Pgmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5FDC7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175100459357.16343.6380871366380886981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 548f4e2a480cc9862cd93a1fad6294ea36d70a13cc55782b05c28252bfb98ceb
Date: Fri, 27 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751004593
