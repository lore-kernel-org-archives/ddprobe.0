Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344B772637
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746517194; cv=none; b=pEFycB8013XiWSq5ho+6vtQ0cHf6QNkkgArSp6S1x9ycLkSVUSSRw153UfyuGb7MEPNbNg24Ob/hUVSpx2zLt6MGEvnYa70gOWeLEIP1IBx+uunucG6WyadH6+kn9v2Q8ozYdEWPcYiMwA5qB1y/rYEdq9j+zXvltKL7OhE412c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746517194; c=relaxed/simple;
	bh=lEPoC/78jF0rUmUyfxizklvWG3OhatCJUhqH52SnN1Q=;
	h=To:Subject:From:Message-Id:Date; b=OCkggecihcUycmURq9DxGpN3rBtWBvrJN1KcxY3gth7FIKqXe04xoSU22iwt5TDs74gHIOZX2xX7+QU3C1B+bgD0IM3rxSH9epDDJ9DUqO+QhJ+seXMsXQZ+Y3Ou2AYfsRPi/W3u6zMYsD/A1jUdksHqtmdOc75SKGaY6DgCCUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOTj0On9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOTj0On9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2428C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746517193;
	bh=lEPoC/78jF0rUmUyfxizklvWG3OhatCJUhqH52SnN1Q=;
	h=To:Subject:From:Date:From;
	b=LOTj0On9k0x1179oo+uePCb5P5bC5zPCJK09ga5Gye6p4Mq2jQGtsLMZWlwVPIGqO
	 5/CuXFQ2k6roFaEhIlVExHcRPMYdBt6MhhsvjgrZXHistr/xl08t0Uvz8w1/D4dELJ
	 yodle4pQ3JNyAfi138u09TVWuv+aDLBNGBRfaKUd7k1yH9U8hVM9qki6POQI0SE2EB
	 RZI2y0xNbMElh3I77kAm3GSOTq5RRjfFidCR6clx33fkc3CgsJt949N7wGpcPLAlJL
	 2hMy7cI8SQNHpvJaDoPGqYR221C8m44juQaWTD87qq07c9a1g3uc/VQbpIfgFQoyW2
	 ymgMuZqy0M7dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EBC9C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174651719363.8786.1515396862323670962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86609f22287b44a3eff78975348ce322d58b7da769fda042a359a7b96aa9cf9b
Date: Tue, 06 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746517193
