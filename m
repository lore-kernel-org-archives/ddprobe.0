Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09691944E
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721577954; cv=none; b=GoMZ/rGcTbNx3ybVYW+UCEDLHk2ZjwN6VsgV404mgY2g2W7lZoFAVRbWOr4y+/PtK1ME1MH12g5seo3bvKhThENrb+xA8yU+YcaWAz+N8lAbCTBrwaPfWlDH4AFHsdHz5JPzvXmW/9a2GeDdbGd6Ec+auQyZT63XHmHI77/awtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721577954; c=relaxed/simple;
	bh=krh9u0vhAqigj2I14B4MRMJ1WR53Y4jpvncy1iEviEk=;
	h=To:Subject:From:Message-Id:Date; b=WN+8cVJ0K/zeYBB1DfROVO18xE/xfNFkv67H0C+e4gxefatTca5BHIIAWQhdGcJW8/P4wQ4wUo4qEm8r/s9CawO24JyTr/iL4bfUfMOUiAWXWsnuozD3xnoKWoaTv7fdt+EJwj+Rvqna797Uk0ZEe9CkJQWHgS13eZBNenq7HvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bno/12QY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bno/12QY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A704EC116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721577953;
	bh=krh9u0vhAqigj2I14B4MRMJ1WR53Y4jpvncy1iEviEk=;
	h=To:Subject:From:Date:From;
	b=bno/12QYDfVyxip2d0ZdM/QVJvBP+NFkGK0ENFGueUhpfLwj6jNWuSu/b90V+Ab09
	 feHLcOWboqAhu+tQA3gnafcPelbHE9fDxg5cB6d7/mj4rI1jZ6UgdC+sSEYRvdBo/2
	 4tA5ZAWG1QLJ/fGlI/bLIsRLp4VA7Xwkh7soJMP1dKLhCmzu5PVonM235JYdRpaSou
	 9+4zuY/A8DP4F8dqImNChFR0HvfDXPVOFdnPHwQvLJ7XAo6DbUWSbFU+p5ftBuBS51
	 6gYbzJqrNjYxj1gdYZgKt6o4tpjrmdyxZijsY/yaLe+WAimCsBgeIRcDgp0d2fCoV6
	 u2TMnbxnxtupA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BC6C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172157795358.31876.350755071113740319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 299fac125f051d15bcbb4fbe6f0757c65ce9155b26bbfdb879e79bb1ac102255
Date: Sun, 21 Jul 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721577953
