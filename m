Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050AB1C8634
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773449094; cv=none; b=s0XKQppGjfcXJEK4WDIgUg+ZI7ZP87z0vPLIEIsPbOcOA/vBQqd/zGGeDbuZqLoGLoJP1+HOOPi6eWvZlX68tCRCpIICHS6089Qrihc2HwZs5YfEJDvTpA0TL9H7rVV6fA9xoZfNlPX5Kwt0weNuwzvFhWgOkBYIKQRI8xgmxPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773449094; c=relaxed/simple;
	bh=5RMOQiv47zltt+Ja8B/8lnRL7XIQdKE7D3KyAyc8eiQ=;
	h=To:Subject:From:Message-Id:Date; b=uo3i/BVHylMdmunlEmupgzQoj8Lwkc6Hk5DjQynSx24J8YlqW9yWAYA+G9lGREYKsnp9IHHK9z8EYNuCrhBnULCkQrw0pnY5Jr1TqYkHbK6Q34f1C35G0S+sn4BQtzhENQR1ufPQ0+IgjpHnEygRRsmFCRkJ8JGlxdA/RE0Dkx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqeL9uCe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqeL9uCe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B12C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773449093;
	bh=5RMOQiv47zltt+Ja8B/8lnRL7XIQdKE7D3KyAyc8eiQ=;
	h=To:Subject:From:Date:From;
	b=MqeL9uCeNtenz2yCEBvVLwdXLehT1ILm+WzwhPt4DgxVixlnt+rbwyWTRg2PhFGvt
	 xvzBB27TXZfOiXuitU3qj7O+o1Lc54BNeS3HR20Ih4djx1KIQsd1G73Bzf99NMh9Ye
	 0CLZUDjZDzsA8r8zMGDOfNSa+4IpCdWv4IEsGbCH0CgZHZg4QlxXg/qiwPETTVi5KL
	 OESPy74uReLzMi56W0URRqk5u3bCl4b93avSlZwj3MqHcr7MipTMAhYQJwteJe9JdS
	 1/pbr0lamstdLulR7rsQoEh7z1FkWSmTCHZXo+lqlYUuUVklcB2hYdQxnkNqssCFAS
	 uYVVE9xNsAcnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB4F107BCEA
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177344909358.3382.1000514698136419642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60ed22b21652996387d11ffc2fc1bef9e7af85f441f1cf58b7e84a2254d63639
Date: Sat, 14 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773449093
