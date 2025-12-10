Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141952D8375
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 11:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765366974; cv=none; b=O5RE0s/iAGxzG6JovX8Bg7td9ifQNxJpPZOprGlWNF1pHrA3OCHnOQkcr76JC2C1pcz37mtmWAqhq+Ndavt32w+i/aVZJMAR6hcrCVvpK++s3m3b7xWXUzY8kVhxpVx/OTaVqNp3Kc5ruZEl2QRXVDMDr/2DYijFKtjP/5RroJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765366974; c=relaxed/simple;
	bh=MbgCfnKZ4AFYt4EJkptga1wnU7PYsLPoTGX8OfIZDb8=;
	h=To:Subject:From:Message-Id:Date; b=lHw4BmPpjBIInNF5Mz5DikV5unmtiULtSgbnH7GERHZ/bgRxGMcgo7S/QFD5qLAeamznxJf3r1a4XOnXwvFK5Iq//q0S2gTrfgrWUK/pFIXfKyxMa7yu6EILtiwQayF4FlLXS9cNybYcbz9acl3Ke0kdrQssWqadt8R8iQJK8Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnvcAFeb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnvcAFeb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4234C113D0
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 11:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765366973;
	bh=MbgCfnKZ4AFYt4EJkptga1wnU7PYsLPoTGX8OfIZDb8=;
	h=To:Subject:From:Date:From;
	b=nnvcAFebiML4lQwgaDbohLmJGLr9y3kH3PlsyWJVC7KskBiMyNQ3/ZB2YvbGvlU/y
	 5ZEvSe6isj7fcCBZHznupTb4C3JESmWUQE8O3E69+/JS4W3s5lxSv6MVTwCHCVfFtD
	 fn7Joabc3BKe01xEsqHMkHsf1mK7SUefcmNsGmEk/441Tq+mFxpPpJCArWNNYvLE21
	 8jbGrRc4f9GQoygQM9HfTcbMWc4rHFUDYW772zYdk0gNlTfBCY+dOjuN67RRwFkPc7
	 UTpsD8ryrSvXuO4NVgWJv8opDj540SZhk9J6R7eD4NE7RGI3tIxO6xcVfP6U9I3/Rj
	 WUfpdetcF9wyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C4CD3C52C
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 11:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176536697358.16213.4959306653447467732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff4e5090ed7e7f4080226dba6fc8f77e3fd65e6e60bec52a5ce90b8952999af6
Date: Wed, 10 Dec 2025 11:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765366973
