Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 873A42FD665
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 09:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782379054; cv=none; b=kQDGuDjZKBUmJO78pE3rSTg8cVVxEtZ5E4SEwPbeRpxt5MM0Bd8c3iyhZgRZoXlCen1yjXbcr9IKXv5322A2hcQDavvJQB7Pi1gwaLChafOtK7tjklxSpDxcZip8RIMhNBDd2249Zr4qkagZBuzqVwpjukNKlqKk6KBaAhGra4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782379054; c=relaxed/simple;
	bh=2zMN89YsXfkWnJoUnWxdQIUMINNDFpXvvlxodKI0VDk=;
	h=To:Subject:From:Message-Id:Date; b=cy2DMjEsV73KRf+lyNKSXsGgxSgAp6m+ARsoL1/SA5llp8EEpAQL+dKxSGG4wbPDdiKb98XrpDNcM+8d0RjjLtjhYqNlszX0/CEXIuJQdp6XxC/YxyhM7JWj7xapvFiLxaM5NKYbO3P0TMrI+HQrjcW5CLNKU4K7ogrr6mPwfEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BkICA0RS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkICA0RS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD409C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782379053;
	bh=2zMN89YsXfkWnJoUnWxdQIUMINNDFpXvvlxodKI0VDk=;
	h=To:Subject:From:Date:From;
	b=BkICA0RSl8dsBE2qKXhzXUeYLHE+KnRZQI5Coy/DhI1yas7RGmrB4YZ8K3RZmR2Gk
	 tQEcMo+6v5kQrZUnQt96wzuuQEG6Xzqg21mSwud2nIW9ekveJ/+Tn+kDK0StM9PZkb
	 fOjtGxOl6MhkqBDBH/yaW4BGKNyBwpe3Al0dh0L/2Vq/Aeb8Q1vHnpnYn9Av61O4cB
	 LaN8aNjLqF9CjjZ9++gTWgW2ZloTtwyMmTdHGvfQqZ01JcUL+bdu5iX/jObxxEG+Vg
	 P6VPVYUiU8rDp1Z+I6SrmsZtOkVgkwiiK5Ptkt9kWDgUX90zqGh0GHPAvVgCXDR7TF
	 0CdlVCdflKZ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC3E2CDB47F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178237905382.28578.17765739195884646612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 302cffd4187afb25582e7f7c83bbb8d853fd14592e1da352214ad85d4d15a699
Date: Thu, 25 Jun 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782379053
