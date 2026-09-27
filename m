Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D094346ACE
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790494234; cv=none; b=JpOj2lWwrZ/ywiAX5SCZNGMURKIfTovuUGHfcUyQowxln9ghW0vd/+p/HAEVkAJIFckSkYSgWUTnQtpnXexE6OTyL7ZUPTlp7d+vPfEwSWWHjU5jh9MR/IT9n9WiT4P7w3fRNB2m+RwdiZCHdLSyS1Jq9ihrBYRHKE5N/NvJZ2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790494234; c=relaxed/simple;
	bh=UW1XPsFPYuxOGhQ1Al+w/TEW/firf5552VBjUH8gdyc=;
	h=To:Subject:From:Message-Id:Date; b=DwXvU/kbLPrhu6E0RYHl96kzFbjCpm4p/LMepU+6X1GgNBPJ5Tf5obTWIuDkEkFcOrw4ksBz9/rvpRnUDhjrm8qK94YwBed2oBhT2r82AXKsh9b3a0Jx5uVAcCiwL5wWkb5X0icJYkgdIWZ7U/XimksaBqLqoinRdeyt0PcWfKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfdibbON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfdibbON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D164CC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790494233;
	bh=UW1XPsFPYuxOGhQ1Al+w/TEW/firf5552VBjUH8gdyc=;
	h=To:Subject:From:Date:From;
	b=dfdibbONoE0qf5Lshoskjb9rnJzuoPllaG7yNr+I/ZbUB2Q5vLftYxTP1/mKxER9f
	 htLdG6vjYErZuLGq9zgxkCW8LlsU5dR4iHMPIc4/K3x4qTumYfwT3fYdZFv93q7gc/
	 3J6kx1T/tOTW/lEXRtddDxq4botYezmufDDr+bqlPKfU11+VIi+00lkFNR+YlMs/Cy
	 XU8yRXcHZzPVG2q9i8DfZKR5tr/TD/XEZYpO7kzY5WAy8Ucgl94LiKhCQ/OKW0n3p2
	 bK7fO797nH3hM9/pHb581isXZ1AshPo77E4HEldj5npFaA3yqpeR8lGrARw86eg/Vy
	 CL8ySOKk3XTzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD8AC98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179049423369.1520.15829311651975584612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8de729181bc4c31550562192b5d11c4c7736b3db4a991f9006d28fc44516897
Date: Sun, 27 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790494233
