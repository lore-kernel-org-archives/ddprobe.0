Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCEA2550DC
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744911594; cv=none; b=bkM9IsadLHPr+2CL6P0KRWyN6LboyshE0KBcbyNMYtA1u7JiNX/H+a8iqqmIUStecz4lRSx48aQERq167RBS+Sv11Tt5R4HBxKS41s+1GQdTJ+s10OBTZz4uCl6aRSuPk158SHZacmrwpE/FHTvavpVZ2kt5Cu3c0PvfnXkm3qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744911594; c=relaxed/simple;
	bh=b4jXvHHrdezmZ+tfZAu5TD4oQItE7jQDqLEUXG6pYP4=;
	h=To:Subject:From:Message-Id:Date; b=SXY8pTa9uFQIUgCNpT7iSB44QzAS+NccWFyvWtr6EJMZOQgdc+gY75X8y1Tfyv9CvAIdvL9/4VeRDN+N5fUjEf9M1y0qiswCQJ0QxieG9ZrsICdsJ3a/uMeCaQpF9/y/DqaECA8nB+m2yDbVELN5t/MkOOxLcpOok3Wcv+aypD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SrOW/7JX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SrOW/7JX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4192C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744911593;
	bh=b4jXvHHrdezmZ+tfZAu5TD4oQItE7jQDqLEUXG6pYP4=;
	h=To:Subject:From:Date:From;
	b=SrOW/7JXN0jC07gvMNm4+F7UPq0IepoVzP/jaZYwHT6XkO6atpX0jd9dYWJaXQLdP
	 H2enECD57k1GOloZ5Xval+BueuD6vnfHUJ5oLv8bqYNGGtHnit5g3pFhQXrR96Tl8R
	 BMO6trCJc9TZkNy7PmzvGR7Phb8T6emwGTlSITJyWDqp+yqaUA2+KJ5P9Yco39FUW5
	 smYIw2inSZmHP5xMSQXWw9C5VxsSNWgTnoG1c7qNwSzn/zlINPWnIsZ/W0Usf2PnZo
	 oh9qAMuvrvX4lYvcIrNq3EOofySCS5pSgTMHqQK4sAz/DLEZB2bgqt64rOGFdOo+7m
	 cyXE2Uh+ERjrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1365C369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174491159364.13274.5746237522987525965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9471c22bc1ce8d54a4a37c64aa4a09f204cedf2d06a089abf3d2631a21b42b4
Date: Thu, 17 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744911593
