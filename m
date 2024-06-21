Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CD0153BD2
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 12:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718973143; cv=none; b=qbwce0TiQgtUqhA42/BtScgd6CIDJkuM0CpBwJIn//X51REy3ZaX2ExG3Jep88cT5lnKi35ic426Dq99lqBBlm0i5nGvbO8hZ1taOUaPecbrN9StN1TmUAbWTp9HmJhxI5T7knjbM1xNNzTh2FhXbni2yyjF2fv+TOXbUZ4hMgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718973143; c=relaxed/simple;
	bh=BEyTrXgBYUCuhWcljpVmwkmjfNXbOWCUmTcHi6E++ts=;
	h=To:Subject:From:Message-Id:Date; b=ptPSBWmQRx/CnZmxVbt/FCNkqecYHNYvxZ5T++oDhPuZjF9zeAQqVSM9BCFkD90yvXhBT2qhnxFS9xstQ3WXW64q5lkazW8pD6ZByXCVqkE3/2tqunesPD1JlMcceIRAQUDEkIdgw1uaKRRrzD1V4US6Vrqz6pKyh27u0BK/R5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZ5NpIr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZ5NpIr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A4AC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 12:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718973142;
	bh=BEyTrXgBYUCuhWcljpVmwkmjfNXbOWCUmTcHi6E++ts=;
	h=To:Subject:From:Date:From;
	b=ZZ5NpIr4aw4i5+eH26k99QN720HJQkGELI4KqdmcsnQmDawMeLDZG6dQU+HXaOR4T
	 NQisISHOZvEMKcpGyoT0K8WjzW0210Ne/BZ02ksIlyST1V2S/cM6u6rWKo7+yTlusA
	 XaTgT4H5dCp38z4x8ndERclTWCiO9kgacPC8picx1NsWhqK6h4xlDXHLnSoNtHloTn
	 0LhR5ky/aoeCSZKNPKKBr8FdOPDMj62zHyf4OkaTh6kohpemXiMHzD3JCjbRK8Z/89
	 iFfyRJ6/2bx7opB/6TXidvz5UctY17rZ0Vvr72Kj+scb2tySpHA6mOanwl0yggZSur
	 pq3n+JbPP2uuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8AF9C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 12:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171897314281.32702.5219043224467432685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 168c74088d41be9fd257b2b50445eca42c0aa64fc06683a9f7bbd955d5b51048
Date: Fri, 21 Jun 2024 12:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718973142
