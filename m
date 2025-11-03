Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16827B652
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762145994; cv=none; b=X4XfCry8n0G9Hir/r5o/LhkWaQMDTe7vkwAAFPqcXYz5v/Vt/ALI8Rs90W75AFs6bBt8ueO0NgxMNN3Th3JlHd/wx3e24vS7yThhrYKadozG9O1yG12lNX/82nH+MvefLwlJAw0dr7YoF4uLzAnhRQZgA3cbQWhkcliQH7kSU+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762145994; c=relaxed/simple;
	bh=Q6mH0RWepEsEtWfqRYBRMoCEu2RPeYxliqb2M1gNOUA=;
	h=To:Subject:From:Message-Id:Date; b=BZpMq1yKAUtnH1cNK+uaHY60gZ/h79+O13oGY7LHlQ8t4wtgqXP5uLwnPAgwH3+QCNsQJdG50VkrWMk7lTHbsjeheY1KRboR59paM4LLJ2Xmxv0YrM9a3SiumOJMIWuCsXiWhaEYyzAz1QHy9gYCKbCOiej+VYLb1p5C2eRkZHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVso4/h9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVso4/h9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EEEC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762145993;
	bh=Q6mH0RWepEsEtWfqRYBRMoCEu2RPeYxliqb2M1gNOUA=;
	h=To:Subject:From:Date:From;
	b=RVso4/h9lNflgNdd+sJjdouyycpoPgfoGRy7Q95ZBMluu5UB5UIea9kai7M7Q0i1h
	 xK6lLNyuSOBpudarILTvtqntzLecxE9EoKpkt9eExPJdKutX/NTansf1xdaIQJ6jYQ
	 YGV5RYIPGmkcvcOrHNsSn6O02xnF1semARVQ40cNoIqcL2nTwoMfAy5uy5TScpPYgV
	 G5M/TRE9zkOGqhzVQBgay/8bC8fboTyTBO21ZnPHEgZ8z4o7yrVn15Hf5MGq+O8pTU
	 hrjczk+knwly8jCZ0m+PfGuWWBsdF4obyY4iQNH0gdXwngADdIiuzZ+9zaFGIo2UWv
	 RbYppOwKUDlUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ADCCCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176214599360.1030.18440036570137891056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f4a9cbfd9ef4b76f63b52937b84a407ad44b99a432963636804bf1675899bbe
Date: Mon, 03 Nov 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762145993
