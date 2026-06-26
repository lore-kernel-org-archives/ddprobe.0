Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90E0F3FA5CC
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 14:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782484054; cv=none; b=UCs/fEBSjrFtJmYhqm74fRr/jvTRwZodRFBThskrH8jj2O/zcyWLA4KpyDHsaETB7XUZ0GoWWLYBd8k+IQU4vKp2loHGTG1wCAc4lcd4meoqA9lfXUkfxLa5QunUvSYPkbVrZwwcJqJI5NN4F7HD9DgOKCrAJx9eSppkjULSO1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782484054; c=relaxed/simple;
	bh=XpveN04uPsVmHDWU5Hm+GQL9yHc1gqu9k+iMKx1zUqc=;
	h=To:Subject:From:Message-Id:Date; b=I08uB15UUfPHmRzlpnW6BgHEFHNefh2OrdX7aCLvSTP3AXQ8qgCWErb/z3/UlLvSEzEgWOtmLoFBIk3zHcnJpacex1Zjv/aIdiZF9Z6FTxPq+E4hCVk/hZgniXoYozJuu//q89Q8A6C9VkngStuP8IwcTTBQbqVM/EFDiRjbHAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s87Xrajv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s87Xrajv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6010C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782484053;
	bh=XpveN04uPsVmHDWU5Hm+GQL9yHc1gqu9k+iMKx1zUqc=;
	h=To:Subject:From:Date:From;
	b=s87XrajvDjSHnhpO0iz5gdhXo1TOjFzhvsYlidBFDpwbIWVkydGqwYJaIR5Jxv4Og
	 XDqR1FCQNyxZCNHlPOkRFpBShJn7h0Dn0s4wWM7H5N9WfZq2T0oQv6UXCj3Sfip7rB
	 uVShb9Gs2hZoXcvEa1wEqvBMx2wWWTbEeXGWNZ2JhbcB2STkxGz293T1CojXFTSRa0
	 T2crdaSlMc1EIS/AQaJ4cS0muMXtn96uxHeNS5o1YOrYo5wE47rBWbg5+eIlhOHnFU
	 qbxbrdpZGAMGaI9Q/02StYwTyBKpvKZaNkacbdrIKsllnli/DIc8xI0yCyzpgTVABh
	 tZiJJ0BIrknzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B85C7C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178248405374.485.10926497056104529747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c0dbd9d5f78968f5942f4026415b789129b88c9ed197b652a0fc2d136f0c3db
Date: Fri, 26 Jun 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782484053
