Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B863171AF
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 19:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716666863; cv=none; b=ggYpTqa30F/TO5V28L1qh13oUhzbXrhexdsZsLpVFkwG1WHlex6xmYLjNscbjtFpQ8f0cLuJrzGGFmhLjNdg7u7lmLFTXCZ0qodO17O9j0LmqXrijqZJWNYgdMfRHYFyFFhuWMapItXrzeu153AZbvytwUnMoP6fvDVMhSawmeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716666863; c=relaxed/simple;
	bh=nTj0OtqCvZnxVHxaQqte5ehCGPO8o/GSu62luzYXQK8=;
	h=To:Subject:From:Message-Id:Date; b=KuM5cyeNejRMQuWr9/SULKcdkgOc6Fdbzb2+c/7tPdbDHg8E1SySa/0MUnNSKxl5ZXn/x9+8m52lNyJMNHUGI4KbPAHhXTjl+tEqaxEXrJ0vdj/GmW4EmLWTb+3za79ans6cUfmQwVcREUTRxvLJyxGJEc/6NXAYlnzpIVEuzuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnytwwWy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnytwwWy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D664DC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 19:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716666862;
	bh=nTj0OtqCvZnxVHxaQqte5ehCGPO8o/GSu62luzYXQK8=;
	h=To:Subject:From:Date:From;
	b=jnytwwWy0IPnLMX37YiuiH2gFwyb6bmfojUGiZ6qWHRyUWJJZoZn1SFNW1aiaM5e3
	 T8I5UB8cO2c4zgXIrr2iCbMQgx9sHWaT2sEfc1gBFBaslKnRBl3NuaYsxC/YsnrR21
	 jNMDtKQUbPSOTYximTAMpYnvPRA9ZXxFQaE4y6BXeF2ez+0hJtJjmv3xoeP2pmlmA6
	 pn9YeD3kjDyxG3Rwiur4CzmVArdaA+yGMzxBSUzUhG7rUDweVrpsVBip6SCK3ZSIh+
	 tpYYSyTC4sm5sBS7sTyMw7zrTocb9rmjkv+2zhAqpvUySlZ3UFVXuyjTm1S/Sg5MK8
	 2cboP9tVbpHDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C53FFC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 19:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171666686277.24398.5497738662205080410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8f63260e5c01046e782cb17a126057a4454ead333a9017b215ff48838d4e231
Date: Sat, 25 May 2024 19:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716666862
