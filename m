Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FA51C27
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725497754; cv=none; b=tkvMp1b4AT/SmDJCUsAM/FfCNKQi7r77ZTlxJ8bRyyKMEoscF3u1JEWtRGTfL2gJMy03ctWroG4+LaZgGy5g7WSVFEIm+wVdzzNQmwUgtlZrVhXbiIv0OH8A1U0MOsG9SXDAa9Y7ZVMaRgiL1rP943F4G1VYwLl+wdubDitGIpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725497754; c=relaxed/simple;
	bh=H+oiThz0x2w5qNIWgxQWaS2kp62fN6JrTzReiBElfWo=;
	h=To:Subject:From:Message-Id:Date; b=UQCh5UZ5TvkkoJdkRz3NQVOg7ufAN5/Dz3TmidzZv7aPg4XIBrpzWiQ0kO/dVs3H+/1hmK4HOzXp3lJmngMPe9u8Lh4BU9H1jpfACezN1r2DBt9MeMGR4CnAGBsIypNQDgyyb1T85TFKOKcHYBUu9WmVi0RzY+nYMa82Ugsvz8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8CgGwmQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8CgGwmQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F57BC4CEC2
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725497753;
	bh=H+oiThz0x2w5qNIWgxQWaS2kp62fN6JrTzReiBElfWo=;
	h=To:Subject:From:Date:From;
	b=b8CgGwmQ6V+PSaOrppT5sXI0FPFRGkiigWocPPG3ctIViTTjOYIc5k577/FKKUifn
	 cY59gjEpuwVQzTJOa1PwOFbWKwjXkvvMQbmnXT/DRLLwK7+mjo+OM3Li1UKY3Z2iur
	 KztCTEQnX2EldV/4o3hvHZzm6iQxibtKPkOyfNmOlIQTo/ZhHVufH8udAuYrdlynRo
	 7lwKfnUQoi4v0437z0sPFN/UGcFLnyUJmmhGdbHCqCXkNUXkbW9hg/hx88elqQEt6I
	 VrrxOFLTZ5inltKmNqYmXKiPLn2T6IvucoEDh17+fT6r4GYbJLAI+G0phvKYBPMg2f
	 9Xfa8N6PAYqTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2C6CD4F4E
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172549775357.11547.16915283805747544254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bc1fe7e36c103c22ca84320c7504addfd165f5bff4d8d18681fcb7b5b884e94
Date: Thu, 05 Sep 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725497753
