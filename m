Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CD929BDA5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 01:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765849974; cv=none; b=RFiOFxmzZ54VB5jWN3usInq2C0stpwxGB/bVGz5EnVsmLVpEY05rbVtPPWL6jf7AiiIXSjcgvfJf1smg2WnZzXjQTspSbc1p6USN/NzvLRuHRnECPBPH0UktPtH47Akrpp7Jx13AGxzEQOT6XrgCLRMOCWHH0e2WKPOPssizurc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765849974; c=relaxed/simple;
	bh=5hBgjm193h0hxF02zvWbvYv6k6nfnIe+MP04Fo55/Cs=;
	h=To:Subject:From:Message-Id:Date; b=lp8bzHogKvuZ1henfiwCX9NjVthCqVk5FIj+fAzFEu/IrdzwDhDMWqUL0Ntbq8nU81xr94/prdKYlh0IYLs6qWlbIx4D03nllvjTS9uiT2oVVjw9EPfCdSogNhHFdx1dsUulESNwcMT2n4VrGPxZvRfV8Z2lzsh1FbFb5xbnjDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOw5Ev9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOw5Ev9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C0AC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 01:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765849973;
	bh=5hBgjm193h0hxF02zvWbvYv6k6nfnIe+MP04Fo55/Cs=;
	h=To:Subject:From:Date:From;
	b=HOw5Ev9VjcY96IhEa9nQj3a4przw6qASJsWM20LiY+XaFr6unvr4b8+KXy/7aSicX
	 eagzJJ7BrE5tyeS1fD91i41x1i3nv6qr/4ibCKk/Nrn8Gozrrdu+FEdtERR24uJ9Io
	 Qsdn7aX+Rkl9gMGS+iTVHq+NUnsVBklu8T5kYHUCWAIArG8F3sVVGrs1tZ1XeM1wv7
	 e7ZgtGlPA6CYcJogr0Z6frQ4Cg6ogWUbqTNZVDMo5o3un8Xm6N69a+U5OjnlGPNMEP
	 4UgXLKgkBD499f9XVuaQbzq5Yth+X2yT2WBUDRpa0iB05x7ZVVsLcq8qfmwzD0AMln
	 EcNvaF1ynBNWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9358AD5B87A
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 01:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176584997359.29414.5063235713048469895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9852842513ec5a80e43486b6096b69b6ed8f5cda3674cf192e72c53b1923571
Date: Tue, 16 Dec 2025 01:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765849973
