Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586A230CD80
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784899234; cv=none; b=kNH/OW7+esoZJ8t8VGbsz5HuulXyx0i6n0nt3bmaInsLozZeJJ8WQggLI0s0w3KDmBRY7aImUvMILhVdxwowRBWVKn2ooIg9zWn3/QmqIHAZRTcyfO0/UjltsNPtQMMMH1hgi9ValG2mZ3chaAm9D2NnUJEiiz5c2fAhRPVPY+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784899234; c=relaxed/simple;
	bh=cP2F9zK54Trh5Or6XxZu5e3DXrLx4uWMCLfBmXCTnLM=;
	h=To:Subject:From:Message-Id:Date; b=WEO+WZq+g/JuCkFFp+k5H3Iy2fR7RzNH20lUjJy+/D5OAR0+eF2/N9YER4FdtcOoYaTBygNu/QolfKSbFcmW4AjIDZMFoZjxXTbliPbm11bbn6GggPOUBhKnUtxa1SGwpLmDcS40xWNf6cTnnUenW1kMo0zESQlk25SDNxNx4QU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MAKPKGQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MAKPKGQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4CEC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784899233;
	bh=cP2F9zK54Trh5Or6XxZu5e3DXrLx4uWMCLfBmXCTnLM=;
	h=To:Subject:From:Date:From;
	b=MAKPKGQZqweSDVG+dGf9eLLXlobJIyKh3yNkTe0DLWCVz2Y94xPtZEjasmNQrouDS
	 /vDgmCpywxsBW1+hY/zZxCBEBWD4wBBrcD0A4brDrl0EjBGnV4Zpy0r4RmFlKOjY0i
	 xDp/SXk5YAzVt84viWrzyJzNUapTppqS5kFAgyL5D4+6vRiITNu5VnBc3mH8Pew75R
	 kXVwQbqaQ58cSNVZjaGVAJErGdjOZm1mu4Zp0K47Dj/2jrb+qlgId2sPl2kyIDIFJH
	 VC6e/JEcjOcaxUGih4R7galY9XeBvXPACtYhKrq0LIGLlY3erNvNbEeUsl9HC/SlGx
	 JOV/Ke7Hs/JlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81F6C531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178489923368.5891.12425682022628938536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 181104db1f226a4dc563177e97d907db6755b8162c8855d5c975b9298341433f
Date: Fri, 24 Jul 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784899233
