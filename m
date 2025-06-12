Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD55229B2E
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749723594; cv=none; b=u2svxb54r2dn7RpgOCUtvscMiNw3DqHqZoUXyZPIzseAA3dsL+CtARumwQYjAzzNBH4rwqYOry/rLN6CkrdSj8g+KME6Ato7GBN6FXDZRZZjghAQtXnRuimxI0jNWPmH/l4BePidTA93o6FUrbz1O3YFhNslvMovpzNOgRfkwzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749723594; c=relaxed/simple;
	bh=MLF6Y4XYsoX3ng5QbJB3WI8BIGEiem0of6h8Acxs72A=;
	h=To:Subject:From:Message-Id:Date; b=ccu56i16qZUrYrx2p9VEJxmFLJJHGxxXcwO7lIBVwrb3J2YJv1vM4VkujTXACm+CoIb/4pYlJY1GaZiiBA6Kgm8lXoA4//y/i7MqqX5nLCWy4SSCng1WKm1lqJdBGwzbWiVm8pHrgtGMu3m3EFdGslc39JvfM091JlNk4jho4WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJdqNnIQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJdqNnIQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0377C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749723593;
	bh=MLF6Y4XYsoX3ng5QbJB3WI8BIGEiem0of6h8Acxs72A=;
	h=To:Subject:From:Date:From;
	b=VJdqNnIQFzkzB0uWqqC71FBZDCjAVlWDBzQHwo23W2msJrsasSQUigsxL8YY87TQ/
	 +UEOsYntA+VVvX5kbWxxsvenrR5i+3L/lkkvVgJhFofGgTmCUC9+uwJCCwXYT97aC2
	 nAyvk5Me0/98uUT8mzw/0EI4XPD64k2xNcs3VRgTLLq9LBPEdoPISsbwwbQ584ESrF
	 aE00SPmVa22qihbOzL7fSCljP8w3cyrBUN5D5NsYtjr7tAvF39PfqJEUkK3gYnAr9V
	 3JSuH2tv+c7fUo9y9aVDJmTAkZ1hF4XkrFidNPvxtrN/lecyRBFQIN3EKqRg9Shq+x
	 hAGaKtPXbW7Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF9AC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174972359358.29255.11254500253366024481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa04e674a015951c5dddf94062462e3058959480226cff8eea031f9d70fdbec
Date: Thu, 12 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749723593
