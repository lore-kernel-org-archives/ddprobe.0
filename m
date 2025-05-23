Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3382D146D45
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748003394; cv=none; b=EoPf3Dtx1SyI87g/sPd2+YdundwiLFgBzNuN+EnVKVmRSTfbIC+Cwev+mDgw8we37U1FDuSxCsuStp1WaOEVX/bGDTDUAIw+qj79hYH+xpxvyJdQvVUBz9Mt3FMCFLZWsmLkgmF+m9F41pqC43PF0MSbMfT2VkHDMLMJZHtvF44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748003394; c=relaxed/simple;
	bh=f7V+GwO+2/SGMQ6q7bCTggRn7CQlULbky46vrT+Sd34=;
	h=To:Subject:From:Message-Id:Date; b=NpH5c2NEHIQvwQ4t+kfx4YReWGmmGB/EO8LU+/Uim0UbvgpStGmHvZ+TLhbO7XzKi84egH1kK5NcAyBgpX1TAUad6Yf0MTc4BbyudTrn71MhQaFLKkHv0F0Tv4K7tMRd9+0ZCMg+ugStFyKuYcNm0AljVSLFBJ1EaVZYpsNZQIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGUjbo93; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGUjbo93"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8556C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748003393;
	bh=f7V+GwO+2/SGMQ6q7bCTggRn7CQlULbky46vrT+Sd34=;
	h=To:Subject:From:Date:From;
	b=dGUjbo93y4FJqJZ+c3wzhxdPv92jBbWOa2WtyUqfjPGLxRPAcVceWsLQnE1tUi3rY
	 wjirrehXjGJW6bsxioRWN/NTAXFXoHWiG6jKULhiTlQdfposrppemIyO+K3DmFjPQ/
	 j35IMDL99Lo6vlRe/f933CQ0jmBGJ0ZIU+BHP7GC/8FO9dpirr8RyQLwOb/Z6Mtbgc
	 KrUjhUWVJzFScHPKULx8aOpGNqYw/Wp35QlpCiCcPDeZOr95qYZcPV4oC2w6U46M9C
	 k4mo8QolbwDAXUYF4JjHJwOvtnVm3+PCw58VMZJndnOviXWhu3Ew5dFNn25VDfjXHj
	 ZUPk+ywvVcbbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935B7C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174800339359.28323.8265537766152515355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6af92cd84816ed6404e2b509c260f08f511482ff026d89502e293b7e9a6ed0e
Date: Fri, 23 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748003393
