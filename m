Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D84B4915AE
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789239634; cv=none; b=JjLpqaEGHAmFcMdkHn7mw0RYNLwWOwYKoQgJl1AE+TNtJ4zqP+ljJ788flyKYla4nCnB5upOsgSzxquKPsNTRru4V50GglRKBSOmOEEukC4whi2pwSHPFzQXnVpd5ptVGjNfIolevupwiWKe2+qRbcIjtRJR71Ksy/vw8exgTgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789239634; c=relaxed/simple;
	bh=s1x8ZfhkdQBdmTNNIa0Be+0sj4yvd6tArOLKQz7rtqs=;
	h=To:Subject:From:Message-Id:Date; b=hNEFVWchL9lqRTNL+O5jtydHx/4q644o6BUU6GXSDz053SYuPDHLm5PiMPnYQbUNw7Y17G81wbXgeAwETLfbE4I6HPK7/aGRFpcxDP3BJZhoXv8xmi57GXYuP0Shrzt5FPyreHo1FiFVq1+X4wJDpDSF9mEP2pO1QlEWois9nwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E283LTCj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E283LTCj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1866C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789239633;
	bh=s1x8ZfhkdQBdmTNNIa0Be+0sj4yvd6tArOLKQz7rtqs=;
	h=To:Subject:From:Date:From;
	b=E283LTCjI5a/nISdffVMCuWHwrjdwrCBzEFjV1nPNWELB/XsJeaVnvArWDWSI64a8
	 /pD7Mbbfu/8i1DQnRKF93dqj1PEYG+r9ATcKDFDxaGD0ZqnJnSVMQm5ds3nBCR/dEe
	 vPGdAJRkUuqOGXfagJtFF1IYSjqqISeVlLAjCzgccpz2dmp5hOm4F+fOmIp90WB7AE
	 9oDqvzMZnMhSBJZ1HR8DZiEQ0AxN/TWfU+KJoJKyHOdq0EStDyU5RVmk+1S+8kmReE
	 qdX5/jc2AxFBLwCgAJ3nAiCs2A/GDXdRgYp+kLKtMK684QMW2urG8ZrVbr3XDhcDP+
	 bX38ctETdj/uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3C0C88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178923963368.22180.9406924190213044764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6a4a0438d30b91b697e7983d36bb09cb970e38500e802faa666a0bb5d20393
Date: Sat, 12 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789239633
