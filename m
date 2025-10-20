Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAAE248F7C
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760957394; cv=none; b=VwCwxAIM4nPaXNA+hhxxrgdp0DqJ8O/D4HkC1y4Z17dXV0ePeTrOwwVOYQFVI6rAlNpB2XPpq6FGYMWMTRIcvP5zwMXXnGJ8N6GHQfiAyZ3fFhMAZaISXwEDpBKslsWqW4SforqqEN2WeuW81JqrJ/sTqOyppwldWPIryywE5WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760957394; c=relaxed/simple;
	bh=LQklQ20qeDgqtXRrKtOmvJ6ufanMI21Ilat/NIvQoGE=;
	h=To:Subject:From:Message-Id:Date; b=r2ojpZWWDc1LCprjXM00Au1o30cZQgMuAenKqvZuNWIf5AT8rmRrmtGcsF2zQ6c4hOQGi9/DeYa592ekM/kU05qwGO18ONOiAZTdD2E7FoOWsrO72ApWIWcMZ0yDPzSlnaFwirH8EF9kU0+oa6gpQgsmGEdaOSd+hk/N4TZP1Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5Nb6mvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5Nb6mvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45C9C113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760957393;
	bh=LQklQ20qeDgqtXRrKtOmvJ6ufanMI21Ilat/NIvQoGE=;
	h=To:Subject:From:Date:From;
	b=u5Nb6mvZHcqrZzZHCjF/0HTt5Z5bTDGyQAs3z1wPsbbfEt4xgj7JAKMimwYdU523f
	 gJmuf2efXw5lHZPNNcDh5lhGtoNE6hcbtuCqBqT6LhRbagLnlhMU58wGNEfsDvDZmL
	 WDyxS1nJKjO15xN6Lk6psol8jJgEbkGBol8kA3UOJ17PQXVgTAQGww4iO/4bIXNd+H
	 AOmnQwN0ya9AMeuLrJXzydRkfiqrH4Nu4RlIWSQsCiblZqAMHMiXX4/YV4HqxYrmwJ
	 v6UTfi8iy110CKGQ1YJUcZSlH1boPFpRjk4RF0HmbeKixyR48Gfg4fs9sN8Q5aSy/t
	 WiollcX5kXkjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9515ECCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176095739360.30366.7573717443499514373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a3f3eea8b97a364354cfa66c8b0c2cc5bb5ccfea84c592ed1454747a722d89e
Date: Mon, 20 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760957393
