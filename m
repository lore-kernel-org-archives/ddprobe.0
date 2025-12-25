Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268333A1E73
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766631834; cv=none; b=mfJonRT90SYsdqNv6v+Paf9KypY58D8ciAan5NJ/2Ws4asYXaTtTsVEdCE4+ZHZY9OqMjrUiuVRrD0c2TN1+y+KwK0wKnHqGWVUPF/lVNg8IEyvNAI2638wzVGRCc3eDcZFFv068loaqQWb8mbTKEkEZYJ5F4ePBvWxiaPeT4gA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766631834; c=relaxed/simple;
	bh=ZBRvEp+dMomNkh2VWTTXrWdpBslws3LF4oCYn5uXv9Q=;
	h=To:Subject:From:Message-Id:Date; b=Xp0YIBtgt6HLe013pR6lTITNaKjrKU0zGXOXHZeJ6HKWzfA1Vu9NuhnP3hMIx3IszO31L6ywPGGggc83M8vNaKibIJzqt8OzysAy2KrleZTipqQiDIkz7g6Lo9J44H8C+H/kzQZoyVaSYgTggoOyrFhx5p45ob8EEGRhLHUlcLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfyBAly/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfyBAly/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DBDC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766631833;
	bh=ZBRvEp+dMomNkh2VWTTXrWdpBslws3LF4oCYn5uXv9Q=;
	h=To:Subject:From:Date:From;
	b=kfyBAly/hOjmUBNFyhpKqNUmhxcRR794bpHZ3Am3AnamV9iSwk/R2HN7d2LQV9SRX
	 CIhZB2zauSFomsxdr6Yi5Ha+pb3WkXeDl/mlENK8XnyX8vOMdcIK7I74krK1Hlig7L
	 x52izAxeL+al5JHuzIGJWQEfyj7fCyFqKEP0lUEvAGecXBDa9BpxhoIdiLco0mEKzM
	 vZUBEMXFn83IMtiDEk8Zu/tfhGKA31w16MkvgQQCc6CNtOhCVZiiTL976mU4ea8RiG
	 oD4zblR+lETcjdD1ZOy6qQAobd/nP1ui36mDTRQ8TRxCeTPJCdF/JhvTYlRj47ogmB
	 J6SZHBSaY4Tfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F69E784BB
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176663183359.1988.14875431306849530282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dacefedb2a8c2f24350857a6b3040912a0310b37b07a6a0fc5fe5402be2a3234
Date: Thu, 25 Dec 2025 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766631833
