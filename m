Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E7514A4F0
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777418254; cv=none; b=nmDIroBKYV9oOvT0G4g/9NwS9U1eAXnia6AeGTSgvfSO3D8d47Y1e+LjkrC7zjncy6QwwPpL85hz1wsS9KA5zEm7oosBi4bAPS4GBY04RZ5/VwUXejV8+PnWO2g/hA7ynBEBfVQMk1AmZk1ddIhLy8FouMIpECW0OJ17LaB/8WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777418254; c=relaxed/simple;
	bh=lCEZju8JdDOndC3BJiwgTzYg/qEpM1ei4pA2zbjCDP8=;
	h=To:Subject:From:Message-Id:Date; b=oZ6lmIDYav4Sp1y5S3iHglqoCytm7ADKya+Vm7lUFLXRT/GdAzav712X+GQn7HdRpugGr2mnHGdzeDKxJyPbqYr9qn1wtQLrJ677a+Wvt/mBTwpGck3w39djFCjrtZKBiLpJKo6+gWPSM/AEf++5fKgrYHjiiGe4f+25apo+CqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDR2lFyk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDR2lFyk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D18C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777418253;
	bh=lCEZju8JdDOndC3BJiwgTzYg/qEpM1ei4pA2zbjCDP8=;
	h=To:Subject:From:Date:From;
	b=fDR2lFykVbjtffQp13E91oKKIw/87rP03XW/KKM5H+nHaLNrqh0tvt12RlzLQ3Nlq
	 gJBkti5fBRcfrQk+BFqjIWVGQskVtEiyt8nFErQEgoeup13SpP9dTsKs/csELsYrlS
	 /q61KrOlV05bc94OqGmO6EMkllkyz0diI9uRZW6k14rOT0i3McRhzvVs4lg0wvLjBK
	 mp6zWg+ZV7kLBLzvAhJB9zLvxzVojq0VSZ9cRxgg0SHlRWICbV5AOkDmm2hRKPCPEo
	 8ZRq5f60HCH/ygJRswFrqZuvLHSytOQgIY9TlStpOT9j5W++y++fSo3CScDGWS45UB
	 2An6z+J3yfl7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA623FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177741825368.12525.11429223641482963398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba48ac0b83b3c96129cf02c123c878a1a58a218ace9ffc4320381dddc41246e9
Date: Tue, 28 Apr 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777418253
