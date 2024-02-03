Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA685CDCF
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706952497; cv=none; b=gpwRX0ZvYdTcjmBRAiPdXxeuF7OnlAg7Rc9Ugb8zn2jHfdxedCu1L84FbsWx2wypXTySNWdGvlc8M5UWU2kT+NBHj/tq9TpYBFwXSbAf9ieqxorufKxnrw//G1qq1Rn5GRlHdQI2wvMbygGcF/9kvyIrCJoV1og7cxtnLVJLSr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706952497; c=relaxed/simple;
	bh=jOpQIkoOPAB/HTRSLl5YPXvH77j9uDOi6L8ORPo7gT8=;
	h=To:Subject:From:Message-Id:Date; b=rxjgqe+TUNIA0+jQ2VSoDsa2QigutsAPcxgGG3Sr0kmjQw/AHyuFsG+7MUqgWfAS8aW2ib/bbwYwAXbWPGaivj/l5zH5XQWteEjp17ClkFCVJ1WxBSJqxNnXe3oGX1+bxkquVUgiHImbxW0lta5utPWn9QVjY0ab8qQG3a9IIak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEDqWz/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEDqWz/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CD3EC433C7
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706952496;
	bh=jOpQIkoOPAB/HTRSLl5YPXvH77j9uDOi6L8ORPo7gT8=;
	h=To:Subject:From:Date:From;
	b=oEDqWz/wU5zN3gy6DomSiKjjkDWjcc4S8M9sor8O9grJf6feHfDB8nvgkRHEmOMOh
	 dOUFAFn/6lqoHEUZKMLNDN5FXFTP6jd471TJ3GNUo9BOl8jKZSQX9Nm7URlMKmGgoD
	 BFyVtYVZPvd92soVIHrHmE2gS7dZfYqQpYWTjbyl6pZs/ZtppHdDvoY/LVcYcf6iIP
	 4wZbcNWNMTFd+ack/W5YQl/zvR7PXLTojytp8ty3PSiqhLY18m+KlEqVpNQrhVoZpb
	 SawgYEaNG8xndbY/27VBe0uP7M7TS8dGlFlLPvn33QLHfYC79V9BXxI9MFDZt7vE72
	 ebFBF4tPSzRLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62630C4828F
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170695249638.6690.1963758398782656518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 992a079f23c49fe201ae4eadd6364c2777cfc6040a9531a2f3a38e1503860d0f
Date: Sat, 03 Feb 2024 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706952496
