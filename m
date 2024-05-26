Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575201EB3F
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 21:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716759863; cv=none; b=V9jLpgnHhtJpR8Nj2F7pX2NzFfrLRoIb37uxMhgH7TFwKWuMW1wE98/tTPn4zoNamTvFcefc0cZWadqQ801grlonJ1PEpS/fh+g6YQ4wvGZYmYqLz/abXuVglzXZuBypIL5XmCWxVA8XT4j3GBC1YruE5t203O41iJiithBprnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716759863; c=relaxed/simple;
	bh=oeECtcrNmQ9Wx7Nzw9qJu2WYH3nDIvfxxYlxStCux/c=;
	h=To:Subject:From:Message-Id:Date; b=GwZJgvEZiSlUkvQIh3gLqnXSSSLxf6JCmfdi1X+Uv1KbHTcE/YCROFA++Ltgms3WtyB7QyFoTnR8X09yJG6560dT5bJLS1FdOpZvz1o4RVcNmXi89fcJUr3ZMj/gcg+2t7MNDVCponDGzLXRjXDczo6R1Hikjbt7CNsRKR00+xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CTlAlE+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CTlAlE+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BBAC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 21:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716759862;
	bh=oeECtcrNmQ9Wx7Nzw9qJu2WYH3nDIvfxxYlxStCux/c=;
	h=To:Subject:From:Date:From;
	b=CTlAlE+6dJqwGY35SRL3rh0b5Feq9iSKcsq6KnAQ6CMqPfFQFvLokzoh+J0XvBKkg
	 aoX64zTtMMylIxB58dq9AXq2chYqRU2AsLgDS9ZnAgKL4HhNOJAt5Wu/Z/S9AX+GEQ
	 E4EbajeCB5GAkulq0GcBQIUNx2AIwBgaX8tZU+G8vvV96fitRxyLmqFvynM4YWTGso
	 RXw68oPRAwa/eoa2ZKoAo7foXQQ0wiO1PjMZL10QH4Jj8ElfmAtzcYHxijO0V+rjt0
	 RuFQ73tG9+ye75qfyX6OtcX4v7gIRBJoB1w2WTS7TL92cwDDHutcJAMYbcZaP9Nhjb
	 Ub1d17K5yfdDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E53C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 21:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171675986276.20152.17355797946550304163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfd6ea2da0b00e6563d4e1eed847fc200603fb8bc5160b523e8b155f1d97e02e
Date: Sun, 26 May 2024 21:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716759862
