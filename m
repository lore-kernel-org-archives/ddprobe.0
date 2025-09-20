Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301441C3F0C
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758411594; cv=none; b=uUu1+2xI1HzIM82xjdHhR4f9mLB2MG6PX8sETy3qUztF53DZBCTM3AOuJdUjwcFwg990OU7UxUwzo20cxLQ2w9+ERX8fU8G28+yp0UKKE+GFU0CO1+mC3+KIHLmk8JVhiK4tvfp1PDBwINrttIoY7c5LMaeSpjeXIC7HDAdh7Qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758411594; c=relaxed/simple;
	bh=lXXOd4VjjaYYa/fe7MDfoEvR71JZyTndmLC0QEUFa3A=;
	h=To:Subject:From:Message-Id:Date; b=HDxoE2aYAWx3HBRf1JGcc65zPTSBRxF9+Ho3E08yLTY/Zt9iW47br0oOAwnLY09VbFXqZqp8yKVQzcXYQgIl+yLPij6TyuMjiiq1BpU0LogFQFCB9YLhjvhCdnj79k6ey5UjzGTd9fnVQE/mSKtdCovXKzSqTub1eeFLH6jqirI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mcf2+qPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mcf2+qPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75A8C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758411593;
	bh=lXXOd4VjjaYYa/fe7MDfoEvR71JZyTndmLC0QEUFa3A=;
	h=To:Subject:From:Date:From;
	b=Mcf2+qPqLsbkhZLscLOTAs2agdUDI5rqQigubZea+Y0+Teksl4ncYvcAEywL1onW0
	 Ehny+fzrXJ9d1VZX3czTlIRz3uRkRi083HSC6flMqvfuDxvtUJbKtlta4ULzpCaeOj
	 4A+nAEL4RzPABwwPQPw1LK6qh0Zg0MTnvr2kIARGsNvEA+Y8FAAnppsQZgVCC7f0gI
	 rd27o1659Et4gM5i1znFEgft3MI6yE0iBN7qGiCgz2lkqXf4GhF1cX2NMHocFntm17
	 4RKCC6oCu+SsQSXK8eyly6jvRvrzr6rvba5hFNa0D0XyFPVfsI2E+wq0132790Z/Wg
	 Xs7li5QEcUArg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92686CAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175841159358.15844.8299937003669949677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a96b15e4c784670707027359a15df0b01ff7f5f823ff5a09be2eaea84bcb646b
Date: Sat, 20 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758411593
