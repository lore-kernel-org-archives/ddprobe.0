Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FFC30BBB7
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770700434; cv=none; b=jZHwthtWRXKW4eHmI+vDkPwOqumIglGLrVdW0uNvQAuHWjhEbiPqHFf1i2b9NITl5mN961mrF/0/v/qzYicymJ12vmhPqkkl6AXVf6XL0onaK3UOdsNxNgiCZvEnQmncF8n3Pw6EsaDTSIHiJjEFKNUzdEpKw9zYu8H/i9IuQlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770700434; c=relaxed/simple;
	bh=leiLvOPPVgMb6hT8CoXrtt31tkUkcBfzP/JrLTLJMcE=;
	h=To:Subject:From:Message-Id:Date; b=ZwBnTkwiseOQ6vhQBHusk6h5spOnnj5NEO77V9DVuvpD104tO0nhtgUHAbdxjGBWUMv5hAPgB9uII9Yr0AkKZJU9izYtGckPZUFupFEF7eqYwL00iaAzzelYdARaZgsic6/wSuyMbuyVGpctEeGqpV8415y4tdKnovvuMiB5xbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LohnBIke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LohnBIke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD374C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770700433;
	bh=leiLvOPPVgMb6hT8CoXrtt31tkUkcBfzP/JrLTLJMcE=;
	h=To:Subject:From:Date:From;
	b=LohnBIke8leAgvBnT1djQErpKrzETb9YlN7ewg3nzdB+pSVxu2mKCE9t5RTDPrLCn
	 hbsm7m0DvmPTqjTFg5zAUL7aiGzwsojyULQBjLmVL9sIQUmMsFvGBHZA91DE5DfLE/
	 3B0+KkrzU5AsPaWkESwX9x9zAHGpwSBQiSkIwYX7/3Lk8fMocuccd9WCcSKRzqz6ey
	 SMBzkoDZBkZrhxmXxjK3yj33CChh5n9+VEtDqbiP/16WE6SsvEnrLfCptDMXf3QtAn
	 Crhf0pRY11UCvZLH5avKVjopNP+9senhCckcffmHuPoxxoIHRrMsfahrvM9JzyOMv5
	 cnE/fpDurXYKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4092EA3F04
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177070043366.3211.17991216272748533810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 907e263f6717e791db923322fe08536d5b7f33c8d4ec9c577c3c743c3890136a
Date: Tue, 10 Feb 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770700433
