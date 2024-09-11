Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA1C1AED46
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726071354; cv=none; b=CJSVvxIX8EySLoB7v7+YY+REGXUZoqe2D5nBXqFYDmirMcdZMgCuaF0b+LzDTL/fF4C5RM2VAAbDOaz2Fjf/2BWYRaKVK3pUu0EOPq1aH2kcikEQ3oLmlo/8Fm2D/q5n0bZwCOH3tHKxH61AhN9ciqcpP7Xt+pkP+WbtTu0M6Io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726071354; c=relaxed/simple;
	bh=4Pe/ItQqNSWRguUPBY5POKDpE/mfSjMvZRrEFgm7bi8=;
	h=To:Subject:From:Message-Id:Date; b=g7RkupDBqx4i+2YHpCVvHeQWXYVFNJ2aye6AMmGBV9w5Dr7Yo9pQXUuinJglxAG6pDn5kJR+56kNpYQFzEMQW3e+Nfsr7IcYGlZ6FtCltFWSjRsL0+f3E57JB84L9m3hcwJazW0kMHoLhb5kh/TbATVUNKhkk2ezQIwHoV0ZTXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdQ0qgtC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdQ0qgtC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59F9C4CEC7
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726071353;
	bh=4Pe/ItQqNSWRguUPBY5POKDpE/mfSjMvZRrEFgm7bi8=;
	h=To:Subject:From:Date:From;
	b=YdQ0qgtCTeVCtjSoawBAHYFN6paCZc4E+z6Jc/7wZZYse3yUHmHh6tsYDjvclw50C
	 ZS9bHXZqLevIZWVodPqap2/h/LVRatK2N2yZGKX3VyOnK89i3b0kf3i1F/V2/ROXOr
	 +c65txwAdPPYNio47I74e3QtasC0ugViE66VSgncTAQF1e0xqAhW8+PERk+W2BBzi5
	 mYwvZ1mBdBys25JvRb1k3ti1XDSR/SN1mAFWupaGxhBhVq4zPQG4LFV8zlqGO+sN4e
	 cbD4i8pHVgeXzqIUAPVIqMRDCu2QU0/KW0fp597QnbRnMYdASVtJGwqPGPiVZLzuV0
	 pia2LN+9uM1oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928C6EE57C1
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172607135359.25117.11159478707459481307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f60127fcb58e7db262536722d0d1d5c20ebcac2f298b42ce7c6ecc954cd31c1f
Date: Wed, 11 Sep 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726071353
