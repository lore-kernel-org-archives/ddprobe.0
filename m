Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151954964F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736210754; cv=none; b=lBEAt5phx/GGD6q5m4uGXE6rq8z+6kBUTziwv6+JaDO2nLWIZqvog8lm/eoeDLv8ven8x3IoBJIT8tIb9yjBAs2s7DexuhOnvg7yBemo/rc72rcq0FFXBrgcSJs7XG3D3HoSJVFfE8P5jImZ0XusytDtk42p/5p9IBKWdjeK+74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736210754; c=relaxed/simple;
	bh=gZeHo0qcmZ1kRfdZC0w/wW9cqGnotKTauS0d7Cv6L4g=;
	h=To:Subject:From:Message-Id:Date; b=sSLiyf76xgsYgVGxljUvtRF3PmePobg9JqlWGScA2SNrfvS36AYtVETblQNZ6qi1F6TmiQwmPEHNRELNUFaocRRvAfId+h7FLtgzXxZBcfsR6a80XhRO0ns7wcEwjf2ztuPpMN1mq/4C1081Zyev5Ef+WhYcgnaQ0PQ+bvP0gKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UayhH8rP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UayhH8rP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4C1C4CED2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736210753;
	bh=gZeHo0qcmZ1kRfdZC0w/wW9cqGnotKTauS0d7Cv6L4g=;
	h=To:Subject:From:Date:From;
	b=UayhH8rPzgOjCiMl4Vf3FvdMtc1+TljaAAQDP0B2dZGPvd8FXl4Xi1pF8LamlTpkS
	 dF7WgQW5uKgJKi+Iv3Mm74q4Zj2kuBEF0YE7ZI5sHBUFQmq9rHxZQxMG2FKWHOcwOW
	 iBkAvPZkYwP+5NKsHyBqdis1lFvIp2LAu2kw8+eARVx3miPsPKZ/4DkMdPUZbCw+mP
	 6gj8cR+AM/YhyZYsU/OPFnztwuHqri283eK5ckV6ivE/xZhDie63V2wd2DckSw8/4o
	 nLiAy60SveEINlk45kIa+HwG8lbu7wyLI3MUIg0a6MO7J0IBxG97jCe9KR1/8uy8TW
	 8QfWKbPf7f9aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FDCE77188
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173621075360.20717.1271840923315791064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 618237df919effd87944d47cfa484ed81de68fba28523244e371187075aa701a
Date: Tue, 07 Jan 2025 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736210753
