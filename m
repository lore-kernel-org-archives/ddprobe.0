Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08CFD3E9295
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778081854; cv=none; b=Y8uuQG7POU5jU2uAI6knehDM1fK9aSFELWJZstfChTXFMKjK/ZC0/baUjOUA1kU6pmw/a5/wduqQQeqvsML9NmdeK6C4B2yBp3iiaEGikOwmnPTVy1srNDReA+POdEwwtRYdsW+g3bGxLlKfpeHSgvFfHC7Jd+LUU5Y6/zRoKH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778081854; c=relaxed/simple;
	bh=zmdMhVY/qpwi8rNdo0UbP9tsI28VMCBWB5zkb9UimCU=;
	h=To:Subject:From:Message-Id:Date; b=XCFauV7QtGSzfgdMJEbjXPwgfVSN0gAA9NGewpzWrF8Nd3waYvpNXF35x2CWmuC/9mLyOOVxrzPxnbeTIxw9sVNK1Un28up5eKSwaGel8YcyARYTwX7NDPcc3pgxALp7HD7isEiliuOCbfF754JtYE4TF1syyPNBFEZaYs0SG/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHcsIjzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHcsIjzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3A4C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778081853;
	bh=zmdMhVY/qpwi8rNdo0UbP9tsI28VMCBWB5zkb9UimCU=;
	h=To:Subject:From:Date:From;
	b=fHcsIjzZqqN/8WI81Ro/Tx5zkZzlGk1osR4nEc0Qln69bZpjfSGRM+amXRt1pbCpl
	 r/8sx/03cDAWwnrbqCwCqlaKgaWN5igOxqFNVpvz+vc+pxDLUWqGVJWwvlQX18U+DJ
	 0UkZ+ffoZ1W2IkLVbeQ4zx+bK5y3CQTEE4U2QnXhkHNRhG72dRUC5IY6zvr39OYxha
	 G4z8VNHINmzkrmLbdo77+kdZcWhFoE2ESohqKv3OD0SmIRp9xhWc5fcVrA1TX6+Zpd
	 7yF56Pzq4Ktc3OA4YgmveqbcfUoHXWHHpRrdKkuPY8j1XxdAWRt9pDNoLYQwcfiqng
	 nxklU+mm6o+SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB44DCD343B
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177808185369.14129.3666260529502951806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 338a86cbe547f4e4baff0df29df1666bfbc0b064990b97b46f9f254ab19bcd4b
Date: Wed, 06 May 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778081853
