Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B0F22B8B6
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756525194; cv=none; b=CvFCnb6CvTwCqa6+ysXZIb2u6DWJK0n7UQvhsWOFH68ehqdc46jjHI/H9sy/Zqlihi42KupDOhQKWJ14g7e0/isnUbxdlxW15/LhZ6NLnTeCAR0Mj+64Ppz2mxaC+cKk5BeGXzK679KYQgveuJ5YEJIDrLvBzQmvTcoDdPPCH6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756525194; c=relaxed/simple;
	bh=K3Dqa8MFhF84BRDKNFKUSbadaaGItsBLc6Ro7hQXrqc=;
	h=To:Subject:From:Message-Id:Date; b=VNrpJl4zROY61Z+ABNNrEKsg8keJKX2jNMjMCtAceXtlR1BbcU84kW+uyvB8+D05RwFfNoVXazvJht80Ko2lWS8M+I9WlSWCZADse84QqttTMwQfCMEA5yq7UhxTLdeTCaiDi8CfhXxmLz+CWv0pmCYi7GrVG+yw4MURJFMo2bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUvNTxiO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUvNTxiO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5251C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756525193;
	bh=K3Dqa8MFhF84BRDKNFKUSbadaaGItsBLc6Ro7hQXrqc=;
	h=To:Subject:From:Date:From;
	b=tUvNTxiOHgjEqI8nofTUWIZ3MQE508VGOLWOrDDi1gMwlPfNJM5GypCmNGOpOpVZs
	 KXyOJCElpkseQMFYZ7DTtL5VtKIo8HnhXpVXxJOhECLHMqdjsMlOVLYgVuZwUrLT6N
	 e2boSast2j2pDzPD6zDekVhulLL+nLwgSpVaVSkwsDdruFlBLrOvw5wLZfwQJ+SePo
	 ttljcNaSK3+tT6CN6jQv876afsFET4udoSBhrg79Ip9I6MGwm3IJct1ZYNn3SLO/Gu
	 qh7xuzvRDnp9cv7c3OYW84esgsZ2WA6Q4qsda627YaWbgdfY1piBdkDfnLe+pK4M+Y
	 ocb9MRX0cOl6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CE5CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175652519357.8305.18109101301944210551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 097d7e96d1d93eaaee5d2fedcfec756fb082e39136bf18a1869fe473e2123716
Date: Sat, 30 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756525193
