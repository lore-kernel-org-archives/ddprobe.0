Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B62A298CA6
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761221394; cv=none; b=nrt537uftWESQhOJ1JAYIkgTeiuCP9JCz2sUUITrDC1uf7WeAkQLM0dVUT/VJRExlkPHyoZ5YNdl8mT97MeDxQwJ3qtguDpJBJ8RPZ4PBMQiB5CMFB4xYnBBajEzCwRbO3T8NjlCecf7z7LskMenF9s1G+Ljo10VqsjK69MWNsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761221394; c=relaxed/simple;
	bh=4DnuRNM8POrgy3JgA76qZ3V60fpaxS2qL62JcwxWWjg=;
	h=To:Subject:From:Message-Id:Date; b=Ga8bVcSf7uIvkYSNZ/YemUSoJWqnuGaa+TMPZRtjdRL0r6dIgi5AV+rBQ02NOnhcv2rqjM+f6RptPeOft84mqMuaUSIDPv7GKbhiScYKISctcxg8hp+MEj0HiFtjcFXAGauFV8gthb41Lhnwhi6p8ov6cbhNM+G+DpgnPEmLlYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5IhwbTF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5IhwbTF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE747C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761221393;
	bh=4DnuRNM8POrgy3JgA76qZ3V60fpaxS2qL62JcwxWWjg=;
	h=To:Subject:From:Date:From;
	b=l5IhwbTF0tblKgl4cwdg3bNFqAbN/iWsOLArIkJwFxtAS5oKV+Ae0wHe2qXso/MIe
	 U71y70ZFIADLTJ0JwB0PRItD/ejA7pgmwgP9TUPWqBaWaQj6c7luN1SSch/k8wnIrA
	 e3dtIADD3ps2cEJPeLMV0wcx7x2KwPwnDKHqUEe7PggyDm8j/oxCTNagWKIBoIa0lw
	 Pf7ycUqMr+BDGYr5CkXUwt+gpE0LNEXkiEqWiLTnHjk1a1bgLUG7i4E+CgnMz2/uRT
	 cZXU+LKGNon9Pus1N0PXxbd5ODVGIH0eurrYi+pj/gBs7COHOY/qJdH27sR6LvEyiU
	 +kdyLgkDPZoag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FEBCCD1BE
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176122139361.28767.13621018612473140157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf2b08720a73d060ea0b150366baba6c90f64addfc6061009c209e77218df1d3
Date: Thu, 23 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761221393
