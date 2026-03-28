Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08847322B72
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774722294; cv=none; b=FVrqRNQ6a+LTtkRBCnPXE5LJgeqkv2lPY6zlWRJV/KSWxq+nfO/Ttkv2o/jwTdTmAwkd6ZWgw4TGf6xgYci1nm5VTMGIfcuf0guE/UtB/FZJBVHMdWq+qofCLB4M3MV3TUG6M1e4F/8h+mR8d2k7mB/p66di4+zky4VZ3aKniq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774722294; c=relaxed/simple;
	bh=JA+DG+sFTDrvZWDNvQMQ4TOZKyScghWt+ssflDPWYcI=;
	h=To:Subject:From:Message-Id:Date; b=NtnPLupPl4zYzIqjPnaYPO9NcNC1O5Ve9MHR8xmC8dHg/w3GhY370Nc8xWZfZ288nuDQsWk+raYF7jXJV0Xb6gUSwZdKE5gkaU4974qlAq5gOA06I8+uvCvJhljQgkVyg0o8udnsp4ycb2i/2R1hjtinuOJL3jLfd3dWPCoFcJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDD2yQKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDD2yQKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A40C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774722293;
	bh=JA+DG+sFTDrvZWDNvQMQ4TOZKyScghWt+ssflDPWYcI=;
	h=To:Subject:From:Date:From;
	b=EDD2yQKsdydvEEFumU5/94yhv6WwNoEeLioAj+OnutygDgQzTRhqB9jtlBmLlxgkA
	 AJ4TxWOw53JcGqDrU0ToCyxmaU19y6bicEjp7tKQ8fU0Vripj0jVvoXM60HoDXb6+E
	 DzzEDiASHORBAwGhOmwajnklANNH5rI5+1MvdxbbivUOgDRsmaDMJdjaidIT5g7YTI
	 REqrq/8jrPco452ZAV4OBymL7lSCTAB8KnLg37kAfWlpwp1LN+jYiz1rJArITUo6pe
	 kAGOFkloDYP9Ixun7rLy0iZEyRk/0db753VdTSKFb423dxmYMYrl9YqSISgvwjNILr
	 hSgot6DHjsUeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FECD10F3DEE
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177472229358.16843.10606122886942637576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3de19b73f1262ce06e9f4e40df84fbb872e61263c596945ad0a46d898b251fcb
Date: Sat, 28 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774722293
