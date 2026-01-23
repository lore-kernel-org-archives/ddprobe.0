Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97D2F207A38
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 01:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769133234; cv=none; b=fme6G4dWTCh9DOEGhSCRdtF+qMebUb8juhwNARVUxroiXkuma4HPQZj9U5n4eYw/lhmnD/wJieCrcCmM+6gF08ukBLdLBZN4FN5MxS+FbzzjoqEtVzUCioTRrd7oYoWUdx2OVsjJ1PlQFbwcBd2puFmxNNm0oO/b9S9ip43uM9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769133234; c=relaxed/simple;
	bh=4u2nBP6wkGfrTI+YdrUUi1l9vyFTEZr6WgCaHgcdeg0=;
	h=To:Subject:From:Message-Id:Date; b=fwKAbL/jkNUA+NMWzVsgDI6yNNrx88a1j9VavFVKoVY1vZOWeNPSZ6WuSGkkL6WNLR8Gf46evoq2yTzq0DPIZ4Ky62S9xAKR459hbXAPk2dV9Eyh+ELsnNgCAgohxfuLnPm/sLclOLRXdo+nuNf8VpQmOV3yypVMwHp84dxrxH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpPgkC8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpPgkC8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C6AC116C6
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769133233;
	bh=4u2nBP6wkGfrTI+YdrUUi1l9vyFTEZr6WgCaHgcdeg0=;
	h=To:Subject:From:Date:From;
	b=ZpPgkC8qlesz1DIXqjYS1KPU3dX46MBeBZpeMALMEXpqVcICBJRxYTiousnSDC8k/
	 Kw/2dvmKPTN6jVyXQyawmwYVZrl4ae20Xck0zeLqB59Z39NEOT+ic/D82H+iS9cxh7
	 cVyOk5/HjAQKAlyi4L6wqVGukj661BYq6q5233XCX2SLkVxlAQmecPaR4ZyfQvm5QR
	 sq2+89dGIF7jdKO1aUGLM+l/8Cvqir/DycSi8Qseg1a4mzmeudjg8VkkjX9asMpxk2
	 X0il0hdYGwKplRKseH4+PGlWgyEJxX5fe+1W5hiWRfdm4q07KBosOSZmhZvbcrPG9J
	 TMDfn+BMmXLXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C1CD6CFAA
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176913323358.24646.9981131743810822776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 236631aa0942b4d87370db356135d20f124858f043befa1d449cb6217ac778b2
Date: Fri, 23 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769133233
