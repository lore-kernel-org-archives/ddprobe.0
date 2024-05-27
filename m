Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5430116C6A2
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 13:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716816863; cv=none; b=nkzSZ1SWXdLRKNCAZHBZuY0bibAXcji8v0p1httUmmMHQUJl/UjS24DdWwESKcq3qowuJgOQsUgR2C+37/hs/NMxiQSc9OvNo9rUcz3hXk6RDFXnSpdBQrGLrcoRHQ7JcZWeYouMdX11yC4aii6/gqQK1iAKzOC3yDVzg8d+9ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716816863; c=relaxed/simple;
	bh=Vv5zdWR9lohgUMNudp6IiQZyID3oq2DcqH5+EJ+KYi8=;
	h=To:Subject:From:Message-Id:Date; b=m04MMl0NqenA5i6c8ICRU3URVxH+cUXqtHXc0pz9LwBFrFwcNqLgmegGkt3gDnoOpnqWxodWLu+BCfbhqakRsWue8crc9g7j9AONzvKc1IF8Tz72Jlg+VZ1TK7i2klDeYaLzuvUG7Pi5cdA2n1uJw7qXw0/QjNRKB4d4fLDxteg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUwc+t+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUwc+t+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0932C4AF09
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 13:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716816862;
	bh=Vv5zdWR9lohgUMNudp6IiQZyID3oq2DcqH5+EJ+KYi8=;
	h=To:Subject:From:Date:From;
	b=RUwc+t+ZbOryKQOpDOLx/jZRyH86RGZiuwTnnWLH/3fBUcZSye5q7PWtHZkx9/ftm
	 wO2m+fencwufGX1rHHg7eRS/Q4W71RPPuf0r2+N4qM4wGDKadvCozss47RhmVB0Ath
	 m2vudHSvjU3JmnXuQwLdbjOizRLgv5uK0sLG0cd5ySwYriPsbxqFS7BJSNMVQ+e4ZM
	 BKlUIXPYXnLq5Yryqd2u00ApWFTltw+FWwgbTlY5ZGg+BkhjlrhfjmDg935c1FnKYu
	 sqB2Dy0SgMiD+LkamDOVZkrRE1nEQ3S7fDrOz25BQnMAOiVqMS2Xu51pnR15Brw2ua
	 WNFzeHUkQ/RNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD323C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 13:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171681686276.4021.6070343985976363785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55779db54cd1a49e0c246c8b2e526afcd6e4f62d951302c61b40f5677fe99d4a
Date: Mon, 27 May 2024 13:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716816862
