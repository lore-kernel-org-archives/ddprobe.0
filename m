Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0845D8F0
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729703154; cv=none; b=NZd2U2dNGD9kA9Z103flL6/a9VrHi0f7ErwHMS4A7HiDKeWITTTGfnvvZXG9z9DCBu9W1fLKgMiigtzFwcHU7xt4sK60rEATGf5kclTVByD+0YTBochSON6/OvcYSrSBwAu9j8q6aCNyPWl0w5/H3CfbRmG4oBdinMtUuf43K0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729703154; c=relaxed/simple;
	bh=lBii3PeI/U19FzN/KUKurkfxYRFw/DzB1iRu83Kmczc=;
	h=To:Subject:From:Message-Id:Date; b=sN4BMzC1MWIGuFPqyJhmMpjlHvCSCe7p0TitW0i20898yiPmt/gA31sIko7EFadoPsdXSAfwH7H8lzjUTVjZUikI+DY6O7ym25paL+CuvpEh2IgVcO6yiG3iwwlhwxNCuT0gWlCw/iALopeoh0baAIFXdbAzMf3jky36BhDt+pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqzX/rwF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqzX/rwF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A478AC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729703153;
	bh=lBii3PeI/U19FzN/KUKurkfxYRFw/DzB1iRu83Kmczc=;
	h=To:Subject:From:Date:From;
	b=hqzX/rwFKTuhwo94Fx9FcclBkNNW9/hO0pYRW/3BQk+vRAVKiK3X9KUQRdnlcqgL0
	 EBwL5342JTx7AZwFVxtBjr8AZYrHveaibsxYRZGO6SMuDFhXof/+t+6eY+AK7ochQJ
	 HLBOpxIQV5+06sjNWPMjZ8vckCN06irNt9HzyHh7e2df4gLimzlWDUxuz7DbNV12tF
	 8Twh8L9Fyl9syKaWd7RnKDS8zKezy9uqSYRSnKMFgMEC+Ol4fuVwvYXKhLucjVSuDz
	 v9szdJ3G0N6kiTPMPNySC09UFRDEVPxpaSTTd+NFhqAWp6LRzzhucsoso/z1B8bkg7
	 cvEDj2vhEXLmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C33CFA453
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172970315360.2947.316822146208752561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f8fbb60ccd8ab99a6f6f147d6fa0a7c018daa3a2a020dabdf4dde5ccbb9c52
Date: Wed, 23 Oct 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729703153
