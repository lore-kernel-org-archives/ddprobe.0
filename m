Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B832D8760
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753365594; cv=none; b=LWUJa7MT0igKRwso9nYwKm25ftsmHlK7fCOPbsX78hUmSFjuzraAbwgkCgWaxOKCEFtBZUgGASrVSO2CE1hh/xuRxncF7DjrWLGEJqxRUIMUT73V3i4JpOft26PoHvWSPGhu92zdckHC7vKtHJRTh3HfprNXudX+YTSnhKL681M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753365594; c=relaxed/simple;
	bh=Qen9wWbZlLE6OCyzLdpdmf0214iN2+vimGUtfuVD+7I=;
	h=To:Subject:From:Message-Id:Date; b=pOlMo0yFj1z3X1enp4ds0459MiAIu6V4E41YqJFRz7mHxwIqoz1+U9jo8gx0AA4SpaYJ4OfUeEZIQTgzU1vissHYHqpp1Z1Uvfp3Zw49yQb27p7+6mmIk19NNQYGnb9KhTbO3ycrAJn2ztCSdGdO4wiVmpHv1VbXDv8MN87f1Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qwemJccv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qwemJccv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D1CC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753365593;
	bh=Qen9wWbZlLE6OCyzLdpdmf0214iN2+vimGUtfuVD+7I=;
	h=To:Subject:From:Date:From;
	b=qwemJccvtDVGuB/TeczHah0n86DYAN3NLhQzi88to0nBHdNRNZ6p1JdSCRllGqPw8
	 x6yGpRl2neeAXEcg1jDeCDd82EX5qXufzZt3J/HW2zz6TV6ykQ+HLxkK7XDYvyLCZn
	 Jx/D2bwrIMZnlnfA02jP0Miby9ZKS5MIjDjx4sqR8LsPUOZQ8K1YqXlkyG/kT0kQW5
	 lzzWFF3Cw+XUdeEXS52s5cfvRDyOdrekUzo/XhyP788vNqitabJ0xji5n+zenfUZLC
	 PbGHRZMJ3AZXpJeC5Rm4kv6KrwEVDAudAJaEomoyGHauF1P3lhvEP5aJwFAXDsYtdX
	 E4PJHq0fuIUKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B7DC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175336559358.9293.16391566822487724402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 176260579833ada3fefc18604393172ec3696a6ba0271333ec54e3d156139684
Date: Thu, 24 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753365593
