Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CA8823DD
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758943194; cv=none; b=jjS3WuEgDztLlc+Z2WkeWdKA50GUECX56M2BEpRcA4a1VUVrJ0UAAKuJq2judqCrcN8xWLmEfJkscRDwYwav1JvJoELYp0uwNhK1sBl0Yg/Z3UMP+HFNv7qxLhTFa3c3Twsa2rCCSW1W2sCMoHVN7wiy5hvYSoihQ2JgYEJazlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758943194; c=relaxed/simple;
	bh=uIf4tcLLgHvlRtUd8BaZLfEvHAaShAiz41WCHif8edU=;
	h=To:Subject:From:Message-Id:Date; b=s9xVAzh5L1gYF7Q8lSguXRABFnLtqB4zeJyFKviTYlirGWflnkN5fllZmmYowLooR8UxVq/jHQTcTDMDq+gqr9VU/EjvLiO3EuuYgequ1J9yGr92Gdgw6xCALIxvPhVnxteCL8g4+6Awu7aw9aWlhA9axRPO8u3DRL23OkZ7gIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLfUWDcg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLfUWDcg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9C1C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758943193;
	bh=uIf4tcLLgHvlRtUd8BaZLfEvHAaShAiz41WCHif8edU=;
	h=To:Subject:From:Date:From;
	b=gLfUWDcgDtqpz3HVfoQPLtE0xod7mDLBiMkCum0p/lf29BIsPzKdS/72vhb8hGXjm
	 5qEFvxXrgwRRYICvisJo5IcsOml6YcYHH7hsMK9l13U1AKkHexKT2AMeccbKoOILur
	 cC72i6KWq0gPU7KhzYfQe3dFx+bYySUC0m1vsaXaSDdNGFWHI9H/ZwEn2KA65pf70/
	 I+mT+/AOcSXoYb9PbE42AOTw33MGbTCZ4SycanSew89waPkA9RP2NvnzHl+eucfTf2
	 Bbs/sMzzHjI5AwVm8lksb+5VM0SKKfLSO3scNSbWXCJH/Ol6vwkTHoxbjmuSMDRBUu
	 wvuRjqnyAIaTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98366CAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175894319358.32179.9801691189787231243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9af69d6e22cc598803bea98b7636c23483ecc049278aa6b5972cd8131a342a11
Date: Sat, 27 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758943193
