Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DA42153E7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753294194; cv=none; b=mi0nf+zMQ1F1dN2l/sbISvLVw9jRnij/jDhS39XBJcL+NjccbGM+GAIb8rIsNFtPDTPXzpuhIpvDLnt8sYLJNBdw4HiXjplNcWhjxOqRQ9uBVCrsV68mGdO+f3pEsv7dk13abp9IL8wYXLKAFQa+fk0uCFjFzNkGp4ko4NOAjCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753294194; c=relaxed/simple;
	bh=c0n5xWJwK4N2EUIi0S2fU1Ga4PL9hWSZXcesiZIdlbo=;
	h=To:Subject:From:Message-Id:Date; b=bd1B8C2VhRfDuvn0kKuQF9L2CtC2hnBBEqfYHQoyRCt8uWNjtE7fLzH1OprcPgV76SEN2uWc0HHmiLpZNsLY2tOOy1Y7xzw557PeHthMOwMl+dZz1jVsUpvG8UE9/qvqep+pumjl1oCxJ39mc4T7UXU+uoR+4Wla0iIuVkIEMRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qt+IkKL6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qt+IkKL6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F95BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753294193;
	bh=c0n5xWJwK4N2EUIi0S2fU1Ga4PL9hWSZXcesiZIdlbo=;
	h=To:Subject:From:Date:From;
	b=Qt+IkKL6Rqbdm/oaRe4um0f0ujDoG6zzUhfs4GBQjKuixvg9YG0hbWo5MPhoRAg3F
	 YVEOiwnfMcj8BMF/UPdc5Cm+CXtAONShzO/Q7wmmQyOlO/5S6lX31scmJrRPRTy4EC
	 pcoi0b+6wmYRKGFV5kbikj2NYAevfwUs/KCEky3nVZnUhRRmlJ7YBjQMhsIjci58Lq
	 7YUlsprJik+siVNgqz8n1CE57sfE1vi3VvRI3YjyxIZUTrMPAvLK186t5oCHWH436C
	 myoDkwYjt8X23dcbEfjMuEAbEPUFsJ46dsz86rZ6rlLYyvz3nLlbZ13DRb/+z1Lj7B
	 Tx4w8MidhwmoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB52C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175329419357.24358.15595315061580842907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9edd0de1d1715390baff96774c024d7a87b128443c690859f817251d074146c7
Date: Wed, 23 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753294193
