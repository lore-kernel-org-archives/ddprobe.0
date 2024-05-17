Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6896CDDCD
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 05:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715922143; cv=none; b=EGbxlRJwsivRN40/bK6WZ8C4qxd/r+yQ1dhyxYlF1EdnIwaEqMDhjMEYgRuIzZUvu4ku9MoLYxmEyCpEcz0Hx4cNG0/Wz1cEjHwTYsrSso0XnA+DQWuyn86XTFVMg/qB28DddGP1rCPASfQol6WZGkB6PTwvAt1ngV47+jWJ/qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715922143; c=relaxed/simple;
	bh=ZcN9agZrsaVlXrF9sjNmUQxNgb3RBFYFGkMIRtQiqNo=;
	h=To:Subject:From:Message-Id:Date; b=R98ofIvyRQMX9UVgOfQctJxJ1zRMQrAufDh3l+geH0Oe7NQzIsHPuZ4h4OhYbp94d29HESEpG2TCHitsZkSfz289uXCL8Myj1lvm+QaZh689HF1xx/u8DLp4bpxIyl6mBm2rrQO/xTBEi/pU0nhcx6OxvPIFyf9Aa21ehaGp4z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eflGpvx1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eflGpvx1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83E5C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 05:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715922142;
	bh=ZcN9agZrsaVlXrF9sjNmUQxNgb3RBFYFGkMIRtQiqNo=;
	h=To:Subject:From:Date:From;
	b=eflGpvx1lnGh63knNZti4cv6bUP6ZfutNbvWm3uXm0D2Y1e4BS5HTHL/bCe0xaM3P
	 OUkiG041ruKZbOoabxdnoBPyCEdtw0Fluq9fptvcRD0bcoAaEFMWcY91QTU8ZGWEl/
	 G2in+/srTOc+AmGR7gK4oJQDD78VdiUQhjg8ZgHQEIfm7p/mePbqadgX2ErasQqpVd
	 pobjY4k/JqS4zBoqnlqxd1He/azk4ZFWUk52yzb5c2dzrupHP1hNUyB0CVb6Bw2ON8
	 oCW3LdXLib40Rd/vFQnHEkTtux7cR0YqoxmeRcLPUDP//Ld9vMXr8NSX7yYEGcL5s5
	 BC2HApvhUvqZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4B41C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 05:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171592214277.7294.9282366433157215194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0822f332b849ba7eceafe7339b80c67d2798fdee8e115a22c5f5d6bf898c22a5
Date: Fri, 17 May 2024 05:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715922142
