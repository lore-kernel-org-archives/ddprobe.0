Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE5572623
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753577394; cv=none; b=mXPeDqYS28XAQF2sUDvTfdxTxNhJLpBx34zCmzTK0xailpZ1isD3m5sDYxCkFgXkDWl5cb7HL3c/WApKZ06wg9xmho82W6C8vyDPXIbU1UOkg2OkG2AYjV5byXQeOYzbcknnjHlziIC8y0bNZ8fIOBJOzJZ8BVHevvawrd/CzKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753577394; c=relaxed/simple;
	bh=I+GdiEJmfIRyVSotiFKOGT8NQjI9hnF8LrpaEI4dEqk=;
	h=To:Subject:From:Message-Id:Date; b=mpejxeJ9JTa64RKi+Xg7451ewqljSnsU9gHnf68WTWKxysLqxtuKRj+oKX+tJ4GtcF8cqQ/vxIPMJRXk8q+7J0SFoJ+e2e/pCQeo7i5dCM9wXdaCQjk5lo8BjKgSjiKp94rhSLPCNBU9QpD/QWckVIsI8vpbKByFqyh/TGdNxv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WxIfN6wr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WxIfN6wr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4364C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753577393;
	bh=I+GdiEJmfIRyVSotiFKOGT8NQjI9hnF8LrpaEI4dEqk=;
	h=To:Subject:From:Date:From;
	b=WxIfN6wr2y6OTCzvNaahpIPEZjelQ6KcrookzcF+T7sMF73UnpepFHYLxq5R1qVt4
	 pqAIWYgpEekkpW+vDWPk3qjOf3rTFyfT+l1EoHcV8lrL6EHQ+1zQKGk392g7eLkzZA
	 h1qmzobqoJ58vwUBCcME8/IbCeiCrkadYgBD4YW6jI9LnDp5lDa3Kt4+DJRGL1emjB
	 F2GguldFifptnHIhTmuxim34PUdLnE4JOffYD/P69g14zI5Dyb+RK2efDZn87HGWzF
	 Dt3AlMVwRGu2ZAybY30K7cw5CA5CsdQtXhWCVBGmvlPup1/mxF5uvfa1GiqTJz7Tts
	 CtDaQd4IAk+ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C25C83F17
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175357739357.19756.10915016418088248296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1fcae7644784d2465b212a623c6f8546cf7f02ecffd44dc544c6f7cd692ec7d
Date: Sun, 27 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753577393
