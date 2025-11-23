Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DFAE26ACB
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 17:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763918514; cv=none; b=ZXrHPNBzVldRpcWpoAnDOSziLiql6NS1R6gwUnPPekXFGzjLZ650NFUjZVzJtjcg/3GTYqKAZvJgp94BasAlFgj7m7HdTlunxF/nsIs4ArRi+LlmjCrJe4U9HjoTOREfeBOYu6S0chwmbEqBNOuY6aMnGYTbh93jUxIsBptdNmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763918514; c=relaxed/simple;
	bh=YlNVNaQuxtIEIJmEAtaLb9udDLdDwIlIhedrqQ/Wrkg=;
	h=To:Subject:From:Message-Id:Date; b=TFcFlsojodKzvBdymWNKBz1Xnxi5I9sCKmV8TzUbbeFQNoBqZD7bM0V9gPVnc/HDhYnpKWnRTzr7XfRXEmdW0AY/gzUbO8fq0rghhpOkTV1LzRXA6KPQe0XnlXbBDzLx6zKYDubqdnWbErl/zptFQT8bN8ef2dWBjIH0ppM7T4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lb121sSo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lb121sSo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5841C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 17:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763918513;
	bh=YlNVNaQuxtIEIJmEAtaLb9udDLdDwIlIhedrqQ/Wrkg=;
	h=To:Subject:From:Date:From;
	b=lb121sSooRFaQ8VJdzBBVFX7ijym8zAs6S9jQEQjkH+W2/lDNgY3HLdQOJ40o20+V
	 1FPqLnNiEryDOYIXMuBC3xltnLJtPv9Coa4ZifXPH2J9Nv0xJRAO990F20gfpx0rr5
	 ygEePufmO9/pFv+7XFwtb/OAABE6RWyv0vzJl419R3PniM3Uyt4uLRWLw7IgVTr0Cx
	 Or258/Wmz4V4LUctjgXb6o6yb/8Xi3zdDXrVCqyzIUn21kf6iTCdOHMtM3pthG0XjL
	 G5DJJ/bIvBNDMM2Mf+KqP+WPWoT8mQVzH+AXQwQJLhTXgbiYRGgyzbbaocV4ldCvOF
	 8BObhTEu0+TbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9271FCFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 17:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176391851358.1802.11714158421177406905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e23339bf0b20a2df488088a3268c5e854468b92bcd8625929d4d1d98cfe2c368
Date: Sun, 23 Nov 2025 17:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763918513
