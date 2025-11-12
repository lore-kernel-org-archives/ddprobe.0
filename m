Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159902820A0
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762922994; cv=none; b=K9eVaKZCpD3QZOsnmdro7v6/bJugfSSaR/PHosjS7deb5rgDJg3eZ72xfLLcxsHt0SxqhMSThgrY9cdWTCtZ2ASFhxQ4GGXCQpQ2hccPloXdtNCi1X5d8kXo5TiG/IXDiADxBU6gTm5YCzDroX5Mai3Eil4LfhUT2P457sWDzEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762922994; c=relaxed/simple;
	bh=47PH1volheZ8p+yTJNBiAc4UUZdOr4/sd/chrdZk0v8=;
	h=To:Subject:From:Message-Id:Date; b=CyfixCgWhZ26y6iiYp3SCVyFKte7nAPl/WNQvJGLJScCpdXmYgHpJz3Uw2CsulOCfGsm98SnY9EyMj4UHjhQJz02AKkZdZEZGLMcTRdkCNi/GWswObF7DEiVkJW/l1uhHHJQjqAZ2AuvlBP3Bsm1ClLXsq0k6kt9MH47LEr6Y90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXNZ5mxE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXNZ5mxE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A58EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762922993;
	bh=47PH1volheZ8p+yTJNBiAc4UUZdOr4/sd/chrdZk0v8=;
	h=To:Subject:From:Date:From;
	b=WXNZ5mxEjwDU3XBm61wduq/asi4UBxGO50qXxX567pjUiEeZVQY5Gqn24KL75Fo3F
	 0cQupd2jUWUZgbkyJ3RgezlOklKHAJ9ldTNkwFfV4C6+H7K13uTqVa16dXiWYf6uHn
	 4nDaKcgxIMZUn/xUprcIbdDJV8FYzS0mwMmwW1JG1E1wRUM5hCWr8mzKKgZK+JyTc/
	 G5MJDEjNclfMC2YUPLECQvpiaf4NOV0GJNC8+Ldb2wbU+B0ccKrdp0kTZBx6+h9H0Q
	 kQzxs1O8TkDZWRDIM5vOwqCWLfaJRQxgPAPzH1qxYS6bhKuudMO4ghJucnJKoLCVdM
	 3WSTBoXSPak8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED41CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176292299357.19858.6840059132875089009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 776ec12c0e18d11e252e8282ee6b20c29ad7abee7acb2472c96b43c223cbdc1a
Date: Wed, 12 Nov 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762922993
