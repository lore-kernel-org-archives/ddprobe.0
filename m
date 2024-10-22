Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18944811F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 08:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729586755; cv=none; b=sWGdrnLGttM+Oj44HIiW1J2nK1QifrJOVsa5mAHnJAjjcAStz22P4C5QpbQTCNAn/auZvP7WrMS/nOy1rvWw2rxCecbyi4vesZVmiodXtGBvCKbZzFMjhILxsU4VLU+4AesF54N+AC8PvPfSlRcuemUXD7xeMUi1vx55FdXjXY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729586755; c=relaxed/simple;
	bh=enbnK9+xgvkvaMg3hSQ0yRfGrO0k6/tnI1RKyORYaSo=;
	h=To:Subject:From:Message-Id:Date; b=Dawa2we4js5spAp4q9R3QbeOhJxQwSFtXEW20wwaROUEmpbZe/VrY06IsROY/bGfvWjj2a3KnFfb2smZ5c80TJ1Ah1NjostMl0gedbf/7IsPD4NDeBpyTEvQepyWKTHkR3wyitsMdP8DOcOzvryumCo9THgX2BxamEXmhcucrdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0qp7j58; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0qp7j58"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA232C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729586754;
	bh=enbnK9+xgvkvaMg3hSQ0yRfGrO0k6/tnI1RKyORYaSo=;
	h=To:Subject:From:Date:From;
	b=E0qp7j58Vg4gT8gbNnEWLAF9vZ/eKr1/6lkAPu0RP6NlS7NRlfdvdn/1YGMgIriiU
	 KbbmUqrHnSihLxsyr3CFui2da5BXGi7CmGxhvxtfxkk8Hxu1LHUSpqGiPl7Wy/MXIu
	 w2Wn3N8VzFekENjgW2rcV2WKnrJbT/qIIv1TW0UlbJkbZ84GQpMbJS0v7pYuC/d8ix
	 DyizzHILAico5piQRDLmjozGirIYALhSADfg7ZvAi9pjdX5js4VVMdyWUMw0z0UrB4
	 Axbt9MM1yRKA44qCVMMGVBdCx1L+sBNZq188hCLb+HANGGwhyLtaB5EvqTR0ow29uY
	 0Fs6fcKFvYnoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9966AD1CDBD
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172958675360.6366.11667224596132389905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6ae5cf1c8d418114dc1f9ce633287625b9e0b7af74af48a3735ec8310078475
Date: Tue, 22 Oct 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729586753
