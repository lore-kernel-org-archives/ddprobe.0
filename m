Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE971D63F7
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757406595; cv=none; b=Jyeq1UlGvpb6qIthhGXIuJ91KpJ2pSrCcFt5C0WgWaAgWOJcIRxB1OzE569K/oW82LA+DmZL8JbVzbRAzFIbiIgipG0Rd2/d6Hj+dZx1/UQw0NJAZca0JYUa9SGYTQZ2ry6eDrIAIIwaSp9jvo3onLQZCvoQDGPBIbrM1byuKOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757406595; c=relaxed/simple;
	bh=gRAi7l4mbaywfB+GU4vcF3EJYbsN2WhnyZEKmQSBR40=;
	h=To:Subject:From:Message-Id:Date; b=thJxoAUA8MZfrv604ZwAkg6jTnjPRR7Uz2ZvrufKjAU9y4CE/rxsqJzT0+kR1Sx1LZrrejendK1EkjDf0B/xa3ZQ6QnKsrnXjSv48C+CRywxNcl4zXYs3DeJQPK5Rnknnxc/Q27Zu+oJAv1eOy0Z1vEDt/YHoq6e+CPkLW1AcEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8tY4vCL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8tY4vCL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D1CC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757406593;
	bh=gRAi7l4mbaywfB+GU4vcF3EJYbsN2WhnyZEKmQSBR40=;
	h=To:Subject:From:Date:From;
	b=A8tY4vCLRwu3iSvylO3VSScevRwbgQqyIBmf+2zMvDCQBXfm3umt03OllaAAypGzI
	 3Yc3aoW8EkIjFDKGyT0tptJeA1R0LI+nEWXM8Lig+Ps9sIaYi2FKC1RSZo927XUDcW
	 izk1P99xEBcJHLnTink2ntLM6997xPoBCXcXe95FL3pBC4lSp4qIlrNK5w2yL401/o
	 rGCM2jOt9C0q9ZGtJ/SgIGauitWyAeTTtuoOG+nJ3sgKm/xyPd6mAVEkP5t6Qk15A9
	 t+Y+zSSJWkW4x790Gtpve2oCSh7NZo7gEfBwYundnV+w1O2ZMw7SzzPchdshvPhOmE
	 ElssLhnAN1rNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934C4CAC589
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175740659358.29848.2857267443375596838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 159b5116034078c21f08d738fd288c15d284be8c144cfccc7fef1bf2979dd87f
Date: Tue, 09 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757406593
