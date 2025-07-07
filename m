Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED291C3C04
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751930394; cv=none; b=C5sAduoFQV+PeJEO9sRV51p9WBUVuwLlAB3Fi424glsZEUy1zpXyw5jcyW9KkCfRJjDmMD8ZdK5vnC69lHk+CwL3uP2IWj3+xkaWcAm+3+SnsLWjRyYcBHSLM4agryyeQz0iFwkKU8NuhN25wjqWQo95UD+zF1hTJuN6MCmGiwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751930394; c=relaxed/simple;
	bh=s4M5Zhi6z2SvyCSXPbW35sq3anMJSaSdyfG9Ud65ybI=;
	h=To:Subject:From:Message-Id:Date; b=uYCD0byh4zGRXpNC3o6193Jz4gEkONCdqQr+O8ftUDe3qIJvkwfvHhgTaCvHlT2OJgziPyfhlWkEmuSH62eTq8r9CfdgqOuzAh/95aFGsdf4rMsgkaUSrqPABK2ssAWZZTH7qlklV7e+WcRkH2MBlPzPDX5ieI89gRlrnOXZnnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5knlhr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5knlhr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A289DC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751930393;
	bh=s4M5Zhi6z2SvyCSXPbW35sq3anMJSaSdyfG9Ud65ybI=;
	h=To:Subject:From:Date:From;
	b=r5knlhr9RV0avrNuCXisnCBr+eD/CcPXIxEZW8x+5ZxM45NcnX2QtpwfPNQqpPlTK
	 Cw0wveuDMgKyYrnYsDlCXy4VpoyJ2q2BbMRR3AWFlrmXa2AKvxXrtwByyqBUp1a2En
	 khE9FtUr9rkbQFr7+D5zJMtHcZT37uP/XsF99r9xFQcuP9vE/zvM/p6WWHECUQN846
	 NRv9f5EnS+HY7wMY2NcB038oP4tQ2BJnRaxOIRFwRUU8wfpMJ1Xb3zu2m0MPs6cV2a
	 OittH3UEiap8kiNVbaJWkm+FM3y7fxpFlQ+mDy1JdBMYvDaKLIwuMSTs/mRnFdywEz
	 gNU8QJvyUgjDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA3EC71130
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175193039358.14435.17377236609475972984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75fa01fd16e2b94a1bc992c59b67fc192f59fae4025f7a2da6974e22da613d74
Date: Mon, 07 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751930393
