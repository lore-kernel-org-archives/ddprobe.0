Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E92345CCE
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789227634; cv=none; b=rIY6mzhIQNxs0p0Tw7MBiAErX6g/zLndHVfropW+z/O/TRqGqJkcLNsdc72jsjhWTCeWrq3qSIG1fw3C232AeEb4GyV2D8IEL7Me8ZXhWgW6y5Q/IUz3ozzi3/fOnitiC5X5H88evEJmVPxcHzJhOrmlASTV73F4jCNGSht4aws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789227634; c=relaxed/simple;
	bh=qTyZYp8uwgkaC/z1vMDfPVvqo7OXE7rfe0dEEg90lCc=;
	h=To:Subject:From:Message-Id:Date; b=FCgTFWU28RPPKLkVnuL+hcjpl4AUlAd/+nScGZSyIIiIJchiihwbt8ZTQXCjtYTiKPLJP8LlVIkSFrfPxWKfztPriESeqsP1zlCPT72AdI9iZZhi6KTGQFIHG4b3BH2j0ynpdnkoMl0G/VFRG3WGheYNJ7nEggE+jz7IYPvvbTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLStw2V3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLStw2V3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D142EC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789227633;
	bh=qTyZYp8uwgkaC/z1vMDfPVvqo7OXE7rfe0dEEg90lCc=;
	h=To:Subject:From:Date:From;
	b=YLStw2V3oxXKCBAvpVEjmdJJQvQN3734rc/LekF/JpsX086JwbbX1RowNLrlbOr4n
	 Aw0iQPJifb0pnXYU7IMFjQt1cj88ipf3t1XuaTMjLexii3a1MG5QuryHFBCnYxF0q3
	 zrSAUthXH1aHIf5cqxU3amuz7RQlrkvdeJDSAhzId6eXKMP2zLKfd3+p3jY00GlA3Z
	 D13iHnihI+EDdkFtLTVlDbu5z5Nw7Vz6acwcgaMxZ2t5sqr4OCc4IHJhycJ1/vgjTp
	 hdtHgwHPam0kAsaHVoYfv8qDe0kavof7YO8tmlUAkzkbShovXj0OlupqyMvr/+h8Ju
	 UKd0OuXJmG6DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC0DC88E59
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178922763368.19853.5623128423893713811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01acfc0bba18fe6505aabaf0ea7cc75e43bae070d29aaeb372c427f2130c1dc4
Date: Sat, 12 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789227633
