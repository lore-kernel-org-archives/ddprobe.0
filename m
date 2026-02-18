Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ABDD1A23AC
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771428294; cv=none; b=gqIGe0iEPYd9IpNEhvwMtGlXziREa2TnMS2LQrX2CXOODduEqxetKh7C/WJ2RowcIA3rOhVO/rPb4lbGy9n1iWi/5FwPsx7l8nt6j2+ycMeCrt8g/R0yqfd+U9T9G8TezuUH8OKwu8CXzLiTAcPRGmHlnfAwaEV/XV4Bp4Bh6BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771428294; c=relaxed/simple;
	bh=C55HvixfTxbg+w8X8AZavy9ExfpSthJ1HFL8pi0lQxY=;
	h=To:Subject:From:Message-Id:Date; b=N10Sr6SY7xK6MLyTZmJSoerNl6s0TVvuOX4CVWvo7Qhl2ku5V9VHN2iLlYTsCQIfpLNAk9dcX7g82+vdLv8VAeytH7d+0eHRyQCk4/rVk99BwQRKpGyGqOpk2CrgTuwlQXIsh4JXPuVMA7mTlj5pA+2EYpQfiMsuiEkJwuVkM70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MyQ0IxHO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MyQ0IxHO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92E0C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771428293;
	bh=C55HvixfTxbg+w8X8AZavy9ExfpSthJ1HFL8pi0lQxY=;
	h=To:Subject:From:Date:From;
	b=MyQ0IxHOHUNKELwp9BjZrRzKX+w8avqlBGK7vqW4erasxZjl1zl6+EoV5gK2AeNNp
	 TGhu5gwjpd9187a0GwYsy0trbpQRPTHqtIvBHPYw89vc/bcoi7mYKw0YXqOeJukUDP
	 cdBiNuqJNGK7lVVbIIgX9uKjNEoW1dTfAFhnsy30CKeb29QWu3RTZpWJZQa7MxGCcM
	 CinRa3XuvwFoTMU42emFShSF/ELJhYmkuvF00V+LlSpD0rdWbl+mEQsFwmi2P83uAw
	 6vF0SwbYAhqN7ZKJ6mzM5bobSq18XRPVgJ3Eit0DXca+6S0s7BEpLV7fsbzYsWrhCd
	 lRtVfNlTeoOKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F31E9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177142829359.2628.13382495285581008613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9c0521c046304dfaa62996fed204f8b52e0bb73db936ecce235c36b9072a7ce
Date: Wed, 18 Feb 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771428293
