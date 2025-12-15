Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227C823770A
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 15:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765813974; cv=none; b=B0gNuU8kTrehF7Pd2YpW15oIgbzqEdHCU9BeJCnc9T55N+nmGQm0RZ5B0s9VRwmeIgF8k7HcWudW45ZYpkDcLBIICfpC4Rznx/rLrfBfW9rHOh6mCjTR8dE52apmAKgmHNAyr/3n3wfkv3BqCNemHz64qpZcp5mCYqgtTKVpgtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765813974; c=relaxed/simple;
	bh=pNVfnNG2aPx04u1RIAeub0S+GqMYOWJiWLI3nN5r26Y=;
	h=To:Subject:From:Message-Id:Date; b=GE7p8jMb4ir1udvZC16PDzqqBWNoruiAxEgEBi3YyxEu4/cxWmCD7OW/WEpxiu9nXMYVAyI1mQ18IzfBtj0Nm04kjbgBnvaIDOGahIdIVPEHc+9TLbwpPy4KIbetSdnVEflBuZH5as9qyp5fry1YnHTEI+h+kOQXNv0VOc5CrOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3c1bdau; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3c1bdau"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB28DC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 15:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765813973;
	bh=pNVfnNG2aPx04u1RIAeub0S+GqMYOWJiWLI3nN5r26Y=;
	h=To:Subject:From:Date:From;
	b=g3c1bdaunkSAt05ELq09lUdRR1b6Sri0y+NIWYGlaKQTSDhtYl9C9TUKQNa93VOEs
	 lRcXT8TAN6SjjLlSpi+m7IAe5VHN+dlTI6dR4tdzebsRyk6eXDl3yfNfUIPGVwsfq2
	 AdkSvRsOng0TlFclsKVuCM0c3UOZ461aZUXSGxxvGVzxod2B8u3zMHf8S+hOSZp/PR
	 dKzAEreNk3lM7Ni3Y2vZp3p8V1kXxaCB3Hh/1a1MTH6LTiL/wrj0F8Jp/nrfOmZGBx
	 7itA/zgc6/ReG/w1axoWeqLJuFB40WDQsjS8hUmoyYj+h3XNBZGMO/Aa+L6sOOE/uz
	 C3TWkbKzuTCDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964F2D5B843
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 15:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176581397359.20553.4392367164051873075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c6f754d5e0fa7c7708743704d0dd048283e37f872f0ef914645ad127345fe59
Date: Mon, 15 Dec 2025 15:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765813973
