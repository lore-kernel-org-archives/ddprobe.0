Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F901AA1E4
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749733794; cv=none; b=Gv3TlWZuiePL0zOGLYJLE6fmmpohdLhqBmvgib0Gt96gdjPnLxv+HpuASUGwt8aYnWMxOzc+m2qZ+hRO+DYg9KeZoRdybkNCHQFLA7VfPThtb9UtCG/IWCiJw+BgZHuOSQXYU+RNbvb4nHHcUzfzfhHqswIoZ8O6g/avFP8balo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749733794; c=relaxed/simple;
	bh=wV4dTXtdq6LVVe/eE08Or+SQy5cGgwzO9PeDmdF2BcU=;
	h=To:Subject:From:Message-Id:Date; b=r42qHvjpYKuEQu8BJLDkfJ1aLO2w6CMs9+c8h+HyKMwy/jT2WbG1kOhTbwBDbkPbD95KUFxE/Py4/n+qDxcurO6NRPV3m/MiNW1HfGzjH1rh85I+nU8HiCX6mSvXJWDBMnzSmE78+nMVDPVYMJvPyDXUFXbZNj7STdEH/nNNrvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rbsw6Bj/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rbsw6Bj/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C1BC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749733793;
	bh=wV4dTXtdq6LVVe/eE08Or+SQy5cGgwzO9PeDmdF2BcU=;
	h=To:Subject:From:Date:From;
	b=Rbsw6Bj/i+FBqjwhqkIPFr7coE7LadZMtXlEiTbaEOkd9g9x/kAzokMNzB0HH5CHX
	 Oprng/0xwllQM0ecSEjl5UqFdDX1VzGC59pQhhFyXkd2nMvcCdnRJMjk/U7LsqXvZe
	 H8zhEj7belJ6xFIaAOG3qJHki7pS7VwGJCEJNQ/f6HQYu+6lZlZ7DYLyte8ozW29aL
	 cCZUl50uxW+P3x4UNVfmSg6LTnBGp1luONry6fa8NoJ4qRf6rl4JI7KSJjeezUI0Il
	 4hGIeWl2peZvdtuKb36B3vpAv9VhCI6yP1v6d+KVhBNAd582e4ndd5lsWWE1OYa7Zn
	 1BUHOceriCyKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB5C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174973379358.23924.15414345784645878097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b73a8599886702cea43f452c36300e3a4233ad56104cb53db0ff0e58550d40
Date: Thu, 12 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749733793
