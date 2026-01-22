Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D7C2D63F6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769043233; cv=none; b=LNAs5ivYJgpb+VJq9MKTzvWz25nxtoqeaq9TJMefpFjBayWWdpL2RUCn7NbNYzRbatRXip/gGChX5KHQmxAPyKbIi+60rbruQGs8Yp308yV7x69cGWagGVZNW4/QEzXIG4Dwa+vL3IuYEKbni5WoIoe2qqZJgSMBt5Mu808Jfks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769043233; c=relaxed/simple;
	bh=bRhdmFYcsVXsB6LMa5WJDhJ8FDJGnUMsCDR9LO1SWXM=;
	h=To:Subject:From:Message-Id:Date; b=VhjwJ0aFiGw1b5GNPhB8lOEiwYV8nM/kRLbdXfe61MCPP8N2FaXWVYnIw9b5JF1ukLyWRAaxtt3vSx8IJnAHRr95nluSiR2m3Dz+uWX/pI0fltyQbXxdrkL1VWUrNCUqAr3Awn9Q2weMzT8xWOgnMLwJ4cU3aCal5tygmGmrtUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pnI6w3Bv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pnI6w3Bv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75BDC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769043233;
	bh=bRhdmFYcsVXsB6LMa5WJDhJ8FDJGnUMsCDR9LO1SWXM=;
	h=To:Subject:From:Date:From;
	b=pnI6w3Bv+KfzqQ0mPfqWXBLUK5m7sqWNCy1x3ooTjpfTMRqlz0ChgUeSonuRLAZl0
	 3B/uO5MYTeTRsllPdx9c6hoXOd1AFPlKQCxPQJSYVUoITO+MJ9AVITfipo/+VNtXlg
	 reLurugl1f0Y9awYpc/iszEpppE8iO0Pdv/0M0H1CtsLjX4Oo08Y30LmlgzBRcnqa+
	 MHYJb0iRg0yXxff8l7Q9LsZr4AngbOs1j0H+ocD5bSGAjtINhfodxdPeBLGQMgeIIv
	 2utOgacIYl42RKySaa2Dpe1fk5cKsnLglS5IVGPE1nvUr3lWteCY9gK0JJ6CVu50Zi
	 U3+T+Ob/NRx6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9237EC44508
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176904323357.11578.6766565906184309535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dff69f537358565dd99a1de28d8763a702d1df7bdeee2e1d4a5c7326b9a21534
Date: Thu, 22 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769043233
