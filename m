Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246C0762E0
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708449497; cv=none; b=JA+cMV5AeTweOBxmZ06LBc+xYkamH9J2zdSUIvn6H5GAtJR6Vqo+FpfW13mhL6gLhfp6qFPFKMzKrxtNAvV4ICV8v3+be9wabJ1mwBe3vQ9ZYGWil0+z8R2fgZbXkSiBe5jk1YaLBGGxyqGX/7jgL67DjleLyjr1d6grESc4/SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708449497; c=relaxed/simple;
	bh=69QBB2zjm9x4Bdcp5JTHGz3HHGzrXRLq4Me6XqZnSQs=;
	h=To:Subject:From:Message-Id:Date; b=hyP6BOYlCjrsLJTUQsLgidINFAvf5nJ9cXMxewZAHYragus5e34fxyhNhHeIiPMBNhtusulms3gMx6nP+NLBYoAPwnpKnxbJbFG9zwdi1DbvyIdRJjIaeJ3rx9iPW6TNeaNr7qAZgcxz/kjM9ogh11R2g0RpkJ88eg+JhsQNCdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BA178zv3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BA178zv3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 953DFC433F1
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708449496;
	bh=69QBB2zjm9x4Bdcp5JTHGz3HHGzrXRLq4Me6XqZnSQs=;
	h=To:Subject:From:Date:From;
	b=BA178zv3o7eCYhoQrhlPTmT3FY/IutiVA1PxH43aWjwxBS69Tw8L6aLY/ELiPDvW1
	 9mW2XUQefTypWBrZqy9DhZWWK4BwA2sFq4wCJ69kt/jVlY6bgPOMYCzmoA7qS9/b2b
	 wJVMgcxt2y7kAQn38Ax2syfARNXChfk9rVwkni2LSs2IXaoV6qTFPNA8Eyovq9TcMs
	 LeKTTD9KcmnYTQrioPYicgHHx8wXJs9S+iGxR2/XGs3kZpyQ0Se1bHJKhzlrHcOzFE
	 TyxegqHOQVqQe555TwikHcjVYGWqy0wnviYS2hVCpFjYc5ailsnUhjFRmXmBUCnDa2
	 Gfr7MwCOUpeXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70961C5475B
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170844949645.21292.14588144434976821766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24397547697256b213784072887e948bd9983f11b0f9b71fdc0fcb87e64cacd
Date: Tue, 20 Feb 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708449496
