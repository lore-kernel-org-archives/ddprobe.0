Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D781E1DEC
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753465794; cv=none; b=mWXAUBR2zjMxNnOvzuyi35Upz2fUvh6Y2PZSwXeFdYTAfM8q0MGKwwxWVy81gLA1DSsiwPksIx++uJQ98IsvUb0JL/D19HPZrokeColLaqZ6L2nhgUXPx/tcrIgId7L16E4nykOoYfxgaar/bnZDtZU/ioXbmC9RM1Z3Z7HUPGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753465794; c=relaxed/simple;
	bh=uqqq55RKmA5/dTxvWWg3FIEVyKH7vvqYN3FBT4L40mI=;
	h=To:Subject:From:Message-Id:Date; b=q5D4fZ3jRXAvhSnOt5WbQvCxS6sICk0Xqu+HMljVHTjg18aPE69by0XOoIJ25GWkwRLHWZVrTXfASdO8HaX29lNJSlviHRKmXMNafL/HEr2/Ewh2PKqTGscUpZ3lH1CRYKj5kWMH/QdadCqOZzbv7X+BblNfE3Vu4ZfRdeqoxt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubMgkU0O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubMgkU0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36F3C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753465793;
	bh=uqqq55RKmA5/dTxvWWg3FIEVyKH7vvqYN3FBT4L40mI=;
	h=To:Subject:From:Date:From;
	b=ubMgkU0Oybpc1h6B9bdoC77oXrka+rn6EAUv4RMSQW1IzI0vo4q+kw8jeERCVWRru
	 a2pF1/AqYJuJwcHQbj4Px+X3NX7Fx4B/woUW1cKIDnoJ4JZrmbYeQ4PAsUy8CTGDfm
	 v6JQZT9JkVnmQAHOL/V5Cvuj9WDn0TEahkFlcYpTZdxXzzMrcJqm+JBvulompV05c2
	 DCbpg+Y9U5tyidpMDm9NjLilSQTp/RUAJ9zOVG2HDTF8f6Xw6rBEfvESyuCYQ4FXGK
	 jb4NCnLqs1gviRkqxt/FzFMQN5lPjeGRwygyAlShXLkWhtJKDd/+cg0oZCcwGaOxA6
	 +TlicPzZybVtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F41EC87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175346579357.10180.5622223018440121288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ec8aaa577374e69d6c2cc5e77a13330021a29cabd08717de7cda9a0b571c165
Date: Fri, 25 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753465793
