Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328742868B
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726790154; cv=none; b=BKbNpmQzbyBCNajIVH9jYAW+6fkaN56zovbYkZ+Zm6A58RjEwETbMWcR3TePSbDC+thgq/52SvIIuh24aZJDoHaiZk8tsy3A7znVnBUvY1ojmjrfG0nDCUvNVC3CdjJOJH+/+Nwa7fFuC4XPesydjpuJ+kx5FcKZYbytEN1WhL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726790154; c=relaxed/simple;
	bh=YYWUfhj6h1ECPQfqQE5YuL6zhcBgorkz32+1ACT7B4U=;
	h=To:Subject:From:Message-Id:Date; b=fc91Iq3KL70TMOvGQZqJNkGtQS+kEqO3zoL9Iux/F0282fPB6h2s15L5QWl3REuG0RwXKb6q58GffbGlALU024niuoCffg2mbs+lpGBkfPYOml9pMC7ynQZxCsOgT79p3n3sPdwYkS8QFG2g8nA/QSqAJKpkfAfUm/RscKKJFoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Otp65oKC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Otp65oKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0906C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726790153;
	bh=YYWUfhj6h1ECPQfqQE5YuL6zhcBgorkz32+1ACT7B4U=;
	h=To:Subject:From:Date:From;
	b=Otp65oKCiBJuVSHTwvba8UIscLGYerS6jG6mpS6+7Emf9dUOXbWJ2USKRmstvkqwd
	 SETePmIr3SDmeZJxIKpbsI8IKSra8JzbhvckNXpzliqZ2vD3PeY8b9QnX9bCjwiweG
	 xdeTvtI8bmzPKfd4lLzvl4HSUPkqLdH6xcKvMBmMI0rnWLvaZhYWpMx7SXGrsUK7Sk
	 VHZ+QExgrH8Ny3QA4HX7iipgubnSTAgFY9h0Jp4vli27kHyUoNXM7hSxhSm04jm5WJ
	 g8tc2fQyV4fijX+N+Gkaa0/n+B+XKV2r2uTSdp3xrsEC3szRRB6uOu9r6cIsZvn50E
	 OK7TISgb8GT0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D38DCF3975
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172679015361.9832.8229928782897896966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56bd44eeddfb7c692533ec4d2e3ad852de4cd142456712987947fd9c0ebafb62
Date: Thu, 19 Sep 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726790153
