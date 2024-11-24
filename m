Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367B436C
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732484154; cv=none; b=sSgNcEPR+MhIeXuDF2S5TgkARZmjWL1z+VOhKk6gyg8ZlZzH3mACW/mVS7m2J5bqspCSO29X8HGmC6Sca6OMe3n2cds4LVyFNQvZ0HKKU3QMZhYVC8Ztr0PEQwRA+8AmkouSQRr4b5g/1rxrGUB1tnFo2nGLjjI6mnJ6P4GObUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732484154; c=relaxed/simple;
	bh=iLInyXLltWZkuBCV/la9F0MQFwquejcYc3YTN3YPdt8=;
	h=To:Subject:From:Message-Id:Date; b=IVgnU3UxVhE90/gI8WKWzsT8St0sSC1VyE4XB6n5H3S76RBAMDqvTc5QqjHCesfD4R3KugMO4abqdRALrQ7WZBPs921vHvzHrXGPL67fy0Zsw2o3ngbYwHhvEUfarHlveRVHPdmaiV1OCgrxvdjcWcPWG1xmu7oZm/mlFQ826m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJaxHT8b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJaxHT8b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE51C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732484153;
	bh=iLInyXLltWZkuBCV/la9F0MQFwquejcYc3YTN3YPdt8=;
	h=To:Subject:From:Date:From;
	b=XJaxHT8bmuKX6OwpQ2/BnlhpJvjNAuKRLTxYGtL5LxAN5JhaFe+p/Zj0dXyO02r+j
	 5ry1dflQ6+iJ8ryz6kZqFGN8Sg1dRbhB3ITXqx9Pl5wcbb5hYD2H7vzkNHLSd1Pams
	 Qx1trUkLznzvP5TFGkLUpwFpVC5M5Q4jTuySm4V0zgQ/eldABJ2pgDWUQVK04NKhT3
	 Aqe+laPE5naxSzjXl0NAu/dwmwBiekZmSCUw+n544z3pwVnOA4XD7TyjHOfVq8Wy5F
	 ulWJl/wccIKqOnfMGuenHufBY6nZwCZ9dIZ7cWlA6bYyDylkh8vLnuPezqyc3UrcMW
	 6HhoghmwW3gCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C163D75E5D
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173248415359.3576.16367436348960096382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef5e7335bcc51004d811c5463c3d8c3cd3c76294b02a1e2a822ec4302bcf5626
Date: Sun, 24 Nov 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732484153
