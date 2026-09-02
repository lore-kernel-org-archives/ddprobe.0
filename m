Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 712D52DB791
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 12:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788350435; cv=none; b=Uoc5xW3faKl6RhAO3oB96lWUp8yVTcFJVqUvDmu0G4hA07nA6Z9PXh7YW8UxFlvQyP8zVi6Zbko6vGa6wCZkD7u1TUqXckXtUDvz3IH3/uVVnhGGtcWM+4WcG/9VnH0xI+eN884A1+6d3CRTAiebn+0edkt7x6EmoQhFRe4H5XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788350435; c=relaxed/simple;
	bh=FK38Z8IgIUq/DygitCTx8rf7qk+puFIoNJCx9R3v4QE=;
	h=To:Subject:From:Message-Id:Date; b=rib49r/PHvQGbkNX04hvaCyZyKPQzr5mLbLaKq50bxhVm6JYNuNi80AHDAhrtnA43hKMpMBmsHV+UFrd/UwYBYfGgwhw7+EC0pkmdTA3L+tYSdUEWuFdeQkeIyLMDO8Y64BbRCoxbUrp9WRgI+t1o009I3ZSyzkJDDVbRY/DPcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BP4TtoTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BP4TtoTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBF1C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788350433;
	bh=FK38Z8IgIUq/DygitCTx8rf7qk+puFIoNJCx9R3v4QE=;
	h=To:Subject:From:Date:From;
	b=BP4TtoTC1dPNFVHdDVEHNb6TLjwE0rZDbjWDk1LSrgbFATGWdxRcBu6vZvB5e/5Ec
	 4ObQ1D4YKJP+1vkcSBtgFO9jZyWE+WowI7Feg3I1vqnjafhYqOtDsk2uKei8olQuPC
	 8VJHzpzI8B4kMAWZHlvG/cGabgz5CcpxmkmXjylhy2k9AR7AQCqQX3fvHO4ObvYkp2
	 weTyWco95rmTFiNKDNVHyJ2hnkIM9IMmFCKpgfwcinguJtYB4ecP1ef2qBOrKtmPaf
	 uNmPLpkJKvdjMG9JijYMnqRrHQC/uDmatf0caqMVn+G7ZcacLAr9f+oY09PlhQOF2l
	 qtD3Jf2wA/Atw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BC7C624D0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178835043368.19145.5749341473055458035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05a4092e7cd6ee19cc8b0c1004dc8302c311cfa354dfac9b6b477f6cd43c3ff2
Date: Wed, 02 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788350433
