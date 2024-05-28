Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3108E71742
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 07:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716880463; cv=none; b=l6OyVtUCxrOx1qg0dDC8uEA/ZQA/Svq7bwqzZ72EFV8A6hPrKIz+Zc4JS+rB6fZoarHvcH7r5ZD+D0fm6rtfnNKsL+UrzT+xVjdPMl6WBizZflGMNrALUxkMTtwGYfR1XqZcDUPUbTG5EoALdVqxHmTHjW8MrItGgOzir/lplJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716880463; c=relaxed/simple;
	bh=wEE7+CWHG1iQ9FHZoZQjgCWN5NnuUKxSDK/QCoOGWII=;
	h=To:Subject:From:Message-Id:Date; b=FO0pKBjLDPt5JtbbOlsxjJnyJuUBpKSXXO7XJEAOUOf7+QPmbCj/0UHWLMDh5cCZ4UEH7TTkm1CNC3scvA5pwnoYfXEl46CEyLXsyl9PSsrWOKrVGUFO9k/out2E3KhZjH4DWWdFIQqUzkAZMT1e3z78KDxglrBJrppUTmZ+VfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWKN2Bkw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWKN2Bkw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D649DC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 07:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716880462;
	bh=wEE7+CWHG1iQ9FHZoZQjgCWN5NnuUKxSDK/QCoOGWII=;
	h=To:Subject:From:Date:From;
	b=KWKN2BkwMrUwDzIkehCHM8rzHu1LGJM/dz4uzW6Xa62GzzG7YDnRG7SJt4LpvcTY3
	 Dj3UblWSMq3dl1Ej4BF0bT88MDsAh8p8wnwXh/dWZIFNBGutI6e8yDuvNvDRqLEXa1
	 LACgWzYI5L0LMzNZp+1nsce+edTKm5yW9FrN9hCx5xlKiWKYj2lGPnIrvj9reVbCCg
	 kCDXdNVrBw+J/t+JxN70ni4MIcIcPS1iszurkqueoO29U+0VJla2xaJ8q9qzZUf5PZ
	 lWG4OTPCcxa25P9iYEjfEE9KLq7iryM+mBr9+G44lS1Svl2WXbrzzlU/zbq/lFhaan
	 OCU9d+qMNCDwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB61C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 07:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171688046276.28615.15722378774342651187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c60c1bb5580045bead2e422cd3bb3ca81a72efe7692a19fa212f3f61d1ac117e
Date: Tue, 28 May 2024 07:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716880462
