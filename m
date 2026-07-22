Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D400A369203
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 14:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784731714; cv=none; b=jVygEK6kV7MLvypskhiI2Uw/Z2YZcsAJY/1LY0nNJiUez/8ncR3TuomfTlJb+FrkPMMQKhTno1NhXkbwn2TVST3QVGpJsievDPeb8zS+E6jak0VYquWqKJJCdYvEUrZ13CbqfXbiLRhJA33PyLw6iTr2D5vcCtkisJ7NbIn7wo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784731714; c=relaxed/simple;
	bh=vwUf6VWVca7phHedwqdrdsdMHmDORLfrKIG6RVQ0wVo=;
	h=To:Subject:From:Message-Id:Date; b=ZodKwOSK6A1hhnxcdcsxbppON/76Ub+MU70OKh/lFdcbi5AN1716Tk3buy5oo7b+WMUscWKwJvYzfFjZs7/XZcDdOIKvn4AseYwtATUFTDebFb+zfIBZmJVMoFksOr8QXFcijPSffn60MXvGW2jj7n3diZQ49gUZnjhqe3/rlPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qdrpnIAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qdrpnIAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 41C64C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 14:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784731714;
	bh=vwUf6VWVca7phHedwqdrdsdMHmDORLfrKIG6RVQ0wVo=;
	h=To:Subject:From:Date:From;
	b=qdrpnIAjMJFs+hwEWHRiFNZsGa0F5Z6BVE1+pd0N4a0V9IXx3eId/inc+pqIaYSbT
	 pjTcdia+Nq6pQ5BP4H9vcEkAlVMsw3EFnK0K3bX8tL+zpJZHgzhgJW2z+2yuIoUK+e
	 CWvUF0fv0CIgjr+4syJk7Gv6+dxyZcmxVsz5BiYWPeFVw+iZZAkYsthVf5jl6ESBHo
	 j31pe8rINuNEQSkWMu6AH4T8MkBdaeHjFVdUHta8EQOYDp45hxwCA6Pfz5tNzP8TDp
	 HbUwJtszhaCBtJ4qnFR7trORkgcF/OmQSvJpQ/KATex2Oa3o+3E+HY7saqzvLMLFzB
	 CvA52R04P+gpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDDA7C44539
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178473171395.8066.12777359174857934014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc787587cb4b21d8b1f45f50cbb1321d7e8d0532f2904fa5b0792db92d805fc6
Date: Wed, 22 Jul 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784731713
