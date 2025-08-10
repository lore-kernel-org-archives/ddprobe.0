Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB5E4A21
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754788794; cv=none; b=fl50cxDvSHWo1eE1Hu7Z+u5Vk08Lwr//DXE6WTHhFhGjfIowAdANaz8qOrvIRkdD0PwtPF9UGhJTOaEvoD4ybesD+4EriC1UXNMn0nWTsWPBzVDmnOEpyoK0K7WsYCZT2gY9eRRpCh2J8nPap7r80q1igOFZu/wprYJXxLF1IUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754788794; c=relaxed/simple;
	bh=eKv7yjx+u+oInoPKSi7rVFGbrPBhU/9zP2GWapvhD78=;
	h=To:Subject:From:Message-Id:Date; b=Z0mgLmlGpPczVqVmFjHjuBDv94eQrTpqIXhsKBLPXvltRM6xzfzkeZbxZNSUMFoYGbhfWYDOQMbEAiMolt4HubJXtu+1R/jX5MgKyKt88BOduUG2JCRUdn/XkB3/vHCrzDl50j3LyF3RHACKjLnw5CADVDCqSnVqkrnVcipR6S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTB6IjtD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTB6IjtD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3262C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754788793;
	bh=eKv7yjx+u+oInoPKSi7rVFGbrPBhU/9zP2GWapvhD78=;
	h=To:Subject:From:Date:From;
	b=QTB6IjtDDbMe3qOUXux19SbrsuOTPtFVEO4aTGNRGZ65K6z0sbJdmSAe2sEqdWSmU
	 jAu5Pl12L5nzufIV990qykwmGbR9fwlRO+m3jg2V43ThJ+VjoZDhsVFZB74jm8p3KP
	 uNqCGKSZat4rkd8n0iU5ZlisVcKdKHDNsMEqoaD0XVSirui4+zkpiVkCZSYGfhKkes
	 3M4+T68f7lcrNaFCxOBOTZIlVyzoDUjlzGadU824asED/dKUn+RRc5MBq2IQY4cOwY
	 NyriOC8Cudy2k5V1cLRHu/F1RDQq+JMVR1yunwuSbkC78R6l70ZPoUHnEMkAZ71aM7
	 2dTM+GlZ2l8ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913D7C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175478879357.5846.4719963978449408835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1641c86714f6eb62de465b2927e05046bba688d6cc4e387dadfdad5256ea3c0d
Date: Sun, 10 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754788793
