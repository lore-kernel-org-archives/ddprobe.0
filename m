Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7577A2E1757
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753119595; cv=none; b=d6WJxpMRz6OTZBAWJhTSvQYsZTl+HkR3YXF6N1Q3dLJRcVWgNzUNq/x7cDqaAl8mEsxHZW0rZbxLstIa6dP/2ELP1rQyHMGydTK4phWyY3ZDwIoxhPhyztUeXe078WFISrmtwRIh85FdGpyvtjQoQz/VVqwBFZ/BwVBN6DYieAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753119595; c=relaxed/simple;
	bh=yJFGQLUs9l7BSPqBIOt5f3QzW0+n/zW1CcZPnbEC0Qk=;
	h=To:Subject:From:Message-Id:Date; b=Egi9KxK4eBFioH9X4pnGBLlYEbkyOpyaCFQJgpxb8jmmYrVBWIZ+VZrUkrmvGfATCxD98AvJudCmISPaq1yLWYu+tzPPqmBjrYTJCHl6u/JtAbxgNyzXsCdYgGZPX2Rhmqn7bgDJbEu+0ckxdJYXb6o89GTKe7aYU2+Y2gQGfc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCAVJm70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCAVJm70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C759C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753119593;
	bh=yJFGQLUs9l7BSPqBIOt5f3QzW0+n/zW1CcZPnbEC0Qk=;
	h=To:Subject:From:Date:From;
	b=pCAVJm70gpyymEhgchZ3smZwEDhDlF7nk9VJyTumDFHWlzs2s61+M4epD/dcjOTlt
	 0vnDOK1eRoxcpqHLgki+rBwnn4g60XEC52uhOe6C3y9LSdoHRXY9FfryXWku3q2wWW
	 N8ghfHRz7EWAJjMeFh5RK1atU+VK8xVCrd0f+GalVD9FIc0Z/8CIgTJ/cWHK+5AWIN
	 BFO6CeGFs8MK9/XfSfHNmtViVQX8jVUCpLlauaGwxZJ76/gBP1OuofuXnO2ryLZmqu
	 pGu0YKyhjpGr8+ifW1xv9PeeyX/qStVOTKPOTEmWNTbmTj69c2zhBO+k/7cGao+VpP
	 PFZRCT7fR724w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2ECC83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175311959357.11772.12114585704746160872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d532dc889b2536a2f45f481b868445dac0f8056da1a539051cb40befdb8af03
Date: Mon, 21 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753119593
