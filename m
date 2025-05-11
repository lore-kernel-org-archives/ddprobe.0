Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDD9129E6E
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746955794; cv=none; b=VYMjI0utOHNtb5TSYJJeXNa94HypaBVK9z0KccXLI5RoR0V6kQrAgY+iFhn2Hj80MeQPsojIgqXQeJe3XBLgcoF/dwbQyWDiPHONsIFZGwKS2wCAGpn5nnVevVXhtdI7UXV+I4XuTtEPIjDT0sYRHrv3vFNxelJzIYutxDOm11c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746955794; c=relaxed/simple;
	bh=sxxojYN4J0arwfDNh9TtYhrRqF80kfvKDhPm4AX1xE8=;
	h=To:Subject:From:Message-Id:Date; b=UNYG1tv/tHMk9KDZY4m+nxAIjNBxUXmKhmyhvP1idmDnRzYLKud9tm4OKebaKGNtvPi1fsSjVwQ6zmmiJZ1NMgS9/N2J+1ZQ/gdN9pGqMvDGmX9uvsqRpUnaXZ9B6Pk/OrKMxsmYBGvOk7omxNjuBe8EWnH/1gOoc8DLEWOy88g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ThZybqpl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ThZybqpl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10D4C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746955793;
	bh=sxxojYN4J0arwfDNh9TtYhrRqF80kfvKDhPm4AX1xE8=;
	h=To:Subject:From:Date:From;
	b=ThZybqplReKO+ucohUWyiOZ5SPEK//5l9fUmTly5GO5H30h1HtcMPKM1jPJPP5rI3
	 zcmakwfOpSLw2BF5o88YL/FpMu0Oh+b/cwYUK9xJqjrDo6EwEJsK86l16ODMT9HC32
	 bKXGVHXs5VvGt/iDyzrZFivgJvJi+WtY7gVAc+sHfkQohhZ4aRbhfjZkD10IH2CaxF
	 X3ofQBfy5rkp+kfRFsz5nMKXngne61lgJ3SxgGewlq9Yr72TAM8uCeorVwDBGt6Q9W
	 Fz/ZvBOZ4xLqpJQpPuu9Zn/iM7wF0L9yXalbRrTkVbgX7V75bnKv8SX9WB7xQFABkz
	 HDGG4nZAOiqWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E191C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174695579357.15546.7323508140766276643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e96ccc5d5685886edec277095f8a4e16f64374245d6b2ba0cc4e469d696b2c55
Date: Sun, 11 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746955793
