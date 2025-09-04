Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0738031A56D
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757008194; cv=none; b=mnkNxfBHoTGYwGOjyScsYuiCMfGMTPX8pGVqepXUzqt9jX/rj682xOCSjk4TBSKVZe397/42CkVkfa1LoLygGCGckP9Vpy2UM1NS15uEoBYBQeRrcWnztxauyKri5XcWeff99ikkd02X9+NdRDirvStXY9KnE+Qs7ddr9BrHgpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757008194; c=relaxed/simple;
	bh=2yn0O7Fr3p1tqjWAuv4gTY21eYU3UKeEoVO4P0mIxcg=;
	h=To:Subject:From:Message-Id:Date; b=thH+ih2Sswe2EMNNtUSxR41QuMbY+WA0HfQTzygwiVCp4n57dtAnTl/yBujetuTHAcR6VMnnQ3/M1yXRKueg50ewckixX48BES7jfDbU1OK0jCDCJKVWg0wqt87hI9ka31dpT82IUbxDC2P1Q6EZB5Psc5FUe48PcGJAMOHQAhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4CX6wlq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4CX6wlq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A649CC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757008193;
	bh=2yn0O7Fr3p1tqjWAuv4gTY21eYU3UKeEoVO4P0mIxcg=;
	h=To:Subject:From:Date:From;
	b=o4CX6wlqvvqRgswkzDQBcJews8m1jz6Aa8aPoTQTqBbAD3iMd1MpFKJelXcknwMLX
	 uzTRJ8SH/e4T1Pa6g2a+4ZlYtPUAtvfcC2RBeziCb7hfeRSii+ke9syyiAHcQ9FCR/
	 DAfeIlbkrL2yzH59P01bkHt84ydhb5SroA9F38KfFH3Bpx8RccaB19C5AB0B9MKGP8
	 eaAPlZbNpJwiCJyrWVl6yolshoyYZp+KubiCv1AKJHGZvOJmB8FWe5y8uFma5U8j54
	 3Wa/3m4NtkFa2F0DBwgSctOf+UFll7A+IDiXeizNeujkIUW65b9qifYyAD+3gAgFtC
	 c22L5rLoXFVpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F5ECA1013
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175700819358.2574.15264150588022276467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1439dc77b2f2444ea3faf8752205b1051008a0d6c18ecf4c3724b19b9e5d22
Date: Thu, 04 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757008193
