Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6D8238D27
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777151254; cv=none; b=CfPI4pmO5bUmrD9R9EUv8hnOBpT/lFR7cQiDmGtJmQxi/Mujv922ncWL2ngYNpKGJ8TDWduteZFcJnLQx5XRsGZrj4H/hnKYo/rGKXyqSkaoD40qbk1cazDivsRFlS1MKMV5jh/o/95tJiPFamOgYp+tbHc2uLP+efPQM60Nk60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777151254; c=relaxed/simple;
	bh=TiP2FBGWhgIbUtJR4Bhs+fh1tJss7CEVnksZUsxLmnU=;
	h=To:Subject:From:Message-Id:Date; b=Q/OMXSsIwmBRgWcpRTwvrkwJIFUJHw0oHwU/rAdn6sazx3nJ91+3CCwowrfRuXBVhTeq69OSGLiqd4CYTgJfsaY97OxPAU9ea18jdN4GT+B7w3Xnnr4VS7YoZ7AH2nsWi+x1Zi6rYb8INaDj464qKNUI/ms15r2jlU/E+GneWbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKkWq1uN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKkWq1uN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4316C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777151253;
	bh=TiP2FBGWhgIbUtJR4Bhs+fh1tJss7CEVnksZUsxLmnU=;
	h=To:Subject:From:Date:From;
	b=uKkWq1uNzoH1pPPfRKGJYewQmyyakebYdx/me0hASrgiJ9GVoUM9V9/BApi3SOL1O
	 S7tNcakjfz5bp0P/CYq1viyogfb+hI3CS6sPMXR1DxWHX5kpG2ULQEwkv+Xzbvr0OO
	 E7x6gbA4S5wfPJl8Xhovx6SiIhf0R7AhRl5kuJLL8OmmcGtEQl9MxeZMacG/jnGtZ3
	 MBnQU85+MbovApj0X3KB1LXCsy0NqvfT9XwnRVl6CBRE4EqMHhFnhxFrT6X7VJxRW0
	 sfseeB6PrJMQ42iFqzJ24RoxPswQdvj6To9KaBr5VUx+xFplVUeXpCSG9nJFpkqtQp
	 FtRaJ7GXTbYmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1441FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177715125368.4039.5296479608226936553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 817be6c0b2f2a57b5c6a9e2cdb81e2960b20de8d8d9de077bf801b365c466511
Date: Sat, 25 Apr 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777151253
