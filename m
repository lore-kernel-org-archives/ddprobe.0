Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4172B374E66
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 13:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780319674; cv=none; b=RlRbDOUHARS4JG0jZvqjHHRGtBTxvdlFzO1HVU/7JRPgOBDnB3FbhUesVfveBte0q4pEOn15L9GV14B+CLuMEdfWz1CQ8fd2I0PmjdmJr7NgVwombcCkXLxZM2sMAuabRDttrK/KpDZX1/+18GUtEfbKSgt39PuEV2LmKfaP5z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780319674; c=relaxed/simple;
	bh=qaRAdjvk+7oCwejQre7MTMcKJRNg/8fGi1MF5Za1N3s=;
	h=To:Subject:From:Message-Id:Date; b=CUnrnqWMzlaNSb+oO0dvBRGLqiK34BtMFos+ezzC3fZJDxwcS7cc2mN5MV2NZqPvGuMyUPHefxj8fF1gQE1PT54nMQOerixxJHkRxqDRkZK2r4ceKcw0a6DZ3/vrfauAtIfL0By92wp0+84lWzv1sn25MZCJymV+r4D1qJf7txY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T63nWdAL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T63nWdAL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C23C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 13:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780319673;
	bh=qaRAdjvk+7oCwejQre7MTMcKJRNg/8fGi1MF5Za1N3s=;
	h=To:Subject:From:Date:From;
	b=T63nWdALuHbnIbEAbC0LMaC/VtHENB04YVYBzSwe6upg2xReRgztCg3Et5/JWei/5
	 fD5USc+Lc8Va+OE18IL+JiUrknzbquxo2ZS82e+oEO0vTx9rBzI5/SxO2CD/mo/B+7
	 icx7VT83YVNMzwJFEaq/463iKsR9EKqHNUbX1z7VvhACDynPvSGox02k+G9RxjqtLf
	 7G7FJtPlrMKWnanYQmtLgWosoA78FiF3Ikgv/xX6pNygjS+MNPHbz8UQGMQik2gZDW
	 b0DMwqPcYeSMUccjKdJInMBo6YHdMyUVLLg9lH6KkuOfs6nZkfuiIZg6uBXsVHs+dJ
	 NN9snxHgBWLzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA864CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 13:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178031967369.26377.11623193054789004583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2c58418d350670e34f3e8c674fcb84e8d0cc5386e57a0362df2119aab913c33
Date: Mon, 01 Jun 2026 13:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780319673
