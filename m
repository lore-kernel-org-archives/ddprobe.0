Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386D3442C
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727919954; cv=none; b=TCg/2emCuZTfsRy2gLmlvs68tpY9TryZpf3YFLI0DFRUUawVUn2k1YddNFPCdJVJ3Re1MzuC/1lhD63Mp5Jroo9Gd2OAU+bDazM3Fdws2lD/iFObmLPVv//fyR7mCY0s1r8I9Bp7ITi6sM4g6yyTlLmH9IJf7M6uGPK+Pn+gfxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727919954; c=relaxed/simple;
	bh=BnhEh8MH3GvPJgE7iv/nf5Blu9H9bqgSOkK4CbUvfbg=;
	h=To:Subject:From:Message-Id:Date; b=MMull0QOrSk4/agErlptt2V7iRv2NBXmdfd4SpWhArjFl6lONnwgTPYZ0e0qEI1vvHqES3kiKy41tJomZGeLJ0XOuJaZiWCGQeltR8R+D9R/PTKM3zUNoYMk7WNQb/CzZ8giKBS2jxgMEo/oXDn+uEaHdIehdJd6/3SKEwCz3WQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ueuWVL8f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ueuWVL8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC04C4CEC2
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727919953;
	bh=BnhEh8MH3GvPJgE7iv/nf5Blu9H9bqgSOkK4CbUvfbg=;
	h=To:Subject:From:Date:From;
	b=ueuWVL8fDfbNaZcMCu+wjwApjIz0XuAtfOn2rwRUx1zIrlNu+lTVw91TanYq7nwsw
	 K6ay8rtY/NEUdlv+MYvchUVVeFoOk6eJtF3l5EXsFnASMKk7nx1bCR8Ul+q29IV+rf
	 8MWSU0kiNZ1dTGqrUxqT3Ncw/sp/zSCil8tHkiEpHU3qApJ8X/YKVenJ4Q8RgcYsHy
	 4bRlRIDRM0SmR40eJJHDNa+/dvuFri74jJ/xbKlzwYcTnJTYrnTd7fSd7kf3OBq63X
	 u+h1H8ujpPkV+9U08g/A4N4KG/cCnXvX2YV2L1QBapZvg3n1HGxc7DMwkFjweUeSV1
	 oNgyrPjBONPQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A37F9CF8551
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172791995361.32019.2374092609679534007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64207ae591200eb0cc1616cd9079d0dda7b89cb0ba910cb3e0c2f86f975fab18
Date: Thu, 03 Oct 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727919953
