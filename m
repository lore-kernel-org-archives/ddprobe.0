Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC4A287276
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766010234; cv=none; b=se+oGZUHw920x2SXprOiaAxcJ5r0GhMOXNMX9uGIJlEd/C+6v0CXEoulGA1Uh6CIT388JvM0tEftmPEgjNCxEi/NoPQfSb72IK7onWl1JCeFKNow2YHkeuqgw88e2I6pyNcmTgSOSQZuMTMM+r1qRdSJiV/gs8f6uzVzWlqaWxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766010234; c=relaxed/simple;
	bh=oqAJfUSFrqyrNO6yVXOXRcHFol49FbnFUVWbZG7IyyE=;
	h=To:Subject:From:Message-Id:Date; b=eTpzuP36MtAMkS08/WXfdDidtCzpfq3q6ZqE6y91PAz7NFZDFYillHWMY6fKxWwnY2yMzIxmRRL4djYIYajt0G3YWDdDy/ggFnniULo/oErnTze44zk9j/FdMsY+nfq3rp9m9nxcjgnqdtFcHK0b+1XfYDdS6dJvLLu50k23D0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RXXyG7Mh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RXXyG7Mh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03BEC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766010233;
	bh=oqAJfUSFrqyrNO6yVXOXRcHFol49FbnFUVWbZG7IyyE=;
	h=To:Subject:From:Date:From;
	b=RXXyG7MhhVoONT8nPcHfmwIOw3MZEALca+o5i8vpUzqZLJ2WvLjbPMeDzh08kY/7s
	 yZPcci4iH+WXzGdaIilxjr4E9UwVnSAc1SIUtgu1TdZw4C1eUGw+zQ5WrC4tuP0xDX
	 cINJ8FRWMzGWx7UDNSN1eJZoUzzuDHTOd8dVEhRD9nI+nHNAUrWxsV6a/RNKlJtJmx
	 KxLMDR8ET5NJVT+WyRC3+pLY7VCg0WtWQ+ot7wTKZmcV61u7anY5ZcQFB4kElZqo7W
	 MOmrQGjXas0YKtUR+/zM2X7yRcUzICjasL6p2sM7mgLpPU3oHDR5CFNUyv+i1XzFHE
	 eh1MtM6LPunaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903C6D66BBB
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176601023358.21390.1946540870233585005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c5f443cff4d6261201c6e137398c4d5cc1856ca2315e9ddd421b34835471295
Date: Wed, 17 Dec 2025 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766010233
