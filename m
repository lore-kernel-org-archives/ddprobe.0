Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA7351DF27D
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 19:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763408515; cv=none; b=B+bsaeveowQlYI5x8XSSRwiXDa1FtDSoQ62cSR/oNv1SSdopg+Msfymczy6vrlKdsq93xjV2Fy0TZlTg8CtdbyCjDwL7LuAbhEKqRMAAiFsxLu73F2udztZV7NDcpz5+pJQ0/dhwBiQU22wgNA2I9Z89rTjZNeds+/eYUmwUk3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763408515; c=relaxed/simple;
	bh=oUSDmyjYISBl5dgoLZxYcFUULqTixUZxGrZVjAgKEd4=;
	h=To:Subject:From:Message-Id:Date; b=D8bHnQMFA6NO0qbrxEy4hh1hYSsN1LthzsskTThLmB+eoDIh07Nu08OuclJLWbQ8cYQcbpRddoWBULQRNZSW8cmVd9dpibOkSc1j3QC49TZ8FeP21/1v5wTEh/pP60bEAKWpYJlfAB5CCuCWMFOEJp2C2nxC6iAzDifqIxrLhQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYJuItlM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYJuItlM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED5E1C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 19:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763408514;
	bh=oUSDmyjYISBl5dgoLZxYcFUULqTixUZxGrZVjAgKEd4=;
	h=To:Subject:From:Date:From;
	b=CYJuItlMCdse0PnSOc2yOFJ3PGu1so9QY5zBoMJA1ozGi4sCaJWqXFJZMUytFpsrY
	 3JPAOtrb5Yj9LGaFi64qw4gt3EhQKoSh8neSqqXR0Gj/BIFhvuXd9U6tBWEqH4c8Eb
	 5vvevRVIoriIfW/ahgkkbXD70oNklZciRzyHU/UbEAZrwVU2Z6fhtuPsLs3g4EDOyq
	 6eLbRthqk70AtpiUvlXhDwHYFNoL8m43pZQhdiPWmCl8Z8ZhUsMRjtVnjLJsyIHQqn
	 Eym3M0PIZGpwdNkFiGYRmXaDfD3QfZ9SeHCKqPhVrZ2ZVwsfx527/XXQ5vvFwzLYFP
	 eP2Ds9wUa4cvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91073CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 19:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176340851358.7658.11496019137964327400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29726fc8cfa30bb93945706e68249d70ef67e7d32cdd9805d36c8471ba4d400f
Date: Mon, 17 Nov 2025 19:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763408513
