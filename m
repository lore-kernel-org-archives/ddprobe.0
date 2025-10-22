Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE77A302CD5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 23:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761175795; cv=none; b=mflQTMDYvzAR4mrvgNrvS1eRPNgaTlnsHw4/a8h2TIs3/DdaHQ/10tyQyO+hRveGXdMcMn/mWMELdoUdfMOjIVVXBnfcvf4stFWfanzjMCbVGOmgzjfy5Yv6F3ZeDH5a3KWWnz+GdU9GIymJ8muj1Ncvb3QvlAOVY4JJix4ckCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761175795; c=relaxed/simple;
	bh=Si7MNwrCnpVRjs+GJIqUuf0sOCnlk90ukxRKD9J+Bc4=;
	h=To:Subject:From:Message-Id:Date; b=Jbeh5/1xMf9xCVdMRbMgKt0w4lzvfT21P5FOXPgSQ0qQOANqk0x2V5OSIiWaax7JwwLPngUGi7hgZjtktiPrW9gT/x+qX1VSIY7m5cchZms7KKJMlsuNZNrKrX2LYHEg9NEzvPAbB0+EBqOFvqycQpGb87rVKk6Z6l88y0frGZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vppfr9jj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vppfr9jj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC2FAC2BCB5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761175794;
	bh=Si7MNwrCnpVRjs+GJIqUuf0sOCnlk90ukxRKD9J+Bc4=;
	h=To:Subject:From:Date:From;
	b=Vppfr9jjbAe6VKYZzwzwVWaknPrKTnafWagPBw36hBpLt1WcEs/2TI1Y2UA82JxqQ
	 S0OiUEpyX+j3uXBxWT0fkTrngyrqqku08X9EqCdlhthkRXAplpcqN3CXaF7fVSwyua
	 PgrOV7oN6DAtewtxgox10rzp6/plwmVkD9ZqN6sRBNbvsgYmh0mLHJ0LdOXIC9k8em
	 6MGcRMsN5mVeyGe6E0+S+A2hk5I1krk451vhIWayTavu5JvUlxS9bsNqc1fI+mJ4MQ
	 IHS2H1B38aKD7tgtRMHTReLb/lyDJiRvVaO+sdmVTYkwGGgryVt+gtwWFB9Cb68rON
	 P3IuT8bc+bZbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9388DCCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176117579359.22855.15487908974360078328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59d0afb4ff7b24698af44b86c0c246628a55036e08dddacfa8fa4f6a90a7d8ac
Date: Wed, 22 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761175793
