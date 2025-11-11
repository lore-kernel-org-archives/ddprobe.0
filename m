Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283A22E8B83
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762853394; cv=none; b=fVGEf1IMaOu61gV3B8p9GHWCTO4Jff2zLHBLP4h2PiKDC7TFx5OEuHukoyTE3yqzVZ0OWQ072t4+AgSDGuymaE90DcaN2/C1P/d8Un/m/JFQwLWRGCTne1BSfyfWXwpOHUUagiEpR0xhM62SbHi8AXoQ2TimjBP6cNL64VEEzgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762853394; c=relaxed/simple;
	bh=n482aXjKwO63d+Y5qvXswwPy0zH7pNBORTUvTp9SEJQ=;
	h=To:Subject:From:Message-Id:Date; b=PR6j3sfSBSsoHR72EIsakfJUGz2iKUHVeJnnZ9oAz0z7QRxXS8Zp0QIqCDs6pD1QNrAmdP2peju72JoQ9dItElBrIsSv/4QWPctqeo/82K7z5uzxQecBfO4egZbE4KdJW8uXaw/5bRPTQwK96H5Ch/XkS/H1afDnZn9xFMXoLL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q06QgpX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q06QgpX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26A1C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762853393;
	bh=n482aXjKwO63d+Y5qvXswwPy0zH7pNBORTUvTp9SEJQ=;
	h=To:Subject:From:Date:From;
	b=Q06QgpX9F3jtRpk5CAITUzLQSnFMG7g+6GlReEWn6/7DfK/9b9XfBZA/S8CLfXsef
	 EuXGsGdtTtGiH2yxPdb3iYaLtL19Xqk4Yhi2536BdUN9UACf74B5ODzDcswH6jZYEd
	 /GVc0m2hWDNWg6w2VArzc2SRz6IatOih5a9+YWAPFS3XZK2KAES3I4n6mxBvBe1kao
	 8VVr4BGHJ/Kx8mNgVNM9CjILjZ2lH6nKiEzGetv7WyyfxLVwCzCcTvPH0hEMea+D3B
	 V9PyMCjRvuExePxqt6G7e7Gt6FWuZWqWtY+pNd0rMxPO7NiY5IS0fJ/3glVF1KMF1u
	 EV0lTTv0OsYbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9535DCCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176285339358.21208.12461655094099894042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d62c0e717d433bff05a86fe1218fdf9cc119d0abf861539fe3f949303b375063
Date: Tue, 11 Nov 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762853393
