Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6214E171A5
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 19:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718132903; cv=none; b=Dw8kwAjZ066nZwD+P67bsbcWL8BTG91M2jYSs+qzrv8BkWAiVn/3WdvvIWgJEdQT62OLbWYlJG//k0SFN75JBSq09eppcg+mmFqsh/0zib5GVeGrzhc1s41YeFEKVryy+3sNh+UwWI1+grFOvAoXvzsnaAaxzyRudzojrw6SsNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718132903; c=relaxed/simple;
	bh=2gslZjxNORUFWNuOtkGqBNu1PP75e5FrJJqZ2hBcjKY=;
	h=To:Subject:From:Message-Id:Date; b=Lm7IljqQkfCrrF1+AuQOjS1xltAAwcrTyHPSHEjUXeu1YVBiKl9TjcMfo5AnyDcHglAo1fot8BRCFPIRGEovLEAPZ1vr98x0pDRRwKeUAYk6ZjNEZkDsWEg+ETfbKLffdX3r1UnNh2ZzjJZgCvvSsBPbhDwSbV9LZ/b833N0ppg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQOtcafN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQOtcafN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC59CC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 19:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718132902;
	bh=2gslZjxNORUFWNuOtkGqBNu1PP75e5FrJJqZ2hBcjKY=;
	h=To:Subject:From:Date:From;
	b=fQOtcafNG0VUMQheFNYHKdbBmlXR7dXLrHhorSLSoHUF0yxSfnP6/uMyiritt2usL
	 Q/+A3KRR/5nbSkSMBi68JyOUy/KpM4MaNTSvDAxyWBbrAGY3r2xN6eAuARP33/DyOK
	 rdrszo1a5lRYjdovpudX+++pEWmxGBo455H570jCjQsYGGOFn8Zoypg0fTfZu7tTeg
	 dsB2dentSO692tljF5sJ3jFzmWmYeUF4w7A8jpr4DnMAlaImnoPe2MfEUk+nC6EGop
	 MoSfZI1siRBgETWFzoWzME1Abo+OVKWMFc3JVdiYAxXkNBESh5Cuz7Vqub57PKwsU1
	 TL/SUcO3XoBzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C53BFC27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 19:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171813290277.1506.4424287315204720696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7643dd16932616f8e6a3292d1febd696e1688b925165271cc883ad6975aaa67f
Date: Tue, 11 Jun 2024 19:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718132902
