Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38415184527
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728461754; cv=none; b=F/eYaoib5KG47dWtHy/Vito+VNNFjrzBWmwqPRFVPwnStWhaD4MPI8Lu3rrdVXdyldFjAnw0r1MAvK2Xz4FdBvAvTVCA9vqIvDLmFZi8rXpCQTtFzE1Cj0Oc2B+OIFSEj1WrtpeBrcNwezWVhXBlopLZVKq/aE7cn8pv2d4+yZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728461754; c=relaxed/simple;
	bh=wNZm/w32vDxmR06u2NDqD6qZ/14Yo9gqnmCdvnGv1dI=;
	h=To:Subject:From:Message-Id:Date; b=qiJPRrH2K1oC6TUbAAht82uDiii5CNqzxYbNPT7/BK0Skx+xEWK2XAOf1vUK3bFv32/Qz4Oo0A3dsOXGkK5EUf7yj/42LndGx5AApo92DM8xil3tmnIpnOKWmQbwtpOLWtcFa6R2Z5VR2NcXTqsIDW0PKzSSyUC/125UCscnj+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZ3TeiEQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZ3TeiEQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4ABCC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728461753;
	bh=wNZm/w32vDxmR06u2NDqD6qZ/14Yo9gqnmCdvnGv1dI=;
	h=To:Subject:From:Date:From;
	b=iZ3TeiEQLyy8tlMzLkDq5YmItESly3PdKxsnLuSCM4lQlJNbdnQyYFgcnmtQvg1Oy
	 /5eNakS311fN1WUQPT84iykbop7Goy31tLH3t8D69i3h2Xhw8K7oHIwgTsrA5jQoyK
	 j5YfZo1kWuZDMy1XTiGW1qbPlwSm/RPiiscHusS2O2SkWmr+D0btl4RqdVBuFU9Nud
	 1ZNSZCP7WsGL6gIRLdB81injEwef+cRlPndYl2iu0X861j1j9ovAeb5DVDnhK/5R7S
	 GJ2D4FUaazKZ+vfsQ5zXlQplH69r7u5a1+qw3LZymuWDAWQfn4In3Na0U2PPkYyot/
	 VEiNeOcVIubdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A24DCCED62A
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172846175365.30025.15972594015933007249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f52346dbd5b1cdcbbde0e80eb262454c909793f908c00731410d6a6c51b5fff9
Date: Wed, 09 Oct 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728461753
