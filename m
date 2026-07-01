Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAB447ECD6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 13:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782911314; cv=none; b=LoF6nZ3gCF3zBgU2cl0a4qxQtenIMkj7tocvnjDVzaP1WH5FHvoFFR0FbpKY5U9k3JKZwN3T/LNg/t5Me0aXTY2SnRLzgP58urosxPUCrutop3W5T0fVmcgnfKAIBHQEcwhZxJlXeUHgkwvjUbRkuQctCgmW3lCRo/5mvls9xxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782911314; c=relaxed/simple;
	bh=qE1sLSOBiSQf7YtjHSgJZiv7W0tAcsX7SIpNNOmmkHE=;
	h=To:Subject:From:Message-Id:Date; b=di0Gxbthz2iDs8DsWVun/iXv8IaHcIgfEGIgr3YX69laIY/3Nxdi8OCl9MR6/P+ssGAZ+8ftmM/+6TSq8HpY94cTG1tG6qQ18upwpk1k/tAH7dDZXpnss0D+mSfO4qnBhm/CK5qufWWmbUK2yuRhmQyhUFMnZGQeMvy6ZSCGsU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qpQqfYE4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qpQqfYE4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2999C2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782911313;
	bh=qE1sLSOBiSQf7YtjHSgJZiv7W0tAcsX7SIpNNOmmkHE=;
	h=To:Subject:From:Date:From;
	b=qpQqfYE4GLWFp2f/Ou8eRqbQeMgD8MObdjmA12G9uYUmCZfl5WVvmWx41tZgiylnH
	 Ox3VWKvnBuEwF8zYwM+PY9sJVY+HW+AsJkSEb3++bekNA1joUBrKANap9dUjvEoKpY
	 n2VHT4GIVs3tMZgMUAcgHCUidVZZOVxBIxxH8WBIDjgCwd6qiafFrLJGzRUvhJ81aU
	 KDKNY8EjCGgr7jRY9LKolGLbMvoXV/fyRBxWZbvSKnnBcJ2Nn3zR/6U40JlhX6MkQk
	 CKEC+/ihCtjcQCzCvdHzPhEFN3jb9xzJGow3tcq9OlGs1EIg5ftT5sxYWXu0s6kKkl
	 sSRz0JMLJEe3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5F5C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178291131368.15659.4018335328261038448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 333c56ebd979aa56f35c62046251cd5b76306c7e3edeb50f30866c98775e596f
Date: Wed, 01 Jul 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782911313
