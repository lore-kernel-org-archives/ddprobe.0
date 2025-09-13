Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C27157A6B
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757749794; cv=none; b=aCAZhpFfC5pHEtvMop9BniPKjKRgvXoPCepAq1P1Gl+wGbR+9wNd2xDj9J++FkIfzbvLOZQ2lA3RRxik00KwEczMO31+843qvCrwI2UteKDCdOgfJebrMH8XvYbP+SFKgyWa02igYgc91zGRsJYFlOBx1JWE162nz9GHcqGCf6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757749794; c=relaxed/simple;
	bh=+4MttP+TRvcKTQV6vRvXW93EYZJajaHfkLTn+oBFzjM=;
	h=To:Subject:From:Message-Id:Date; b=X+yf2IFIx2iJa5z9E52bYC/5aTj2lo8Rb478dznBUBPcPJMS7b1RsAve0T4Fwy7pKvcIWN678TEqEs9eRrFqbS4ogpx5DGssUAaKDhRMaNnVObA6yOow7d2QDGKz4DUuoLI/AXubpkQQ9gGuTqNGp5xJH1OUqvBjp5MEhBMtaUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FnEXf7hh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FnEXf7hh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C3CCC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757749793;
	bh=+4MttP+TRvcKTQV6vRvXW93EYZJajaHfkLTn+oBFzjM=;
	h=To:Subject:From:Date:From;
	b=FnEXf7hhqPv5/mazCAE4loXWYc+qVRWAlWE/1VDwGNuGnwr1gIoVJyurw/vOAUXks
	 sBM8WLB9JIBVedqxQKUbFQdIUjwnc6uZgR40Zy88Bz/PQ/0kU1XZ+FqJIcpvMAcxWP
	 icqNJnB0k2kD6gY8Hv2QRzGEaUshtX3o+cFEVHApfivFZUWEKnG0lKCUdVWpJ1uy2s
	 WUauz3Y/HYvg0zNcR0/5I8/X4eOb+qgSjJzHRVRPwBjTZgYYGVUOH9eDn5CyAGbq5s
	 T4wk9fLXcBbVj3GrDMs5aVXn590v+ir1LfE/o5VZIEAhAMp0esCiQmLQy8FFAZOb1V
	 /5L2pKdCI0WQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFF4CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175774979357.18613.13163833997066119400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93ac7c371cdbe3d812ba36113eb7a88764aca114fb5658b01dab430df6c0b7f5
Date: Sat, 13 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757749793
