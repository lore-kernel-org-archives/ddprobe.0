Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFAF1A76B1
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757152195; cv=none; b=cfbh4j3OEC26NdJgOZGgKmuQcMGw/HMvO5ESYQFslaYOYhiwoD4t+rI3ts2EiNqzn1eQFJ/9fQJx4TlQx7n4jFAavCAXuP1GKWGp2EqQu+iaHoBeFsVDs8VMUdrwRRs82ib+5nCcFScEiwZmMNVO7EhZtRKLNcjQPelvF8ThMpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757152195; c=relaxed/simple;
	bh=ar34nRB9Kt1WC64IoRv9L7LuM7W4YKV0vld9cLrsB0c=;
	h=To:Subject:From:Message-Id:Date; b=P5VL99YyidPn4UBbNaMTWnks+UAP8DL7qr+7ca2i0SqCtEefE8MCPirgTOUHM69BFd9xpbuLHi/pFT5fnN9U3/oru0/4VE4WioVQYo5WmSYfDBmAGWrNHgMuSAzvTgpAyZEjp+UK6GnS0qlAgdjsfrwmPVYglZssV4+8HJcb6z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1g/RmFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1g/RmFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19B3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757152193;
	bh=ar34nRB9Kt1WC64IoRv9L7LuM7W4YKV0vld9cLrsB0c=;
	h=To:Subject:From:Date:From;
	b=T1g/RmFsPiGqTcr1620Z2bBp5ajCaMpQ3iFnGB/U0d2uON6p8ZYyLQarlfPLYqdMM
	 JHm94G9XoTLwAyCQnXt2FaOZnisi/81BDh51W/4aAi3bhCn4eqaMo/WmEd1ZIcpagr
	 DKKgW2nACZA7K/mGpJiKYk1OU2Wpv2PoDCdSZcKdUtUuGA1AhpVaS7082KPGVQXzxW
	 IPMrPb2EqgNksmahYtaEhw3Ur+mcwkt8mJFK6Q5Twji3uFHdV90yRDjyYQY0OtmCza
	 PJt13gYhuFQhOPeIps3vzgv2rePGJHy7AXmFafHjalozHoH9orY3fVQv10cQEQuDzh
	 jsQ6e+T5Tch0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E42CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175715219357.1866.16773167485800976571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef59705e2c13967bc23c87493d32f46727ee61b34cc7c4bb36f6de135ea3d918
Date: Sat, 06 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757152193
