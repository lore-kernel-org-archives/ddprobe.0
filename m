Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE032F616B
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769834634; cv=none; b=Dv0O9JXnG7rekRaafOHSwYQNgug2V5Hzhwp7qIDs9RKvVRU8POs0F7ro5D6ZKZKFyT6HCuUEcAsr03/mieTaj6NHZEvj0Bs635xLO8YRJXhyBAe7MTCo7WuEE1eaZGkfm7wJbWxj2T7/gQ/YyfOmskIyH4AMr9pcrv7FVxPOba4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769834634; c=relaxed/simple;
	bh=MYxIXEg06KRZDcn63tJOQ/Yq/2DFLjvYUCji9pdqnXg=;
	h=To:Subject:From:Message-Id:Date; b=eJlvP+ysNcnFUpFzt0C7zXPE7uiv/H+p16S5fgVOiewrA95Bg81QLB6ZOvPy35BsgT+mMNsDIzNyrP18vl78DvC00eo7CZi3MvTj9DgK0DZsOhgmudRHisw3N/lLbyqsPMyY0xg9Pyu+53e+7RyoU5BaCPOdKb/ogIbQiKOjdqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VapicGtE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VapicGtE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EC0C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769834633;
	bh=MYxIXEg06KRZDcn63tJOQ/Yq/2DFLjvYUCji9pdqnXg=;
	h=To:Subject:From:Date:From;
	b=VapicGtEzZBp40bwu+vRSOhXGou7a5+IigsH+Nz9UciJGyboqyuIq+oljToKjBP1e
	 ggC8aIFWjqbcVVRC/X0qVi9DradqCa8O6Vjr78amuOPGLypFifekJ4o5zuArqC+IG7
	 PbxHOYa1Jm8arLS9OFj9riQDtcYWPFVaEvV6/7KsMGudub1ub4ndxbtvV/xApBqNdm
	 ogPnSnGUyl/9RA/1gDzMHMJkGFnoqdU+nsUoCvOYY3p4Hy5Ezd3FVUkm2QOMd2Eaul
	 3m2/wIZzOrqeagW4FcY35nA+AUU4UNTdBuucVNYPgafz97Ck6kGhR7zYwvBn5ONHko
	 tyE06YiMejrFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A611E6BF13
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176983463360.4172.16909084544592783534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a008b34b657d426a4d52bc6f40f3775deb0a5db8e00f80493ec0e404ccb9660
Date: Sat, 31 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769834633
