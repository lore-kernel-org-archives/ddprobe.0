Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76310D517
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 03:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714446143; cv=none; b=QZ/lpeCmCLc/fEqdahrKPeKmmcku5Wq24/p/c5hjX3MZfPj87sQkGm6c2U7cXHR5hkBJL0C5NkdoWZ/J6H3VNoGXqCp5c8NqCJrGmcyxk3jjWc4XPY2mWE3qe8LnmzG8HYCI2nwP2WsQf14TevE1duLRJNh5H7cXDSrbl/3vZMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714446143; c=relaxed/simple;
	bh=un1OR/PaYnXjaWB1uqpCco4WWWQmgMw7Q9y0GnQi7Qs=;
	h=To:Subject:From:Message-Id:Date; b=IVVdk87u0C8Y0QV6lbmJLYhNd2asjwkjHr3L0hJnrLYMaSzWX/f+U1g6kIxbXWAAwdYAdGmkrjDFK2pXiShsyqXtcTC6etNo85PPQ5Ua6VJxzOE93j21nRD3/8W4gwnc8FBVA5a2W2RJ6tsWvHzXvmsxwCjk7TUyyMJwd4PJ5jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/a3SEwt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/a3SEwt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2EA5C116B1
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 03:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714446142;
	bh=un1OR/PaYnXjaWB1uqpCco4WWWQmgMw7Q9y0GnQi7Qs=;
	h=To:Subject:From:Date:From;
	b=O/a3SEwtkSBLrnOfT23vBlzL31+Zsd9s0wxNM2Ez3heCGOamRR1icou4Dm5+GzesR
	 cGWTBA1j/GMPUrDPT7Zyms05Q3GJpRttyezfusVfEAnbHclnoiYrS9zcTAKciBJS7u
	 ZOFj3CkC1IIU6TZSGdC3qTUUlka0r8sfbx/af4/RWHt9A8LilHNasWS/TpB7NNKxIj
	 nAGiP/7Tfaj0gp1Y6yHEsy+XV63Byjeu6i1NVQOFvMDRNgPZPL28paqt6WDirKCDzq
	 UmD/p3i3ODOlnaVjBPhAvd8s6DGaig2S+fI4i/JsrqeV6dCAFQ2bqMWJv8o/v54hMM
	 ZpNfZaKwwc0CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D04F4C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 03:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171444614280.28362.10599695512728120982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b6e6b536f8c7155c4b19b78e848c3d500b968323a216c5d6e4a4e9a68768a3b
Date: Tue, 30 Apr 2024 03:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714446142
