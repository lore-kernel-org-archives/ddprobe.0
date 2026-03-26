Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE3FF38B121
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774527293; cv=none; b=dj4xNkl/cKX2it84B3TLS+gVkkLJ8jVjBA1T7Dc6T6650Rq3qQJsu0htrxPOiZLqp+IfUw7H8Rh+lDBDsQEOu5eAKnVQr5yWSC5C1J/kITpE9XztBePX6UG1WSB0fz7Fr30tbkmMWDwX4oIKEfYouJkFj1Anr3e1YWc9gbJi4xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774527293; c=relaxed/simple;
	bh=bHLKOmK93FpI7UTkdbcug3IPAvMLF2MtBrsEO3Zjwuo=;
	h=To:Subject:From:Message-Id:Date; b=DF/lSSSEulkjmVMBrpXJcxy5IHrs4s8AGtF6bjvfCmWUB5IyvabfSwM9ewwxh3L6hkX418IkgkRmXR/z3cLC5FGxf6ler0ToQuBQYfGEDseKtL3HzEtqri5LOUDpWNXBCLcXI6hLyjGP4EF9/m6t/24mbIiuEBrM7GEF51ximv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=huFB+8fR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="huFB+8fR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3981C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774527293;
	bh=bHLKOmK93FpI7UTkdbcug3IPAvMLF2MtBrsEO3Zjwuo=;
	h=To:Subject:From:Date:From;
	b=huFB+8fR8M8XZ5sov7xvYizH+jKk2DqXcfS3/Y7GkaYb6srMll9u2Ypm8O2Kq+J4w
	 KYzI18HaZzxH44s07vHZNsCAk81XTAenQvlHeS8Q5ALLVtBJ+2czA6ifxoDUB+9TGY
	 01S8XLp9C7YaRU0Rqw1gU2VSKnFwi8LXbAa7l7l9CfFRbxtJE8FR6nuO7I9FY1jo3E
	 AubIIFJUH7458MYFiTMI3Ua0rIGJVaxvd0YJZdCWPedHtRun4yvGHmAgFX+BPVgCbk
	 j5euRzvm9uZY0ZpLmGZr+655RQ8J61zZCSJV3AIeXfszqAvfRClAT5RzZTyRFcrmPU
	 JLzB93ZFf7Qsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BE710A3D81
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177452729358.1455.11254314441235317274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9da770672f250384cc0cef394628be4d5b816f9d30ebdfaf8294539eef76e43
Date: Thu, 26 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774527293
