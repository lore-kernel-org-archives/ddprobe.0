Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477A03321DE
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 07:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786431634; cv=none; b=Dqb5jmFKwKCJvyewdyel+BNwPHb3Gj6IP4M6R5e60Vlq3cfaYoLhgccCYu6tWAUgyDgriXkWmVAJx73Fhu5oek71bqvHW/WrqCZRFOegPAAvP54bF9x7lsjNrmEoOo1AYm42pTFoPBK9q1/pH+YjQXOPBV00JBARi5IXoJnxEJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786431634; c=relaxed/simple;
	bh=BDDEiAOx3EAFmOg9wzdZQKppUoo2n5WV57AYq3/fy5k=;
	h=To:Subject:From:Message-Id:Date; b=kuEKX+rfr5suCveeYf7b+SGFwTnVSPliBkmNXYZ5ybpb3IbiyAjPWZiI3PUpmWRaXUdey2xeScTnXlTmxA9DQs91fAtIj31R4QZX4fX4WIBScpga3XwIS1tr8bUUrY5ygW3iUil2FKk3zTq3IDx56MT5Dg/WQEKSgt/KcgNz6s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=huDFD5lE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="huDFD5lE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4C2C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786431633;
	bh=BDDEiAOx3EAFmOg9wzdZQKppUoo2n5WV57AYq3/fy5k=;
	h=To:Subject:From:Date:From;
	b=huDFD5lE6XUSFikmShT/bdnrZZmBXw+H3WddfrkXnd3Y/al3qySBUzWdvjDlUZF4I
	 WIxvU+J5lAIXoyqaueGZVMPydHPVM32lSTR5NveJvihaC0q6lsXjs47xScFkylc/D6
	 OR/D3JGO2pDYzNyuQphBkLc2dFtUx0b688cWN3YCua5+ng12c3a1XGjdgrtxCOH12b
	 sztIksHwKWQGOo8Vp4uWPhBBPK4yA1YdtcYAz/h81ziyWV/cu/Kk5z0HQ4r8fZd41J
	 rJ7PXyOQMWrNQe/apAaHRh09Tl5enS1GTJ6wVCJ36sf5ZmAFAOA0FLkuS6dZutRvVJ
	 Z+zSVrssv3y5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A777DC5B56D
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178643163367.14763.4117158529131302809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 088e63b893a06041bd8457e10c757d32b8a6b7a5620edddcf09571603524fac5
Date: Tue, 11 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786431633
