Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432434AEE5
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727039754; cv=none; b=bwJjLxThlChOaRGZ8xa6D7aw+tk5y63xFykZRnsw/37TqEsgtQmxseJsqlN+6Z0/2yR+Z4lR1q1H3LDn3jfih4lZcRLwGH33iF7EjqOvYG+6Q0nSxYUxA0wJ4jYtpVL8jvOgZmULnGGu/OgqbcsQdyBwkpY3lIRnzNsjVvDiMWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727039754; c=relaxed/simple;
	bh=l0FiDNMzChAXzBA9tM0I/z5bQBdQzcgM9p2ZqPhhiis=;
	h=To:Subject:From:Message-Id:Date; b=jnYlBtXFdS4oZB2986aB6zApwL5imJ7GctSAxzxohP2A5hRNB8ul9rbLjMc8ctFMET/nwT1oZQpXU8i2iX27Brmh+PY9fF/H7KerFXtssrEWzmIMw+6Jsr+NGb0rRz+Tw1i6NMhT8yUjm6wf13RKoZmAqoMsVX3I6wjvnXonPc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ewpd/SdF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ewpd/SdF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7594C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727039753;
	bh=l0FiDNMzChAXzBA9tM0I/z5bQBdQzcgM9p2ZqPhhiis=;
	h=To:Subject:From:Date:From;
	b=Ewpd/SdFSm7QklEKC6Fb2/GD+pPhcf9NT9fWzs7thf1P6DP6KyMzYCnT5DG3yIiM5
	 l6JjcjW9eAanrXKENnUmgTg+KuS5qj0OYOm731oC8UDbCSmaVIPqg3BrPPMn0fFy//
	 FR1gtPLb1A0XWtAUsaZdVZ743WLGtfSh/A5930aZrTHpVumIsAEytczDUk6+heAAx6
	 pEiFUJaXKKERSF0ELEpjjgnJT4K+EBG1K2SoVenhIYybNEa5EFtwjFwgESNo/k4OeE
	 ySXq22k2FdH5+qQyor7P7ty3+aravrCHoVnO8iFt01jYgU1zSGoInAYUFzjh7MIslR
	 sOIwWNmnYwwFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F53CF9C6D
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172703975357.15092.18199683227452656697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0077c116147e25bba35620253648c2bd12f4b6e44847d1b6bf4f11741c60af4e
Date: Sun, 22 Sep 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727039753
