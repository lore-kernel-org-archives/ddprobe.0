Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA5D25EF90
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751402995; cv=none; b=k6Dvlbe9mxCX6J+sSFPwpGbZTdXHiJIJCTs5BZL7fzIzFF2f5lR5A4ZKYIn0nR/X/RFNCyVGotQJzjr0HVZiM28uI1zJDxCG0iYyMfSqsduMdNI7PP1CwdwNuYjgDGxJvn+aXDoMjdMGcrHQ4pv0sIK75nuY2fWTO/WTI0ko0n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751402995; c=relaxed/simple;
	bh=SYWoZBosvz0IOEBoq6dm2b8j+m0HbVjdPZBifnM1O2o=;
	h=To:Subject:From:Message-Id:Date; b=bHIckTSyzHaRu3mjiJt1rl3oygRdKGfy94DkADtL6bRHxrL3LwQ25pZxhiAP1Djl1x1rjrZIGSU351sSDK0nONYf2Gj9L9X+SEqep4HL50l0YxhkXt0XPydqiBVuuhHc1UsDBtwQhk/UQVfGHnY0u5NdhW3+ndPfPPHd3B7WgXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfkXbUHq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfkXbUHq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDBDC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751402993;
	bh=SYWoZBosvz0IOEBoq6dm2b8j+m0HbVjdPZBifnM1O2o=;
	h=To:Subject:From:Date:From;
	b=dfkXbUHqpNZH8hyug2iG2k/P5jN3JOqGmO+l5BONhaDDjpLPk4Duy3TM7XvsFVqVy
	 fnqT3g85RqpeuQa07Wfm7qgInlLm+I9pot1DO4ceImR9gzSrdpMDg7YRtou9DeQO31
	 8mInNCpSe7TGDPcQiA0CKeU6LTP0xi3rcbdxqi/BlqS8tuYkR52g6aqlsTe1YrTnOM
	 rzit7WI98+WUU88JFoMMahux/orxLNPwqmvEbCwTXKfw8IXIShtRMOaTFRwRP/GAqM
	 UhpBcmui8M42PDAa6qIHIrBFJ5iUazL6BRexwaiQWAxo3bj7lgFI/rAzsMsP0/FdXG
	 aQVPXZTzNGC9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECC7C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175140299357.16255.13714304406706005762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad91a5a5b97122d006b5bbf9702d348a660ffb308630450eb0a658f2287b379
Date: Tue, 01 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751402993
