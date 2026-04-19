Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA3C15B0EC
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776611254; cv=none; b=FQKbWN00vK5n1Z6tlqv+ay42FHmfvzfzP2/016PCB/dXnEqh0Y2uBCdzvH1Uc6kkz45zK0f0YhXeP0HP63jxpQWh5wkOmDnQ2EXhbEdrV3fwFY+2F9j1zVfuO9bY+yc0pQcULqrQjTyTSgFjshSfErrxDTLwCHzInY5cVC0EJxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776611254; c=relaxed/simple;
	bh=u5X9Df/BERgQccbE96LG6jMTLL0WFTFqjKtCKaENzbY=;
	h=To:Subject:From:Message-Id:Date; b=Fvxp3ZN2JjHCVvuD7JkUQnktVwA5fUE8c8OSLT3l7DidAsBgQLPN9zPoRrrRHOtsWTzGiqDc6mTkFDt9dC3AuHGWlemhoY456k34g+27gGL+SmdD8e+ExLIGLHne+gXT6D5PvfFHLTP/myYTTkTpwupkRjGqs2eS+udirK989EQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YND6M5m/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YND6M5m/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC27CC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776611253;
	bh=u5X9Df/BERgQccbE96LG6jMTLL0WFTFqjKtCKaENzbY=;
	h=To:Subject:From:Date:From;
	b=YND6M5m/NYJyAaedVEkavLbGtwgixejOBXjnSYZVrd8vv68ggOqrC/I7rQ5mCeO1P
	 ZQQFfBn/mfI/NV15nyyl2ew4/6kmGx5oTtPFskNU7JPoWT4CRg8YePmXlkisVBh3un
	 pmaRUeuGjH/itRxnUKL6uS737IdqVE0ui999rbn+nWE1HqrGXjkVIM6qIs0qHaUtf+
	 s36UuTXfWRp0kVMY1Tz61gZRT8cmtn0rS8w0Nff4DnOfQRtnA8Y8Es4ORSrtWBTPPI
	 KvEU1AhNOzO+ItOP5HDXovCgm9q0og7+9HWdGP4MMNL6LEns8pJnWXEKqWh+0dlY82
	 CWgD3bFzjgevw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D8DEA719F
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177661125368.6408.13495720005704585416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a1bc7bf2ebac1bdd9abf72c97c5e0d59313b1e6df690454b07767ad93c2bbeb
Date: Sun, 19 Apr 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776611253
