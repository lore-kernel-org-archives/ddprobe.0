Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D024310652
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788118834; cv=none; b=pO1AwsdF/ACRGWOk2dGclkBEE3N3HdUpvRohVmCWFxQbUFEBH1wYoGqlZ/YtDOm+rHKG/ktke9QHSpsIIAhD00ptQmvmiQWfxkYY+5dLDOM2uL3xyMr9IsmCXwSFTw9AdhUGUPozVsPvpGE/lBBk5vBVTI5XeI5MM4NZoy30/Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788118834; c=relaxed/simple;
	bh=L/v4mCFgdAhqvS33ZCuOYKc9RskyQP368WSC+igiNFo=;
	h=To:Subject:From:Message-Id:Date; b=hVAIVbNrSn9t8hIrl2iMBHroSqIfiOt+6vAez08WqRvVxwPvwQ878dQq4YrYDMplQUoP9qsT/BeIUjmTA/+C9u7wsZxLwjIWMpuNlywemFCcr9EYqJ2zPKN0hpJltY7pGoFwWNt8UHs2o4z8KTeB24hqZD+jULOAcLXUL5gESho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bg/73mIL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bg/73mIL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED50C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788118833;
	bh=L/v4mCFgdAhqvS33ZCuOYKc9RskyQP368WSC+igiNFo=;
	h=To:Subject:From:Date:From;
	b=bg/73mILkJnO3BED54cXRb708tZnm5M/44GbCkNaInQqwjdahGbbpjx8Syu2oCQhb
	 mcnq31T9+V5fCq3vCKt1zYdPpaWwYkd1wC99FjMYuB+BABwe8as3wK/5Y22ouNMR6s
	 65jj9G1/0EEjVcvSGxI4PdT7TGR302PdIOyd0lnvnYFPu6vFTVd+KuKitBAt4sg1sF
	 SQx9XvJkvoPRvxuIUyCGHQ7UAhA/apgsziVfXT+8A8pLze1TTiPQY+zSPf87wca9BI
	 uSwXTol1YRvnz/mjM5JwpGtIcVUAZN2GDoI4OXPQoWQuLNbB9f5BVfwPoOAR1K0etT
	 dC6WdMB6sELEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABAAC61DE1
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178811883368.12201.1035576010220936643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33fcdb021448f455e2f451a7b9df7ba1fa9333b817f1c345d4e7c0b3ffed94d0
Date: Sun, 30 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788118833
