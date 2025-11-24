Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1167FE571
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 03:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763953314; cv=none; b=GyxrD4eHyaW5cOMkCRnyZzig6gFkcMTYww83d43/Ah5a7o16Nyk/G8hcyJcXko9xh76Ka7655KJoZpRUkDhqZsqhYb1GCDWhm38rUydmY/EDtraPGoPdtM8RD/dk8/6soSoAd/VXglKgFLe5LY1Meoc8BN5+rENcVofCeB0ql5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763953314; c=relaxed/simple;
	bh=UWFdwLhdie//ElIONbEtSKu+UR0v7oh3nkckiCUqHxo=;
	h=To:Subject:From:Message-Id:Date; b=MB+beWTQZEp5oofUMqgeJK9kXuR56PoYsekCJ6XEMTVl4tYYs/NFoNTtDB6POZAFdQmpgpvx2DoclSn9m2SYrSoxHN78ZS1iecLb1uQTaPIktgUpb3+CEtWo0Rj/NgYyw387ZYppShFXuvpatahae3o6Rice5WkysdDvZDrzXlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UuBzw7Jq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UuBzw7Jq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2785C116B1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 03:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763953313;
	bh=UWFdwLhdie//ElIONbEtSKu+UR0v7oh3nkckiCUqHxo=;
	h=To:Subject:From:Date:From;
	b=UuBzw7JqqWBCFwDs+KBp0IRPpUpIjqNWxoJ48YEndnVrM060dlvEF49/2UBbaBX+s
	 cvnzvzDVTmF+APO936SZ+STvKslVe53LEi3E2MIcuKOkaNdlI5iyoL0KVanl3OfydA
	 yf1oemhOX9dHKrqfKFspU7UoWRSk2wesbVWh3P94qDoqeiLIQvs5IioinPCx9RPTTd
	 POGAAubz0Qdk14vmAkVNV2wdldU5rtZZ6tJVq7fcJNkyeafwd+6N3TblEUtFoidww0
	 GmtZNrBfN2dr4ankiB5Elx/u1tKosrd8TgjyMappk/MDAYQkvCTbn0jT4iiLmtucEv
	 dBbUKBfm1kEXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AF5CFD316
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 03:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176395331358.23772.2507368880577225968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9127d4763f6750c50c09bb991a1fff963ce856957d5981b374311ee0ff13cd21
Date: Mon, 24 Nov 2025 03:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763953313
