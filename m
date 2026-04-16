Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373F186341
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776307654; cv=none; b=tWNUtOhlSPcLfrXeWeU+C5IrZS89B5vfAlI7UsVWjJbCLFGSIRCGbIi6ngOPd0NRc01Ax1Y4/PvCsIShbmwXXTlOXjAzhx1J5EyyTy9wH4fkKb++GZ2LfIyann4pruJFRvB57d8dy8HCsaWw4f8V7+zdwhki612P60WRVBX039w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776307654; c=relaxed/simple;
	bh=G5caRoGy1/eqjwOjT7KE+8ZIy661XGm56pubPBNtdVQ=;
	h=To:Subject:From:Message-Id:Date; b=CvYTVawImSSszYjA2Hx/rNkUZe5DU84/psSujyaBSHtz4AYs8orHLxLwF52BCkcKGR0Q4EgvXhPx9oXU/wWl305HkpF0y0AoAkx5ZFVXJZhxCFAdJpWzWSxTbLs1WxlrVwmXCUe0bSc5iSbD3jsVR0FSUPKvseUOjm/e6361kbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l579fmXW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l579fmXW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30B3C19424
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776307653;
	bh=G5caRoGy1/eqjwOjT7KE+8ZIy661XGm56pubPBNtdVQ=;
	h=To:Subject:From:Date:From;
	b=l579fmXW9ARF3goJqBVVlyebUoDRWXyC+gOlwc/aU2wBFppyStrdjGjlCenbEjxap
	 I+YTDa+fd9ZjbI4Svo2uVU3+F0O6UU7VLQApD9XAx1oWlrZ7wFt4i6Ss9lWHfpgM0c
	 cq200G4HqKjPUeFAm9g9571U8owXU8Wl/pYf9jUZlczRwizALlbg0vNn2ZXTeiABMm
	 4syDwUh4m6rcg5tV8Owdcc2forJp79lpfaG9xY+pc1VsVAEfKL6+vyNTgGVuJb1NLt
	 zX9DyTHNas+IdEfvXVcJYKL4lMU9fA0CmlTUc0Z0MIrBuNtHOsAD+SacIObO6PygOL
	 DF5ZOO1fp0vyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B37F433D8
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177630765369.8738.16463130872639873153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c98e8852e0f3ecbe4a0c5008de74f7a2832b3b3c8f7d25460358e2cd8d8147f
Date: Thu, 16 Apr 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776307653
