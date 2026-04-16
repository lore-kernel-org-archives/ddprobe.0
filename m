Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447A1224F3
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776313054; cv=none; b=coB4mv9TH47LyGLF8KLgYlP/itDdW7hxu3NLEKWQsdIiN9wYuDDnMsPQTlBzyk8f8PmGanYS11ZnvPi1Q9COTeRhTpdUxSHoDSV6Bqn6zqR/00wEvTY3dA6lVEAg9/WBTZE7xqvbsqz9p1Pf1QgZzN4Pn2/92fiQ81X/3OcKlHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776313054; c=relaxed/simple;
	bh=JwF83ofVhlUumu3jKpcsYmoApfX0jSGg/diXukCK+jw=;
	h=To:Subject:From:Message-Id:Date; b=FOh1jLbzpXYnaKw4ELFYs0lAfmqL9EBFasJ4rKBukVqVsWw+VubN/QTkzx/rxD8Mj2qTgSXN0blZHTS2z2g/7u8NdaXuKUGxx4FCUBFTSJxzV94hTubHcl1wgp7HuVUGzh3gtc+GEXtIAooOh7xxBjgfozW7xOGc5zGdl92qcLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tf2fchxV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tf2fchxV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FA8C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776313053;
	bh=JwF83ofVhlUumu3jKpcsYmoApfX0jSGg/diXukCK+jw=;
	h=To:Subject:From:Date:From;
	b=tf2fchxVuSAKWkIpG5Vp8MdmBqAsAEgvAwhWnYSOc6OIwFT95DS01VpZv3/RIAUWD
	 L+Zu0NH+V5NYljNNFOEm6bUtGr4y9APFl72BtDtaU1aM+ep1d/NR41AfxPoCGVAxS0
	 twrBDVXD7hLV7VJ9l4qptkDp6L1nV2hgC3oZ67avd3FVNqzZFg9em4RC3SnRU2EtB1
	 ntNsR1VdLC/XKjLH/CualIHT4UHKsSuusuttck+0ScoPFx5kDKWwwB7vsQ4Gd/0cht
	 CPcb4XMmMaCZhIuiKGF4HYQY1VDMZbq3f3ySgqOsBQ/GEdu2eZOVdZjxjM+Yww/dFu
	 mkbtkWfswtYBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6172F433E2
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177631305373.5234.12196271667080120252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58cf6ab6d873ff10fba9dec2c6d8c97718d47964cd0b372dd2c61f26052dd06e
Date: Thu, 16 Apr 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776313053
