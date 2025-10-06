Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0C3230BD5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759747194; cv=none; b=rjXqE3ryPP+xJNiV77hNA/Pj2lPVL1I/I0bxVisPt3dVvjz9nV5pwquH06sF7eU3GjcDY08YQS7YGn9dK78ohWbt/CWSDUAr7QDA/ml55W5LwsXVHzvTY2NDdwrRwVgM4496O//5DXpbaRw+aoZGubkVR1TojQOiV9iGVRHZRgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759747194; c=relaxed/simple;
	bh=FbbF9odeVoxMRPaPf1ip8qQt80Mm+niEVWUT+LFIEg4=;
	h=To:Subject:From:Message-Id:Date; b=aQmOerUF43pspjspeKSJMXmGZ+6XalfVC8uzK5LtekAgDKVRBTjt1Nzn/dXmvKY8Er9sxY9cm/1SYpz+/gN1ybpRY7L17hhrIzGoUX3s72R+hA7G6CiKM6wv3r56cJwyWdJG3F12SR07LlmOUWUzVKRricdcuyfkYrg/u5HVwTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCq9AQ/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCq9AQ/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1783C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759747193;
	bh=FbbF9odeVoxMRPaPf1ip8qQt80Mm+niEVWUT+LFIEg4=;
	h=To:Subject:From:Date:From;
	b=fCq9AQ/GpCECSaW6fMO47Yig5WqYCgVycQMMDjbaiNtDQqx07RBL+R6ae+EI9S+vo
	 b3jE1I8ICG4xAYYo7PpUzilrJOzGuvKHiNyoaQEHIV0PoKPSzRDQawov/crxjRXmeZ
	 2dPTHkW6pTFr5TaIkfzWHR7eez5xX+L7IyTcjhjGkQjehA+WNrOKy0NWm4+YibS6z2
	 3/vDMJFU80P8rg2qlNUobjl6eC94b/bQA3oCuJIig1AIRHW8rDp/fgWHpT7N50ElJl
	 KY4GhWVC2Yh8HzrBs7l//xIhM4chBAmvw3Qp7Ir0uk3rC5XWnmvXdKvP1jIgBQmnU1
	 z6AeBMBEoqKMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC6ECCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175974719358.29379.6261605826148307903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fca3a44163e79437ad94413c64560412d69b0a41d188ed3509d26d020684ff5
Date: Mon, 06 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759747193
