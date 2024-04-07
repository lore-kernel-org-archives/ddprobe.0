Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013EF17C9
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712460497; cv=none; b=Y6xORumWnbl7Yibjb3gsPNyScF1c6cr1tnHjG7LMrrj5WSxaZmzzO2fWa9LpcFHn7CeVkkpytrIGFSKVAFN45pFWqk8I+Jfz7czWf7uPkdXk5WypMgZ/WzY4i5YQAdGzZx2tljcigbvvvYX3/XO4HwPQ1SvxCokx7DQ9E846gac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712460497; c=relaxed/simple;
	bh=06+me7SB35/gLI1170ueZU3lBBFaKQ0Yv55xG/ewKYo=;
	h=To:Subject:From:Message-Id:Date; b=L84Y4BYbh79gMdFU0x7JlJ4KYYnGsDVLqCAYrbjKxZLttYIZNrO3TVWMM4CpuzizPHJAYrH5GCdZpOO7zUHamilj4XzLiVLGQxupA9TKjIf2OYKoGsMHbitFeCRaXvJUiXDBbQZs4wmZ2a2r64tT2267Up/WUi0lX5RjwJVJIz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DktW7XZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DktW7XZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7648AC433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712460496;
	bh=06+me7SB35/gLI1170ueZU3lBBFaKQ0Yv55xG/ewKYo=;
	h=To:Subject:From:Date:From;
	b=DktW7XZ+6Sbxg6v3063/wCs4b36vUmStexZ/Z6SeJqDMC+8mqLqCBw+6YOSFg0Lga
	 X6m//DNdp5/BIm2LMLLeHzqtzIeoZinRf/KcvpBQYvg8lnWkJUd9LntrQrraAsUl0w
	 y5/uG3+jyBmTknKgIIwzEulp/uKLBNvi88Nz0x4c8V6ovs/Y76G9f7Sz2o/QYSx6xA
	 V+GWckI2APyy2xOIJ8IMTqRHJqYllwqgjPYiV8vNawuBwISh+L0xslV8dPHIgx0fiv
	 bRg/u1gABngQZl/9AKRO5KwxVxNQmLtOaD4N4MhJw/2LmnZSgxztRaXa72+2gtpk/X
	 pwbQZJSQU4nww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62204C67861
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171246049636.8174.6625146342599606259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c06ba173858df2e9c58226d3c149ba4c90b55d05c2771409579b0e034e2775f4
Date: Sun, 07 Apr 2024 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712460496
