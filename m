Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7AB33CEB7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769751834; cv=none; b=IDsGhDaj2dy6zv8y2jDGJEy6c7EYRm3LjrtzflXFwwYwppGe6TfmLZ9CfmJaZ1MEzBfLY5O/yabYPSzMiAEMDOjmXVO5H7R7b7s9Lyy786IcUqHaCS/V5gRBXbqu02/yUGSAYMcC6B6fUJLif3aS2/GPB7Dj/Am92VtSsPNvwyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769751834; c=relaxed/simple;
	bh=80oBskxdFp/9YU72fa4685aUv6hgIZsYYn+XZQVe+qc=;
	h=To:Subject:From:Message-Id:Date; b=oRa9MZxSSd2EdSn92yG9WTOo2NQ2wp46YzT2o2uq3la5KKkiTvTZIIYpKBAttiagpg+CQVifkwl/9JkyFPuQVSObSeL/i1bCMpZOlu2KQUL2mgppEwn6WgmPpoNwqwmumtb4senwS500MFe5fkvyKoZm/S2seclkZjhhC48Ct7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/tyFseS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/tyFseS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8577C116C6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769751833;
	bh=80oBskxdFp/9YU72fa4685aUv6hgIZsYYn+XZQVe+qc=;
	h=To:Subject:From:Date:From;
	b=T/tyFseSjw0As6zCEAF/xmCxEO1qFECzqZ11LFERhwb+qTOf5cPGonwwKQ4xQBp7A
	 Vb5Zry5GNPyxEelkDDq2ooP6y69mmOrKeX4wPUIQzqTEJhnNLeHu4oYQ1ZeL6Xgz8L
	 cUY4/MhH/RFwryOQCiD35KpHAqURtyyuppYPr1RiF8NiBRLVXC1O7/mrVzNzmS+wmf
	 RtTBIVggr832IDTLeNDGzLpPr0wFEdy+nsuXtAVOfVmNfVmzQr5oElMSeb9Z/vk3xn
	 OU0CiofgroIdHwrMteosJLjpjSNZw6578EJu7vY1V1CYBLanYtg7IVgW7jnNbgpXkL
	 H8QvYDzrkSsAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97816D73EBD
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176975183361.16177.5968187507374214360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c08ce8b9dafd86108b1e02d582984a57584cc5cbec6451334fbc5fdf0c7b30c2
Date: Fri, 30 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769751833
