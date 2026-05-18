Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9EC349B16
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 04:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779078034; cv=none; b=Lx0SXLLIC8yJQ3sEZU2BWOG7gLU6Q3jzfkGFXtSuYqqDDRaR+hX7+OcZQ/DErcE1+ImlvmPbNSpZ1jITLtg28I58cw6ZXo/xxN9KKpRRTP6wwAELcJ+ekQzx+9iVYW3zU0CBsYDw0Nwkv6sozZ1kTLhfVBZm7hYRxejBdB0OM00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779078034; c=relaxed/simple;
	bh=5K0Ec1VusWzel2MwCtxvXfJM83wHQ84kCgYWpEIVdUI=;
	h=To:Subject:From:Message-Id:Date; b=DXRj46RTiJDi1CzsVYDNEH8yIvg3xXScptUZgvJgeF7Kqj4FtuFBwjOE5vhk1jkckBu7+PMe8DAuxO0psvBQvq7S7TAOcwmDZtTKHkL/zQrX4V/j/+0medn+KLgkn6j+FWj+DffPa6l6JJFWa+Ncp8xXfrnbKLyRqPCoJtbDq6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTu5ezQl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTu5ezQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E03C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779078033;
	bh=5K0Ec1VusWzel2MwCtxvXfJM83wHQ84kCgYWpEIVdUI=;
	h=To:Subject:From:Date:From;
	b=kTu5ezQlbwWIORc9iJmFLjLjEqf1i0SKShJ0J6PextYzs+rjNu3UmQiLCm/Fe3nAK
	 xiUVCsFimRiwN4c1EdLnFh/2wMw2hvUxPimsx8eJZCTVNBjic0Xvc7ZgIH+Svcy0oT
	 MJw0b275/j7TuR+CQeayfc+8FbJP/a169F3pSDBtOD1R0aT/azy1ygoXSRC1Tjy0/8
	 Sko8nRMUA2T+GcgQFFOZR79URddra4CrFjxPs3BC3i9gI1lEAu+wH6Rpmk9jxirPMK
	 GA4l810X5dfz6JuG727Lp3ZjhEBY0w+Z3WPfFq4DJk9LNAV8b/w3EM3dlL1/v/4nmZ
	 Har+qUmI5sByg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01CDCD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177907803370.807.7440102298131075253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2393ede663a9b1cf30cb9dc941d002d41026a243a8d513bf538ee62f20f12d2
Date: Mon, 18 May 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779078033
