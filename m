Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC17D2857EE
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771567493; cv=none; b=CefL+e5881eQYuTx0qli2Gcg0yyK2HIGLwgw7aTJj7ziHAmahNF/sijyoeKZKhoKZwwmQAAdn86uljg/HNpi0ROHts9iWbjCgJfVEQhM1Zi0UX5t123wMSCQsnE+CKOHM2GoPOz9p9xaL2GsRW2YfxBe50i2C03bEIlhV0kY/sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771567493; c=relaxed/simple;
	bh=wyTg8C8r55X3DaZpJdib/x9Zd/95hSWO70Kd9w+Kkdo=;
	h=To:Subject:From:Message-Id:Date; b=Mh8fEsHKYbz8vZ468+6sWfj3u9F9QZSeQqX1Ie8Rst6mfyiMdJWMtE5GauoAqvvl/Xlx/FgyMvIX5rK87bAEGcHBEyfi38L7yyWyyd0iCxjf2w/rYsW8g1ff/kCr2ISBxA3gxsw96c+UgdQB15b7/o2txM1Q82In5TYORMW1eMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUP5XTm5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUP5XTm5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E69C19421
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771567493;
	bh=wyTg8C8r55X3DaZpJdib/x9Zd/95hSWO70Kd9w+Kkdo=;
	h=To:Subject:From:Date:From;
	b=dUP5XTm5rDNJOqUuKm8J6t+JcAR5QSe1d1QSSKv6sr4sRWiqtIZd3AjHP+5e0q4cQ
	 ra+yyOL39Q1o+8OdfTu1582535uCn07cFYYcAecGFdMcCNV02bbbgoOJybj3eclcu/
	 29+MKh0ufBfYrCXJnTxsD2kWuFwo+5GjVNBNKZww/rXNeH44S4BeQ21kK91MdtOE0R
	 dM0GNBH42kfufwwddzErLM9U4nUv8l2M2Ws99nEMdSQ5yFCR/kx2hrZOWQpJFv9neS
	 tuXEHn1fyTlY9W1KUDyxgeQnAVNAb5r/5idgZDxekcLLLDcXiptmH/Xs6myVh49Tfn
	 TjCqewmYpmJng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92615C54F54
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177156749358.13249.5745379960593343533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 612e6bd13977f121fb7fafda0a91c4d0684c3631e8d21c9ee48cc1ebeb4d174a
Date: Fri, 20 Feb 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771567493
