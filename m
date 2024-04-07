Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D4913714C
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712494696; cv=none; b=C7ChnVdGdiYXq2QQb22m3OWQ6eCLooGgrqLh+0AYzxaN7oBYSN5thI5ecEtaZKGXCu/SePLHuDGToSMqof6bGEQxwNPWxwP0O3G6pGctrutiSz764sppoC54+cYnYwKpAU8Uxf/RvxFSsiDUV/AMdVjC1YJE4cs3GxGmrIjc7dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712494696; c=relaxed/simple;
	bh=VInHrLDPIWPLGxmnMZeejN72+wf5Na8ZIhoQTmyW+Zk=;
	h=To:Subject:From:Message-Id:Date; b=Xn+/tba6nyednvM4gI4MXII3yg+xxB2f51uuw4aWKBXBu4msvMwAsY3Hq50NW7nmjSMQyKST3v/g2FnOfZDibpAAnDrdSuv717ml8m/DLXBT0AUmhyl8nc45UxA3InX6KFXjL3zUu1SAE6+/z1rxFRlJ93PpYItr0l3WWVyJtto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apYbV2Pu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apYbV2Pu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CF70C43390
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712494696;
	bh=VInHrLDPIWPLGxmnMZeejN72+wf5Na8ZIhoQTmyW+Zk=;
	h=To:Subject:From:Date:From;
	b=apYbV2PuktE2P3nBZbNiRCl22pNgQvxVv4+7emlyUd9MoGBlbSzJmqMgaskgb4cMu
	 9yRW+4OgPIK0c7laDbUuh22G7hDqRkHGX+DWdosVAlS+KFL/fw6EXTaMlTaCdmPXWU
	 LGUbfgTlRtgaRSJS7Cx97YX3G3GQMHoReObsCUfZ+K6LILwESSbyRTmRT1FihThTaT
	 vHPgTWpFsnRyvhBsjBP2AFyDUay2Vfg+K8XPb0WA8XhbfJnmAyZJa1EAz524LfcV6B
	 RMHdK9rtAaZlWPlLnCMmv39zbAhdiLeadJSPnHQXVIMV3rTSlc2oWIlTB+RXUcDZ4t
	 hjQ5sun/b9+jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 605E5CD11C2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171249469637.17611.11822242151659389737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abfa0c0fe629e73a90bf54bfc93fd39a86f245baa3e5c6a379cef35f3f881dd0
Date: Sun, 07 Apr 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712494696
