Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB6536D506
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 19:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763668314; cv=none; b=lqXYWmMz656xTRlavVkIHNYSH7/ZKVWMLWwAsIB6fVEpEvaN5y1Jp3xv/jAutvfp5rgrKlHPrgwx/BX4hOVs2FTN9xVmv2HLKUh6s9kN9wDzLiAlwNkbB8n264u8VS4s4hz4vRPxILFt/KR3M2hgVLwxpVANt4t0ORGqi5QOcTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763668314; c=relaxed/simple;
	bh=hIMGw3tYAiWUl39B50t9+Z88oMgLJkzah4rprMicUpQ=;
	h=To:Subject:From:Message-Id:Date; b=HSMhG4Y5lofZYofaT20nQWTP9PQrIS93LTxA7ylZEbpzpFLLGfi1eUqyS+MjEUNGh/8NTNposk2I8DKA8bFRSEHmlujLkPVIRX5qWnyE5yLz94gUXE0PqHdggoHts95wE4t+RtR2NTIuViuqu3HLXe5xWAN3Ad5nurgeRyEXNxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIQryKO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIQryKO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E72C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 19:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763668313;
	bh=hIMGw3tYAiWUl39B50t9+Z88oMgLJkzah4rprMicUpQ=;
	h=To:Subject:From:Date:From;
	b=XIQryKO9sxle7c/GI/pw9eXdB3D0iJVJB3aEpFUHSiLkEGuE96UDVFUF67ExiK6Wn
	 oa8jWlGI2B48nzC8gCnUXSiE/IuGRi0kjz8MLVwCfZD6FRVALUC8oZFGNLQgxYO9O1
	 /grttiCvZErBBfDTkcz0SSPAIt9I+HqG6N9/cwn8vMTkpl8ZaZrjc/+++Wca7sPgNS
	 DmTcnxzEPrflVxN+Cnzn0BI0IzD7RfyEVOXTq3F02MDVJ+JZOHqx+JPiSEE1tr0Lbl
	 5jnAcvnwK0oh3k3lV/pUflPlj8QKg6ujcG3Zar+a0CTz+Rw1GRRzGuXQyjfoVbogXz
	 X0x+oRuPVyeyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BCDCFA442
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 19:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176366831360.9652.2956564020400323579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f5e12424c6085d9395c8bcedb883051cdd88786127ab598fd8f79fbf4decf8
Date: Thu, 20 Nov 2025 19:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763668313
