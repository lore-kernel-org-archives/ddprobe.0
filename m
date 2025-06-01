Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6E37464
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748737194; cv=none; b=pmiHL8410BgT4Go1kNBuC1LqJBHZVGN3aEBwpAnImgf3W7xCs48Nawk114gS1yT9Xd7TQmW1UE2Ha8EUmzuDt7Rxnl56m68zcCspOvBqbi/UgfnFu1BxU5HTtKC0wcIkHK6inQ2b1HOWfDHE4i9BvbQ3b/lRXx6yVP/QRbbOx/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748737194; c=relaxed/simple;
	bh=AVFEhPE2lod8la6n8+NXESwFKFpQ43ZnYgX5i41s1Mo=;
	h=To:Subject:From:Message-Id:Date; b=hftZ231b9/8RpK58QYKGNS+NNoNetSRGmv7OD2StdR6SkPKHSWjfETYd4F8GsXrVagGBSQpNKbzQ4h0tdN0Bdy1qN0xZT5ugtfQjldd0Pjtk/EbcktskNGNuyY8EUT7CejcLQ7c6bGy0CANirCxgnz0/TjRUwmED9eIBkBy5G4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7hq9IVH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7hq9IVH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1600C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748737193;
	bh=AVFEhPE2lod8la6n8+NXESwFKFpQ43ZnYgX5i41s1Mo=;
	h=To:Subject:From:Date:From;
	b=n7hq9IVHxoOLax1Z3gcvDUBinxMpCK8zwgO7JbVuaJMSlmmNLNS1g6K7cT5xgkY47
	 DEDR42K/XUZ0lzTpp1Vx6s9Fip0y/ZFRMoKUn6HiyJEtoTI1+QqAcmdwTs6JvVUU68
	 eQqI1cJCRZjxCLNCPP2fwcu3ahBEBUcDmCAOW/rTdv7gZiqYQtlNrtkn4QnvfUgJ/f
	 uNJPeHnkPynOESGSEt1uSoqe3l64W9MumtXTT1WHK/45SwTa2QbBlv6ZcXwJMW+pEw
	 UyUOOMrDkzw4X7aB1X3esVbVeQDSIwMX4S7P/ItXCAnUZP/+sy2BxlZu+JXkRLjvz7
	 ej7rBm1u05J/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA53C5AE59
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174873719357.982.8300662385752665041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0462361869db5af162d31b997ccf27393cc77b0daa5d18ddd76b441bb5e77c10
Date: Sun, 01 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748737193
