Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7C532FA2E
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785454234; cv=none; b=FNwnS6lHveqad4Z1d9ZAAkS3gmkTqqHrnGgvOVIgNtPzprMnJ5Zx3JAmMWhwm+lbIn3DNLLDUxtbKwnF/SG8sJpx0CW7X5ckzIv2ByiU584DUmRMhH5U7UL67/IkAfmNV40dpNZShNjRdgfrA4Zk0WMHpemJtsMBNC6W1PDlIrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785454234; c=relaxed/simple;
	bh=a44sZd/jLHd6KC0iVUcJANYOB8fMtbinLpACDryAxOE=;
	h=To:Subject:From:Message-Id:Date; b=VmoPLp5A2N1NxDj6Mpl8pXW/ETHpXwDnA8WQ2/3XO9gzqStOdSJSNUddZQZ6SqZj2wb/EK9PqqgUIpRxxLVLo53gkg9v9uvxFfjmGKRCgy/bw6t4xY/6IbhTWrejsHIqFFxG5fnuGNuFEpzi0mp1H4xoC3Z9vqSQZhRhzRErESM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3FVFW0Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3FVFW0Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFD6C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785454233;
	bh=a44sZd/jLHd6KC0iVUcJANYOB8fMtbinLpACDryAxOE=;
	h=To:Subject:From:Date:From;
	b=m3FVFW0QgEhOxElnyhXx5CQwvpRYbe0PYcapuCeN7utp0n25Rlbv4XcV6wZ0HJRz1
	 NjUJw3u11EXJyRqXUA9XvEPIQto94VxyzgLUCEB39MxDF+zkVxrFevwvkya/6UDELh
	 sQCpD9o+6OjEHiOgs7/KMCcwQW09DjnNyLuBpP+mAc4IVEnYEHKdL2lmdyUOzQRFlG
	 cY2bNvcpNo/quDlhOvPq9bRnecomBDbKYRdNkoVKH+hVJWHIcOxe5TpNFbgYLMHMP4
	 esR1OOENW1SkRMjqz8fvesIZpKU6rhYntg1l/AAXRunT9ElSoSdGE3i8o8BuYdcf3z
	 +2pqjZfwVY2yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A4FC55167
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178545423368.13371.17368050680392768740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59860948e2197a8af5fd40d286d41e9ca8e400d773c1fb6573f6137cde446dca
Date: Thu, 30 Jul 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785454233
