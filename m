Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C081581F8
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 07:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750318195; cv=none; b=b/4R2jmK3PFtImBy14/q76My9blRB5R34NhlBQAVTqTLn+k3bPH03uI6ftOMzOJKJJ+kA58nYp88rgRqIwFnPWsQ1DoGufYruEj8Ve5XuXKE2L8s0qWLvFDDC5THGDeP9oKqRrS29UX6zWRFImm9rXkQzag49LeBzSBLF+OQOXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750318195; c=relaxed/simple;
	bh=8oLTSULWMNjpLSmtWKIRlc0joAfAnb1h2S7sNySOrt0=;
	h=To:Subject:From:Message-Id:Date; b=t0ReJAxeToKUqrOLw8wz0PO175eTIUxBgr9dSugGEgPj8zFk3bFxxhyz5IGsetVCTbAJcExL5fl0MKEJ7C+nthGp465+scMg456YzkBcPWrU/Tto7WrdmYZbt7FBmf20tsp1B3jCJClsWLCAdHclwf4/oImhmKJV3nXypnA6meI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c94Th/fv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c94Th/fv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2562C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750318194;
	bh=8oLTSULWMNjpLSmtWKIRlc0joAfAnb1h2S7sNySOrt0=;
	h=To:Subject:From:Date:From;
	b=c94Th/fv9D1jXEp9dmSn83fvpEf1zFPYRAdx9JU/chGa0AgMZsvHza23CZA4AZ5RG
	 WFSEjlqeVROYA3CWYMtMjtI1nLnGK+FdZNhBo1jbXpgqyQYqgrm+NOQQtL7pWSQVPN
	 t3ubM/+3jMy3ExAdPJZAZ9sB283JfaoL2YlzpLfO7c6P9/dueElq82KxfdPShVU0Bw
	 xnWCxGLD5xHisBB5xxfAlPDMSg/mhpSm73I8GYeZkwpcdv2iOwRuPF+nmKgLvW1/Gx
	 nc+fbpLHX/Ga5PeB/mewIfdmJCWcEzrdW+cjXE8dQ10iZlDH8ZkDU5zw8VZcKJ7If+
	 P84J0j9Ys1m+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA4BC71136
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175031819357.1668.1630760301085664349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b45a5ca8cb769c09e7f5ec827ec22773d75459d571934ac1a6ab6bacea6c626
Date: Thu, 19 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750318193
