Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB62299A85
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761201594; cv=none; b=J4rlGJi9kee4XuZsaBpC8aLzmsQkNmzWJMn/8w4tTF4xwFlyZNA7ARyvsUo0aKFa466Y5YZ6REYgMQvKPctBdZRli2oBcipwlho5ouzRyTINMBESVYXB/Mo2GndiPWE2XcdaT64p0i23W6t5DQZgLuXfsGoZi2ooNzDgSvFYc+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761201594; c=relaxed/simple;
	bh=rGWGKDXr/QwF/DV+pCWmAU47glVZcG2Cq2PSAHc1WOU=;
	h=To:Subject:From:Message-Id:Date; b=GuP8aiif6BX23CNms049/GB3c2tkj50Mb5KV9HFtTwcDtltjN/7O6CF+jLhA/o596TukvCXxiiA5hFp4Ml6Cdg260ILhECWg3qWIbqHZvrBLwDYlYMswRJfok+KwDfJ0u6deyv1z97eF8pVpsui1OsmJTvmhVSIiemSMczkGNrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCNKD8n0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCNKD8n0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDC1C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761201593;
	bh=rGWGKDXr/QwF/DV+pCWmAU47glVZcG2Cq2PSAHc1WOU=;
	h=To:Subject:From:Date:From;
	b=dCNKD8n0k7KJW8h1CCTKkCn6kj5SRablxwV0Zc9mxRYZqHTm13uEVTo+6ZDX0UZkB
	 LH/s/hqnvWTlXZ9UOOySCCst1BLiBw8bVllpmYdxRC/dm1h6yagiz40Gqh1ZyGFSop
	 6XBHPFFfLBU+CXZFM7ygVujqO/5LtaNA1f2dDLSLs3pe2EVJZZtOE/FnqE5ffv+oX7
	 HxwDyGjZdoSIjN/HpsDNb9kQ1vfBlgR7aBzrvtcx37Gi5I6qozzLSkRbVBHqHpHt+v
	 BlFiCcUvhHDqig/Jbx8xXXafXQzWP6s5noxgMJHvAV+z6yIE/CZHBLvW5XDkfoi8RC
	 Ipow8+XvCzLZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CC2CCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176120159358.29773.17571034421862088685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ea9a9a41634773c42cf6eb2e7a0a8b7c0b1223395c15352bdf0f9fbd33d478
Date: Thu, 23 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761201593
