Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1A93D6D
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753007994; cv=none; b=A+FNc93jxorSiVHinHkH0Nz4k2aYDeDzvxQaXlF8pTv7ykMTkAWKbHbf1s8yOw4V5Fftxlf6cCwW0Y0YNqAoZKxroef6/i7abqi0B5oEhqiV/EFFc+DK9kPfCvO6zee3NiOEjk5xNQdF0LpqvVmQ4DCwgt/2lYfAyWCv1Xcjaew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753007994; c=relaxed/simple;
	bh=DFe2JmlkVhpf0eXKJIQE0wYmg4J/mK6TO9s0kqAE4/M=;
	h=To:Subject:From:Message-Id:Date; b=dsMC4sXuAqQBXSohtIRuiVukD3eEYbZjqUvKCh7M0SfrJBmFtXTt5KjOWuccmVPhhw8ZOYxGPBOjdn31prT5DM5rRfA+ncxmZWQaoW3t75RMOuIE9txQNs8tkJiD5SHGuK0TLNYsro55q3h4VA0swotWHAxrZJDB56/MfesD8EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6dtVWW8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6dtVWW8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C7BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753007993;
	bh=DFe2JmlkVhpf0eXKJIQE0wYmg4J/mK6TO9s0kqAE4/M=;
	h=To:Subject:From:Date:From;
	b=B6dtVWW8oi5Hm6cZ0A0+/K6asuzr9+DznSfCyESl0qQBQP3OSdOdKvC45q410zvi+
	 dJ+HF16UiMWQuRbfJ8RPMhaRdryRR/GG+b2bYalSbsmFJpc9pWCjf5y3payopWb+Wn
	 4+DzZs6O5o1W4YWNxm/hh+hgDoAG3Oo9+iSxOT69LYFZ394jQDd3urhsP3KqeUEWBl
	 f0noXS8hRYoROTzxPyrtatWwfr47YLtn/UER+463tIu00QiWMOp7qGM1TpHx7g0/A8
	 EDtL+v5DKF6xgv+UKSHKSrzDVEoDDu3+Y1BjBVdEtKhrwGetN3+0ePjN7ecmK9gFgx
	 x0MTXath9cfNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930D6C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175300799358.11407.3419599037704458821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68dc81ef1ab88a6de9c0d1443e2f88a703ea9937b1f5d60ab44d540e493dc782
Date: Sun, 20 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753007993
