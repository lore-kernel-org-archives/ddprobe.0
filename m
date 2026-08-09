Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C951282F3A
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786284634; cv=none; b=WtCsSEfMErVs3uHVSQKRj/aok8U0tzH/dqxyO4HJ7wqEX5B7nJ61dSu1EI+3Mu7CbTfuru+QBdmOmjtcy09Xzj67yY3Oy0zsz7odUz2dZWA8daKS5h2v+if9Uj97w+zMB8mihTLdn1jxdl9HHGbiJMjD8XovQjiPwDEEXpgEVRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786284634; c=relaxed/simple;
	bh=T18g4oEppR71KM5FeAFn3HRe+aKnrJztVbjDRAHd4Co=;
	h=To:Subject:From:Message-Id:Date; b=qkPZK092XSLblda/2Lmey6z4epmuIhFRM3Pl9KwdJVUZUth9SZQXmwQIVgDWVYwRUGvpF6xYLdUazNl/u8pDjbOGnDj/eTh4swJzRh+yv+eZOp8Cggm4tj1IxxEk6Ev3nSfionR6qwulWyhLhjSqnNAZ6zQEwFRDfGgbh+yeal0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYZWR6HT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYZWR6HT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE097C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786284633;
	bh=T18g4oEppR71KM5FeAFn3HRe+aKnrJztVbjDRAHd4Co=;
	h=To:Subject:From:Date:From;
	b=MYZWR6HTzaMvUq16TnPvjs7ldEIG+3bb4HkQJZaTNIDILCMLPDTXcl6Q2tOzEObT5
	 Iu3aik3Hi4nZWHSUltrKmOVc8uWS4md1EusPMwnb0dc+7wOMy/1rHONDyOXFj2AHkW
	 g6f5fTNIYPekx+sNwlV9O7LPfJsMsm/ok4pZ9u/aSe0mXPhgpKDhDhUhFGx36mmRsB
	 yFJpEe8CLH6btbntWOv7aZghxtI+O7xB5AcOXd0jMdQIO7P8OKpslXqi50N0Um35Kj
	 BhW3UkBAi1zS9xF98liAHo+ykyl3tRKtDDGQcFESs7Y6kptBzNzvSSWPGDtqQWaB4Z
	 a5ww8kDUv/KJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAACCC5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178628463368.11028.12197410323789965046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df9c10db37c85d7456be4cdf612939fa50b41aaec3c8bc01f06d55e2beafc77c
Date: Sun, 09 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786284633
