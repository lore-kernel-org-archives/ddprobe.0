Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9288138AC69
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 08:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778316454; cv=none; b=lxIm7KUbv/pk0SkMS2O/RodUIAr1yVIiT84vPklwm5vrCpaiGarp6IFUP12Dv6lPWhaIGtH08oIdhb6hVcCRv1p/LdTbpRRMHisIeAJh87pYxAooj6TvtF7ogwGE7N8WcpyOy+spqbTlM34jsQ8Tm0d0+9y9LoX/U0aNaFL3DHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778316454; c=relaxed/simple;
	bh=yugEe8llh0W6bYUpMyLD5Vwa7mt1k9Hxhw65ni1hGvU=;
	h=To:Subject:From:Message-Id:Date; b=S46gGNbzVooqNy1lwazuZCkd6Pkhx8QA2Um41qgq2moL5fnojWHbPGuqoe99zsIjn9B1KsjyJkbP8zDE0e6oM36Gd4EVIK/J53E+YwuPB8eelTGsduCwWpOOW8JJI5lekKBAl3Qt7eNQMBavjKYJiwmwIUc+YgRpJpBztujVHs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAWIExLD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAWIExLD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 314B1C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 08:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778316454;
	bh=yugEe8llh0W6bYUpMyLD5Vwa7mt1k9Hxhw65ni1hGvU=;
	h=To:Subject:From:Date:From;
	b=SAWIExLDHXUCQmjuDGF5SWffvYTQtF2ajv+173G20ffCKrdtJRgQb2qc4QnbcTpTw
	 K7isLQW5SIE7ObeV3pE18lDnSJZI+rBVvHBzFiIddJLHRTak7Q3BYWfaQ4IGPcYU0L
	 YL28kB9MToTTHC4eFXm30CBkuG5EQaTNm9iB0OmAo8BpPUAUxUGHHuvFk6mjiVsYgE
	 w4DiPHXFCfhZD17ZDLKYT/o/grhJ3hFm7AOgc6ZTnt2jltycR0cfH6MrvpJQPWNJJv
	 Oy7vXd13k2p3BQUv7Ng3s6RI5gqfTb0OP6MzcW0fMkzucNvC1eSw/iZ46VPtf9lYSF
	 IUQIlZ63DFxVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED897CD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177831645394.16691.7287228105651642897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd170876c63783351de0ed5749688258461f7edcfe2ecaafe5b4aa0cd1ae69ba
Date: Sat, 09 May 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778316453
