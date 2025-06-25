Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7DD1C2DB2
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750829394; cv=none; b=rMvKtfEBy0BRowr2Ky+RxUX3ZDlzMxMA97hYt10d4DxCxfIyEGWX5GY2PQEbXAwAj+GX4yQt5zQ3HmwnfN+/4A1KIZaz1Ar6w59ZLEdumW6cDsS8kv2hx2mYrICr8TRnTfO262MfdOEPWWH4ds2vqxYY3IKiIncK/5QAYysU8lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750829394; c=relaxed/simple;
	bh=bIfq/1XRWELpnwqw5/Z68GNJiT1tHEi98DTmgw9/Gr4=;
	h=To:Subject:From:Message-Id:Date; b=c3DANfgTq3Q7Z+nY5lwJwXvjPahr6z3nduTGLjEvh/NuEELIduNM/tzPbPQaqJ1ryMcOLvUP8R+cPOZEwbmO5SNmPSLeyCDqLptrM3rhMSvvJqqeHs3gQ+PsihRqYWytvsqjJhZZaBX38zhOJcfNdGoMgShd5ISf4hcEJKa5b1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGzn9Okw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGzn9Okw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3710C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750829393;
	bh=bIfq/1XRWELpnwqw5/Z68GNJiT1tHEi98DTmgw9/Gr4=;
	h=To:Subject:From:Date:From;
	b=nGzn9OkwiuN1Mi5IHv4zIs/P9pVojlVbzVDZHRBcJO9dTAXK1MCYSGFCeqVAkUS7Z
	 r2wrykC0vwKFyEQFbmbwJSwYhfeJYFjLZ2bYVpfwlgbgiYR+KrrA29ZIlHKi7eTQEF
	 4mM39pI3wWEgZF0wdqk7k4BnQ1NM3WdJVI9jc4o4QBuFzBXrU9ixDakFZkY338Dm7l
	 DO21azuXobrPj+GKAvqpnP4wTN7YH65g/7ZubaZPL4Yk6SeIJQ12r84bAqF8oUlI8G
	 qkXXaUscP8xbRD2+YXp/2QR5rYYgTw16GskKcVZCA7+fMrdPvVOU82eJDalBaDxfcu
	 MgEl4U/8zb5BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F77C7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175082939357.31140.15638343324237146240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8b7896323a92f21643fb31580936e8f96e16f414dbf6023355f68cf759ff97b
Date: Wed, 25 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750829393
