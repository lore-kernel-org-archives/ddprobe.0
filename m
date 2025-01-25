Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A33F146A7A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737780954; cv=none; b=Yf2ca9v6QPez18aRpqe30OFKHWgnEaujZjAu1yAvd+aFnPPsYzv1F9YR3fvu/QbluLp4+1BfEQn/t2wTk8wy2ciflgey514aUHXjE2a2vHG1gxwEAYQn9TfN1SVW+RvP4WBWPzQ+oEa6avePmwHTu3zkjgD2s6j3wt0jf4cFIqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737780954; c=relaxed/simple;
	bh=BJPaYjtsTAtxkNLm8LHWCvcFOBhrDiMpkL99XeJEWEw=;
	h=To:Subject:From:Message-Id:Date; b=f1e/YkR2KVnsMEAQrjjUq5aZeWvGfs0WQNV5Ulb8N2UwbuqkEi/PSUz91PDyvPnydepOEvo3EiL3CX0B70VVqUA3+Kduma+E/wkg85596Zzr9RJ2LTRySlytx3E+p4CmwRg5fouSswAQtC+Vyw0YLTUG2iPKHEngfELXUtb0LrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2IDAeTW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2IDAeTW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1917C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737780953;
	bh=BJPaYjtsTAtxkNLm8LHWCvcFOBhrDiMpkL99XeJEWEw=;
	h=To:Subject:From:Date:From;
	b=j2IDAeTWdfBvig3g12Bg3p0qmSL5N3WjtyToHpr2El7jKI2kpX8ms/xv6L1Gm7kBt
	 l61LiZ50NfZIEVVltIcp0O8YHuAfqGVDXIdxwXnE7n/OX/jSwV59KtIUxGLPeg4/8o
	 N49loUbQL15CatIn7HPpgR51Pw+3rkEVeUvUBRJ1igQNbWJgIOQ/Fdviefgx1fP0lp
	 CwrBns/CquGt7W6NXCvyXYdbCKH56cYhfeRFBlNc+wK3SX7ASxpNoJfu1kLITKUpb/
	 JW7IpLQN9gfqlMPG1e7od3jy6w5+1A0KI0QLsEv+uiUrhwPEovJKSYC65kh1TG0tD5
	 SOxIvxZZ1YHvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAC7C02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173778095358.19324.1055703919570040449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc17753d298c72702658c27f833984139c57f0497c7f8d5a74497fd1c2eeeeb0
Date: Sat, 25 Jan 2025 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737780953
