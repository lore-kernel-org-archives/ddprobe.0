Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4732B134A8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736208954; cv=none; b=gU9wV/vamwu7BaJDroU5LRW5VqXKz64DAtb7DmDwvpFkxvScEPxHVAQ4a7gn960Kb8PQwCFInsZsgQkHNFq5kdBwxbhvOOgdy5kPKVPg2zZD9Z4wY+ysZ4ObEa4F8GY5q0xQnR9skA/Tb/g13+bt6PYWkWAEM5Cf2fnOA09b2Kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736208954; c=relaxed/simple;
	bh=baZb0jrjM8svb3s/RsDMYowUUH1JBCxC3+msxoT+c0s=;
	h=To:Subject:From:Message-Id:Date; b=XGe/y9vcohAZ1xmvOdz0UQpBu1yPtQoSH2fp7J162BnOItB/IABjTQLgpCR5daND5KF6571j2QnuK4jq0aZov53hsccJyRNxU2Y2eiTxOMrfm15PEY6T2LuZTDau8YD7Vj8lUfIpjjmympnQJySCk2vWLRNbxdZ+/VNh00utZbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOVMndHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOVMndHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37C1C4CEE0
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736208953;
	bh=baZb0jrjM8svb3s/RsDMYowUUH1JBCxC3+msxoT+c0s=;
	h=To:Subject:From:Date:From;
	b=LOVMndHdu4FOebapD+nD65UUl/5RVb2hIAxnn0RL9aHMNyolJC/2r+djkmLPg9mLi
	 uNJ5dRyMG7Z18LctPUEAEZ8o/haRvofyb1K/UXUzfcZhP5yXDkmZegB6hJ8Ss3+hPx
	 ovnNJn/GPYUcVM7P989kLQmXNPtzprZ6Cp/zdYoNm5HtybQoTzy/+XVDIj8ckW4bu/
	 V6N8mdgKTPrzdQgxzBjNQ1hwG96wWip5UDaHUSjKR2z2/7Gwa3eX/4LOLfb0B5a8Jo
	 nWzmo7ZdXVWCbbP6q0SlWo3klo48SDaRlD/0kV05KHCubY5hed7UAOuk/y4sWGKjJm
	 ocxoDMg8TG86w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CA0E77198
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173620895358.26461.9570721885011737372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef620509405cd9c9a7ba1730ab62ebedb3d49f6f0cbdc28064a1be691897732d
Date: Tue, 07 Jan 2025 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736208953
