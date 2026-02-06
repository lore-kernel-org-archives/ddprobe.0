Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1178B22068A
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770342834; cv=none; b=svMwlixOwkrW+TiYH3Yxpk/rDvFBKHfSWrDmFa2W8i8cpAP1tyL9JOUSi55QQmBjlUKfhmS7OTtM26FueUjUqlLbN1judbmd4TdiAwmX63nVUHOQaJiA0UHO9yOCi1QzCqjbokVsmLm3lQvZXJm3ic4W0RAv7SxaJf6xNorZOE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770342834; c=relaxed/simple;
	bh=UuAVmcSi3CroPiydkK070MUVL3s+Y7EYotC/i8HI77c=;
	h=To:Subject:From:Message-Id:Date; b=Nmw8kJONmTihT4r5Xyr2B5ZbYOJUlaNNZQ+cZ9qLVUdBOKjwLVuQTAY5wffbSp48BfJKZig2a8V3W1CoSIkjn9S5cxx+8tqu5B7G8jtXVyBiq1493HXN23tAAWlY3/KU42rqF9UqwhWfo0tBBSNw7piuQxLdWJuKKISypbFdPrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gq7AtsaF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gq7AtsaF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AE9C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770342833;
	bh=UuAVmcSi3CroPiydkK070MUVL3s+Y7EYotC/i8HI77c=;
	h=To:Subject:From:Date:From;
	b=Gq7AtsaFNITXqlgB12C6LJAJ3L1dNx5Cw9ec3WbjdcwSieAwU4WPzTlazLJXD5lmT
	 7sP1IKD4s23JUOSGQoCqtbafVLxFd0j5asqJSKUaVAkWpNiPpB0D/QInhPg3iM2O48
	 BMyIBFa9/F3gtx1OxVbW+fxJNUfRYrPasapfYvpaGoXh6SXA7K7n0NxjllxtoObYHs
	 Qx1v+aER1Q8QTDCH+A+rxlnypi3zufGEUzDOkU7/flSAwiUbSyhTn18NGzKtY+c5j0
	 6vXpIG0UzJbTGhhGINzMjirh3RK4vLNymLlcLIrtYsdLzkqbcKiwUrHEV9eOdMYX6i
	 4tiOhAvfVtOxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3FEECD9B5
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177034283363.10421.15697179017546400973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e173a587469bdb6bb1512dca56e13540a0dec1593ee04962c4dcd7b11196688e
Date: Fri, 06 Feb 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770342833
