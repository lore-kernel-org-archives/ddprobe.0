Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317A6442C
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735018554; cv=none; b=k0nSQakmO6mfZutTQfBDz+gciDdm/PYoxEsO/9qF9PKzJy5LIwBgYlUThDMZjijMaruADZ5PgizuXZhkwxZsX+x7mKMdMHCFOzakNpYcuWKIzpKLm3ACbweLoQ4H7MSc6YCR2ObFasbSLW9b0bvTt3qWR1tzNNZVN2r/e1W8xOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735018554; c=relaxed/simple;
	bh=oPVs6/l5U4JnMF9bCaI43brl2e//IS1Lj3ww1gAlXnI=;
	h=To:Subject:From:Message-Id:Date; b=Znx6Ahy3CWublKsKa9cSu+Kk45nfbqJeXhGKAD4ikX7gum05SDNT0Ji8a3zZi/RCaJ2MN9P0/HKhbx+C9XByD8ZKu6xL49z/9lgs4inf7ayauzTZgpL27TH48IsbmZXF2ehYu7oF3vbZ/m6Hh3kok2nMBt45UaR5XjQ50WsLSXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f65/b6Mz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f65/b6Mz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF09DC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735018553;
	bh=oPVs6/l5U4JnMF9bCaI43brl2e//IS1Lj3ww1gAlXnI=;
	h=To:Subject:From:Date:From;
	b=f65/b6MzFZnB7hB+Yo6/yED4yUblkfKNLoOR6VJuUFPBmUEMWjam5G4F+lcde1ohz
	 0vR9rAf0S4ZgfEgFfbzpfN4JWNFYBOjLpQtHKcA3BOOh0OUJl9+3Hs/AX/Kr5UfD+C
	 puSoqI8n9OuVcQ3Dc6ibCEfj7BxMHw9H2NnPF1cCD1eqT+CXl6DBeMAg/g2U5M5uu8
	 YtXW+F0qoXTwzn8mBkXzVgYCNw/jWd35Np9vrPXdju/gAoOEQ/Qn2R8pAf1a57nprv
	 BCItwEl2X/IYlxetTUGznRuq4Bp2uSsYBS+wsZBpT4cRF0LTYWZTnbJ4iLFWsuLPiN
	 Cs1tO+Kq7Xieg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95049E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173501855358.12406.9794803588459190095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75e56938a1f6bee9cd304ef600c3c48b7faeb0a997d22a638d79909ce7d82784
Date: Tue, 24 Dec 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735018553
