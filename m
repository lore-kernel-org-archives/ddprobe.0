Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206792192F2
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753621794; cv=none; b=k1Nj7WHTsytdtAcu1Csnq6d+Zjvk/P/H6fdDC9MEpRx/EvnDeoGS/jt1lC1NmOJKaZZFdUEfPxdda352P/z+PFVpqSlS4h/kUE6NT64EV9+aT4J9xGlhgc4gKFxpY9ozDe0AdEeQQd0XLi9sJzWv7tNOsh179MYsbTR+7J+FZHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753621794; c=relaxed/simple;
	bh=hklUAZAzgKFbVX/2/fl2ezqDNvmh6N13/mbdST13mbs=;
	h=To:Subject:From:Message-Id:Date; b=goonXV2bPbGQ3tDKMu849/b1+ED0LnljBqVICc8z6a5NB8T4kz44L8KvGMcX/CyaaIjk3PfPUI1UO7EENCSJ1kgqzvq6cBOrebl1Ur+ejV6IoVIfvSfgJp94w+xl8CSmoFOZolh7n36YXPy7eiHgaftYDfTNfHUzS1dHPHA97W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TbbkR7zx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TbbkR7zx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAFDC4CEF6
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753621793;
	bh=hklUAZAzgKFbVX/2/fl2ezqDNvmh6N13/mbdST13mbs=;
	h=To:Subject:From:Date:From;
	b=TbbkR7zxfzxvxL421WEcZEeIvk8YwRwaDJVc77hMvHW+cPNCepKlw1zND7r4GZAl1
	 QM4cVIwAWwhJo1+wcdMeq5gXKPhMLYAaPnKlKL1wkkZOMqyUKUFseZi8B1g0CejChr
	 GCqz8oLLhWtW1nShIRVU8402tu67cQsYcZaIs69xucGaJbXX/sxxSsOpRNPGU8Fsu8
	 A8JZLNMTj3By7KPajdpzHhcMVUKZ6Yj3CcdmJPnnMqwIhECDI2HqFFthei1vPvbRPr
	 7JF0FGcQp99o9yRdZneMkt5cC/cIo6KYMaF1YE5j0lpf1m4So6oijW1UVFwkGn0vO+
	 t60aYZUCUBzZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F78AC87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175362179357.29178.13138279116601115892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b40c526d584c52baa1b5d2dd9a3524590dead03b1d2cec4a6036cf2b0b5dddb0
Date: Sun, 27 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753621793
