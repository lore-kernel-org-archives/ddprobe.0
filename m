Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95C89344021
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785387034; cv=none; b=qLMPuVXW5TFcJnpv1YcBE82wDLGfip/SPmJTwN9G+y8IFRiLSubILfssQ3AbbuKIXFGsAVzUfDeIQqYDxlw4xaP61V5WnrCToQimpvjeosyxNTrxWijViPK15q2BoJ8ethp2B1eM3HaprVhuVnG5y+YdnDzs/KDaJMAjHfTt9Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785387034; c=relaxed/simple;
	bh=NAMQ5GhKNGC9xbngDT9aabaJk6W4vK/u55zs/9bxy6M=;
	h=To:Subject:From:Message-Id:Date; b=AYMKB1Vkvf4eT80uthFr8rOYR1q6eNBrv2t2j6fTfGlSIPvjbnAK3EwqKVV+AS+VCDCErZljDyYEcu+SsfA4aTd3cZuzdmtAumDm6WdJeAUzbGsgqExoh8K8oKPOSxYOuOjbqW41WkCa9tLT6NXxBAJvzN6IHgreLJQ+rijogrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qir+eyNN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qir+eyNN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2E534C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 04:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785387034;
	bh=NAMQ5GhKNGC9xbngDT9aabaJk6W4vK/u55zs/9bxy6M=;
	h=To:Subject:From:Date:From;
	b=Qir+eyNNKQYu/wTifRxwpvEEypKRWefEDBnjQiRwb3GD/Guuqp6ceXU6PhK+n9ZP0
	 N15vUCYdRs6+IOSkHbHy2pLIGv0ieZDfcL2qv0EPa73bwL7G8BeqN+xjm7osFZLm+X
	 hf0FypWD3oVSA8WNIZH/WO2fS1gPTP9YB7oXEuw/zcu0o7fewiqxhCICtZlIOziuDr
	 NZ3q1Q60XW/e50MQl9Qyeti9o6R90HE59NaAIIfUHUefA9gQRILFsqR/9QRDTO+WgQ
	 aRhaSyDcOo1Hb+izfDLsvh1TOOlY8vC8tLff8WLJla4yxFpvASp7le2GmIxgyYGI5Y
	 A8sgu18/c7Ngw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F181CC54FD2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178538703386.10824.17121896462676408025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fb0b4675da3f841ae88350ca78d3f511c266de14b4807e99872a37a401d52e3
Date: Thu, 30 Jul 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785387033
