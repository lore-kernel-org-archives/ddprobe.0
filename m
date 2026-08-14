Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F4220E334
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786750234; cv=none; b=r3gIl7j1rQ1+D4CqN+pjMgagFGrRgcAyNvL94tkAVDz+IsPMeQF4rpMdfSmDWn8e0dpNben5/f1vxIaDoc7ZdalFHkK50NLbj64A2vJChvZgbTPsYWsfxCP6WFTjEJqQwTv86m1faV/i0zHO0FuipPBxa4YqzOElQDkzKTA04kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786750234; c=relaxed/simple;
	bh=91g03P0N+T9525Zfc53Zk3XGJSQPxF5ZaYJCQdZQAJw=;
	h=To:Subject:From:Message-Id:Date; b=fRpBOuMne/qruajNRTkP6CfUDslIOkA0PkHywZm94yCCJOSdwxmJp4//HDI0AXKPqL+xtejFqCbFk9rRvT3W33ciW5JYj376tJjWy7fRrZW3dhrPSqIzTYiIGdDWmi4bu4DJdXToFZHZjicxQtzSbnVFsvG5V4ufYQw3RGehP/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/GGwBPp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/GGwBPp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF48BC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786750233;
	bh=91g03P0N+T9525Zfc53Zk3XGJSQPxF5ZaYJCQdZQAJw=;
	h=To:Subject:From:Date:From;
	b=m/GGwBPpkPaX7MNmPH9HDewSXESIKs6JymACwGfjzFwbErSvWPQ1oDNSAtHvriwu7
	 2UNIdGdVn2S9WGawrms//lMQZD/vtc7ohCZeoEphmX8Xw27ZTgLLTNz7DCQB4j7hrQ
	 CuA59Vea975LzVzx7dr6CDSNk6+0xr3qom+vrDvLIcLVFpvCnBpgBCrY7XTsuQCNFK
	 iFWi/eE9PKy+MoGv13Xr2jnVVQGlAg3fRETvXbgPmyqXLzZpJbW3CKVf6D5zIiHRDo
	 pmPqLJvjQj0e7u1TitU3j8WJZPsuCb9qbdWmxNE6RWXkQFDjUoIZfv5RMk5j5QYLyW
	 Wufb637x82pZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1E6C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178675023369.13845.635940775735875840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7c9f67b28346c3c461f29e1cb79ff30e4d2f8878352913ad180f67d314f549c
Date: Fri, 14 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786750233
