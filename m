Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF4D2857F0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758322194; cv=none; b=YPNbxvI4EG8EzwL3tjpjOtkVUmcb7zA/mFo//4n0YJGwDxOX5aiwT1kdaoso85rnqEifkVGNEFtPCd0VGcidCh4TwCH2CFcjEDdMV+ythIjdvztfqI7VafB4/PkW0VrfGqiuMyQV58Mna3zT/xsXBxoLznYpYn8OzhKxYDzBP8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758322194; c=relaxed/simple;
	bh=9S3ay6xef9aZiCvLZJ0wOQVF25H6meb+MdXtCPPOtAA=;
	h=To:Subject:From:Message-Id:Date; b=lPJEdtIxbpWnL7OxeRszTlnDSVYpHnawryRuZJS5y5n71ELzAuNJKzlbX/wD2SHqhQM6RRh2j2YfaeMoN3DEUz4SxZKJPCNASUSc50JC7+g/Hr4aVnwRFIBJUKz1LGjvmBTssY6dYMRbuMUbBfZGFtZl/VnVPlDAyxY3WJvpFzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=karcuUvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="karcuUvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EBDC4CEF9
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758322193;
	bh=9S3ay6xef9aZiCvLZJ0wOQVF25H6meb+MdXtCPPOtAA=;
	h=To:Subject:From:Date:From;
	b=karcuUvl8uTE6D9PQNGxrbpMKX0DIbyP2c2ffUfD3P5xKnG5PxrZgT+iPTDnvYaWH
	 gB6gI6NT7lNXG0Ar64Q9CIfqqgQqtila980pG445IlAj+weW3U+ndBJalQ/ZTjf7Hb
	 rmaaTN9yBb7C0HLdu7AXG4icVkvF16dWZ/m4XCupp3CiFl7BNFWJvxRiQVJFApLIGR
	 E7YgMgIttsCRfVVNrm2oFnmDuIOEylWzcxp9v7U4TlVThYu1eQEszD6RMt9TAaTcea
	 FzAHlfR0nNG+KfXcQ9TmrP5xBkJ9hlrsgYhM5F4K5hQOlg48eOD3ws3Etbb/EDukbc
	 hjEPLNip8Z1Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2CDCAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175832219357.25590.5732562858506025387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b71440d77b6f952e494d0a566e65612492a5c3c6a3d40556f124ee4608fc2af
Date: Fri, 19 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758322193
