Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C0B7462
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749941994; cv=none; b=r+KGQ8w/b0kqnz2QzO//0FtVGNgwbGYuj/SywDUpi1eVK7Srp57x1YEjzwqWfWsEuUP03BZ4LYbzOt9L198JyuF9Za8xGGsQmYJSfWEEndeX2a26mjjWf14HuBOlor/fcNFsidNyvuVHba9BDZwwvoTRq5G/5rij9mHYFYx24SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749941994; c=relaxed/simple;
	bh=l4lF90/OPdsV2Nn43bGPVtHtXCGkLHunMbBbRzGqyL4=;
	h=To:Subject:From:Message-Id:Date; b=pBlUnvaNk0KVP5Wi2lXcdFWjPIHwkFmYHmEfOf/HLEg2TQEbVczPGtluWqJ/GwcGKh3/shId4A/NcyDqx5oKCEH/qxHM1S0xXUutxq6JJnaiMbEOoDQLsDlATZvb0Bo2XJFM4haCWyvWnV6jh+MoGCu4zGEFr5p32aXcnTm58sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDmNwxEy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDmNwxEy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A930BC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749941993;
	bh=l4lF90/OPdsV2Nn43bGPVtHtXCGkLHunMbBbRzGqyL4=;
	h=To:Subject:From:Date:From;
	b=RDmNwxEy3a/pjjdBWfRVVeDVZTbQH3Upb2NUAuX24SJKqGBvvEFUhMw1MNLvz8mcY
	 bOiQ4OqU+Yhwy+pjvXIpzmBZg6Yh0f6BNDCTDv2rQ3S6LiOhBLm8xNYz4djRAXQChg
	 6gL6sPx+VBHRB1Nh8oIHpllIZmavCP3MhJixpG1VDZrP43PUu1k3vE3euPmYJFo/i5
	 R0vE/oGJeaR+SMcsXSmu0ONhQ3hE3wcHRqZ1gFVU+kYh7tOeGIPg5vppV25v43E43w
	 qIw6mPGUNv99o6DkBnNXSvbFoaXE5zJgoJrSjlDobL2d3Ww/63kslRZalec1Ik2vwI
	 F0Pua28eWo2ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93831C7114A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174994199358.4339.13987296000182796062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dec26c5ebbccb9c06d596500db03e95d08245f6f39bf7ed44aa649c765727c4
Date: Sat, 14 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749941993
