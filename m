Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A692DEA8F
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 21:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769118235; cv=none; b=hQlqefA75dg1BlkuTXLhaIg8qCz2bSR6i56PsiLVJmss8KGLJ3UAwu6c5XwsK77u6wFOEUZmqoHGQjaUXMlFycQWQ3GjYLvLmW9+cpWQbtu4vFzBCXu0703QcK6v/zQn8jhQt+ya29pzLZuNuLYhorITNAtQMDQW2DqANTg6UsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769118235; c=relaxed/simple;
	bh=rM2fWVdUK/D3Mi9bwP5J4nAYEra0j8SAWTIY/9FitVY=;
	h=To:Subject:From:Message-Id:Date; b=ugRNzjYt5muVAtfU7Q/DrzwiJCv/eozLnlrJHwlE/YP2VjCjCVL+j6s8R/0cccdggXJ5LZzllR5XLE+tQH1Z+5vVNgWCs6gVLwE/+t/hYMAdzTzmjJ67dvAA7dcgR7CNC3lzI9U6d+7bAKPqBekKAx+4JUP/QHIDpL3tzbGd+hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2x9hZWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2x9hZWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EF5C19425
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769118233;
	bh=rM2fWVdUK/D3Mi9bwP5J4nAYEra0j8SAWTIY/9FitVY=;
	h=To:Subject:From:Date:From;
	b=E2x9hZWpA1xN5CmJPZXdm/SFtvtFSB5VxIbMKXWoUVM/XE3vU5gZ46YRTVvTLFyoQ
	 8J0XBaWvhNVf6akhTKQV6IQppak2HlcHSh/xQB4w4eNWbbdF1nWgLzNUcbTnPolYxz
	 1s+8O6s9mVAgM09Gux+FK3IL0WZWnte62+6joOaKXzFnOixJqM0tGyhNUsWXEQ9JBJ
	 pCyNaD7fsbFTIvBmWHZ+9KBKunOQLhjW6rQo18yDTSDP+KVwR1aj7/NWfNQ5tV7LMh
	 0Yoj5glfgIDqQXNkree8F8E7RgsTlvBF2+VbraHvvsoH435XNakdvw9CxMnmjIzWao
	 dnA0Idg6CmxOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91430D6CFA6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176911823358.11600.14210840443949784817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9985a1a0f4c1666efb23593dcb167567dd33584fbba1c4b2549a99fd0fa35d2
Date: Thu, 22 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769118233
