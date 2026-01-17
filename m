Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F284615B971
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768670034; cv=none; b=q+sIyzadezTepFoi0kmXxOwkGVyUReSWdGe8+IvEe/Fl42hjeuJBklczlcX3vgAlUA+qjB98D7U3wu3+n9nbUGZcTLYp5HGcG5HBdp/Exs2J6SNtGtVEG2ofPlUvlFg+arwwYWNthW9RMSeUUmcoVCFsl+vOC0AGsFB3l0d3vIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768670034; c=relaxed/simple;
	bh=7tTJIICDiMGYMzaySmRyIWLgRDwrtpIgb9rbVpSGXsI=;
	h=To:Subject:From:Message-Id:Date; b=UXUhGbGXMt5nkTMFy+NLZcnOTqqhzFRIt44GPm8l89WheCXxrMr6C5N0vhxY+WP2sRGTRdAfPEWxpHbgv1I5TVNT7fn4IqDbJrWSWMhb1yPTmMWzvI/GZpJiwF/9KuBWD/mkjnwl/pMNnQAHvn7AL4wlEJntiHDhfgLVJIByKKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAotMQBx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAotMQBx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F3EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768670033;
	bh=7tTJIICDiMGYMzaySmRyIWLgRDwrtpIgb9rbVpSGXsI=;
	h=To:Subject:From:Date:From;
	b=OAotMQBxEP7QTC/x9P2OpyNjHM6238+EVniEBH6H/Hb7XLX2AAbazpAOBH7U2eTo0
	 t2d8sVHQ7ZBMJYQc10DJG8AcG/l7M4kEU4Nx5DpTWZeJ2ag621ApQrRdLdZYpI72GV
	 FNttiSyKb+mHS4wOeK1i7DFe2JimyFH/jxXbWcV4w107frEUJJ1Ht3R5lCkBcBPNC7
	 Xjeg07ZwiuI/UOurJixjtgq2vy/4CPXEOtMgWOLaqHNxhxyymMq0PzLaG4WKS7/BJS
	 gNjZi63WywC7fp3DAMZR44R7KZUXiRLQRfLo7r1uI4oIxXUJmxjwvBEP9dk5rI8uT8
	 ackC+2bMPENwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDD5C9832F
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176867003358.12150.4882425524333498623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 260d4cbcc1ede021f8045f528b2bc9479724e064d6b506c5f5bf5929bc3e8cda
Date: Sat, 17 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768670033
