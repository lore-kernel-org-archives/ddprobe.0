Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC9E53D9E7
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789663234; cv=none; b=NMG8kRapgFtHSBlhXaKKpkndWRJVXZ44luUDawXVpEQ1HhfCrQNGDH4gw0IlBnutRUN/BFbFP4fNflHLrfDV9mzpYeGzlbciVm1BXQB/aUZh9+52g6nHiQuDnUazhQpEoy6PR0D9Ilw+0JDTwTsbIP0Vx70cClvx5eAWWzCQxwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789663234; c=relaxed/simple;
	bh=xca1Uxz7/S1T5ruWirdhbyE/Esylj+oWYGFe53C8LkA=;
	h=To:Subject:From:Message-Id:Date; b=jUMturm+NCDhIknsHVfY/4IjC9R9stDUXyq7czkMeCgKgYdiryLOph3ojDlYPtoD6cvTTFFE7HZFFuWb/uNHGg+2juATcRI91GEvV/ukZH1kir6nDJ01sDJ9sCqj/T3jg1Y0q3Y9fcvV6raDRewhCTO9efgAcjlzHxkO9noqOKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZv53mSc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZv53mSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE663C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789663233;
	bh=xca1Uxz7/S1T5ruWirdhbyE/Esylj+oWYGFe53C8LkA=;
	h=To:Subject:From:Date:From;
	b=pZv53mScpLJvv1EjmAY1vF/a+eUfTP2nXCwjiTL1B79LA+OfTOmZv2z8y0qLPGu0e
	 cHXCnY7mjZjfRgUSkJsiZRBg3vKtEB41H7A3kKSJH/Ej0bQZvgfoR2vQSvG1U6ukVG
	 6V7FejEbwXAhbQKy/4giP1Nmiiwz7wPvye8Cwts7vbuGwBwtzvksBAetZLlJsd/atj
	 weVcBgPHOKY27ekovgAmxnKnCZwSO9y+zGqZQTHpN9ECwO/G4Jg9LJwp4J2/cFGsb9
	 8zF2Qv5Hz4hkwuJFf9MivIobvIaL6J1j4oks3yzWjc2poFjaWbZndty4dGld12mSP7
	 lREW8cBpX42LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9AAAC88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178966323374.9440.5901167768699179555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ef0d2b5ce4b4ba302464125abbd52af95f171081fc81d83647367f72ac69877
Date: Thu, 17 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789663233
