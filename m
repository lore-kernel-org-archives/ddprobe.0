Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AA44B0483
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786758034; cv=none; b=muUfNBKULLIy9IV85UsNSxqAShwll8PaRgefvS9mH7M+M0sIFqS/X8oM+/glEUX3FsL8VJLGUQ1Gq1e4eg5ZZd6v2BWYscjWmcAq9NH48Wm4WRTDWPkq2x8r2phMnB+jdZ71m8G4yN6JXDYQ9inmlXZ2IkiycJIEicL6aJZj4RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786758034; c=relaxed/simple;
	bh=P2Lrqf4gBhIvn2sXtZCIC3F15WHXR7d6WVQcZ0FHSW8=;
	h=To:Subject:From:Message-Id:Date; b=iRNj0/iCoDVyUCH5yOhvV4eUC7VC0wXnEM01FYNFUnlyBrXXYAg2MwAYhxapmfaqHRifNQC8ejbATLBr8oA/nWE45iGh1SoBtsBs72QG9RjLn+KX1FNxHg9ydszUZ/7GlkGckpKP2ASDJJwKILq+s4f2t+3Q/4Qc8r6BrKu3JtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbY8tF3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbY8tF3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4504C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786758033;
	bh=P2Lrqf4gBhIvn2sXtZCIC3F15WHXR7d6WVQcZ0FHSW8=;
	h=To:Subject:From:Date:From;
	b=XbY8tF3/pTJoDXQNp7m2yKctKRrC73D9eOXQGXE/e9EC6lwj1DVi6dumBjbVIn2Ej
	 bJ6TP3C1XLbs+KFnyYJQFaGYXfJxgszq+FPUvjh05aoTxeaj3EslbK0neSQAq2Q3OX
	 MmqumA2bsFtmXqNZkIsdtM9rc3Ghpq8aMmoFghoc/DWiOohmf6nFX4x4pgk6Q/Ft4F
	 ESEZU/Nvg+xHQh2DWOT9iI2k2QjOeBWoVlqecpjfLozRlT2eoHsLkj3+bFNSJ0fXPa
	 vakU0NisGAc89lh2JcI27vkZ4UESP+je2VBINxk/ySIVaoT3soX9ZonTWm9+u71zvV
	 Yy4R6kBxjpWoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0864C5B572
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178675803368.19024.4332955163496661462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae7f8446f5e23e10f104a42ba369c314fb67a5eb4db18fbc448e8f8ebc6a076
Date: Sat, 15 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786758033
