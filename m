Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C22A455615
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790841034; cv=none; b=m7A0Ozgx/sq3v7oLoBqxwFp138dKzUfDAC4AfJccOa9SF8QmYsQk6HsqjYyHRqdJYGQtuem6zgJvK17+XaGW89tVt4SV4wOekPy6G4WxBepqH0AMBhzwT0nAbKAcrs6zCnasx9W8DSKv4ocxzt3b49ESFjBR8O+P0WDPCzVNOE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790841034; c=relaxed/simple;
	bh=NnwEVmZ2fr170vLeoKzrC6JN//Neb6IrQ/UrZb7xRys=;
	h=To:Subject:From:Message-Id:Date; b=MJ3EQ6LujVspOoCzPkHnA7Ijo0boseZ2T47tq5EQUdlPzUZrBJeNTicnOUSMRAXXEek47OqxTct0/kYpOBKUXkSle4InA7OfqWHHti8VB0a2ixXpiAwT5ipDy9AGk8TxBG0BGxNeuqae9G6h+/zdDR+jm1j/68P4tJGunzwj3z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eg3laFz3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eg3laFz3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAF1C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790841033;
	bh=NnwEVmZ2fr170vLeoKzrC6JN//Neb6IrQ/UrZb7xRys=;
	h=To:Subject:From:Date:From;
	b=eg3laFz3Q8cA7yloE2F43puX+1l/KuEd8z75JB1Ft5y7ABGLYGJwL/PqbnN3C+hj/
	 69MMGuC9fMn2qRmRFjMM2jkcjHIqBwYRFEBM1tXo++rFoxYIM+fc4QHTsCjMwHgvJ/
	 iwmuOM9ZPgxGzYjl7kUsKHPqacFq3XQcS6hgTaypWe4eLYWrCDRaAr9R6ODCbytDL+
	 p1fr77Tlb0D4MUn+sqdEELg3JL1JfZdTsZNQ2yzqWxI32f1XJem2H7GsF5aV9QxLUl
	 bUS1Ta6x7+et4CyDOCZFkHGqLKl138/TgdjytmbEnecTyFfst+Sk6bh0Rl3BKWMgrP
	 QKpT3/GP7V11g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3200CA5FC5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179084103372.5420.11409163514215620672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5586874d57c30487cdf8edd1a81b33bfabcd2e778d3e5e69ab6907231bf9161
Date: Thu, 01 Oct 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790841033
