Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9F212A144
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 10:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714471943; cv=none; b=mFVEUJKvZStloW0VpBLCyihnc3SeBrprzdAZyTLU+X4xe5KnAVV0OLT0bazN6a2ONIvU1YtQMxVU16s/ZkJXU5RXWFJe6LLCKA3paeWp8wWYPFatbCODFKwjH/xHSIbck5bwoIYKxufSJBVy5WfliOX9Lm/peQlPbyRN5TM5gIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714471943; c=relaxed/simple;
	bh=n4pVDfUSdwcau/U8N5aBX8H1EUlybBTBoNOwEutlNKw=;
	h=To:Subject:From:Message-Id:Date; b=IA1xomzqZU6y07TAuQcW/Q1S0hwyZeKf+i3Afz2R+SNYpI9m+CgGBvPmL6GF1K3ImDhNx97NXOrWviYvCIzoEt2tMZBtyVycOR+4h1r++ykNfTHQFwKen0oMS/T5/2ElBsZnGm9RLigR8+Pb7kpLUxT1MiJ0vFIjyVP3RSsogp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9anpsDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9anpsDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB66C4AF1A
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 10:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714471942;
	bh=n4pVDfUSdwcau/U8N5aBX8H1EUlybBTBoNOwEutlNKw=;
	h=To:Subject:From:Date:From;
	b=K9anpsDUd+WA5MfT7HxFXFAbyPHMhWwhszHx8qvtCD4kUEsTVG8ZgzKQKHhE2uLI6
	 8CNk4wWGCviFSdf30dSoRq6K4WjgMksIkbEOqSml92u9KF7Rld/X+F1xt7rcGPW53r
	 MYpLbKG4Xoy73z+bzswonPvcQAl//8Iqw//c7kAaJzJ3SYIpDGlJ7MkHxqEcg5Gs3D
	 8VtXRFWWYKaZ9tCajfeNz6z0UvTJeTDq3qVXHNSeQVEg082GIeBULJ83JugPMvJaL1
	 xYDXZUhIiWLnp5JZraekNbGkVQMOhbkOqV3TceYwr/BrWZGalgEqDdQf+ed7WcnYKp
	 ZIDrrQiW3upTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC6F7C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 10:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171447194276.9493.17019205900025896930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2676e609f770abd6e7e23c714966522f058397cf5c085b3f4dd6f420868065c1
Date: Tue, 30 Apr 2024 10:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714471942
