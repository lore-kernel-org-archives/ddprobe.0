Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FACA257824
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 04:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781066134; cv=none; b=hcoopmW/j6UVB4+Bb7MhWk1hHEHbYwtlF7/BSwYcDh39JxxwW4mXvJEcUoMWCRX09LT2ZayFi57wrefVmnixmUmcBPDj3i+uRU8xKxsmF0oIxjc23RB7NzMPDEErKPYs/8Op3tHOV4Yq8DIGq9RPMsrNdjfyRp34VwwMo+9oH5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781066134; c=relaxed/simple;
	bh=5xfUfGZMK2rfo9/K6L9p6mqKS1fLBWIK4OlBznyITjA=;
	h=To:Subject:From:Message-Id:Date; b=ty72Z2KINFYetwQA6zETEQOq7fmTzRH9qSm8OIqYP3G5QG5ri325VZaGNtpoIGY02UdezuTJSZWr+oDsxAFt0JM9tPWk93AT2hbeFBSVG97btbbCTZPJB+I9FTvMW16Lmzx4BIV07cVX+nOXtGDW8/Fud3k09vw1Rzobi77cgXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLocrJX1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLocrJX1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D0CC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 04:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781066133;
	bh=5xfUfGZMK2rfo9/K6L9p6mqKS1fLBWIK4OlBznyITjA=;
	h=To:Subject:From:Date:From;
	b=kLocrJX1TtW9h1TDECgo5xBvkCSyhr8RjSs+j4Iuqy3VlNS45Qrj14C15UwKsHFh6
	 odaHMBUTX92lxpN71gZgRLHm/BOETEmhb/pURaZW1uLvoaw0+aKU8qg3lJeapvoM+2
	 Kg2m+ugMFYu1qo/8TeydgEIWRvHuLUR486JDslO5jHFiv9YCH5Y7tVF4ulI0UTqO99
	 eElkKac9fmNRe5CU82QSsqQ+m1W5BkhllOZjEjlLkRym5QSM0IiEXDR9HIAXabQP4G
	 CZSf2lqtxy8mMNjz2aXaeQb3XNAdDVSzJdwEyxbVJbtBRLAzUiCNn91BpDcPiC53M+
	 NUB8FgdqeTkog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0197CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 04:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178106613371.29845.6569599020717491613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56f881127696fe7731b694a9d42678497aac117eb1e3b3472543aada6fbcff16
Date: Wed, 10 Jun 2026 04:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781066133
