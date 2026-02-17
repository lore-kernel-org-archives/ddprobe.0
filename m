Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D443563F8
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771335294; cv=none; b=c4Ng62J6PdbJabIjJdzL8xStVe0YbqlIJfSMtMrz7uvCZgJQ14eK8KTqbA9RR5bI6Gav2RMvNTQXTDa0z1iOJ6TubpUJ2bFxVaHf/W3AZxwKS71buRcn2IzUkIVkotbncnP9gYNoAS+49KJ+uiC+debXcWWFFFLj4McX7IfX2HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771335294; c=relaxed/simple;
	bh=eFpJARqteql1z9YlNYns886pdgb572X2z2r5sSONIVc=;
	h=To:Subject:From:Message-Id:Date; b=X5OvbcIFy8kJUkslG4VhhGSbygCJ5nLaeyyTpjHTOwrf4sJbOMD3wbteGiMPNSbrVskdIl+TRuQov3J/TW+d1PIpcniA/chO+cq8brpl9RSgnraeUfYmOD4DmuyjG3nUCjW4Jbf3WuvujQz2vu6Q/NsT6bkVRNhp6TF4U4hHsTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0rACg7X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0rACg7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE923C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771335293;
	bh=eFpJARqteql1z9YlNYns886pdgb572X2z2r5sSONIVc=;
	h=To:Subject:From:Date:From;
	b=m0rACg7XwzRqkJxvVuTCEykJ2jhnZNCMwvNE+2sIotw+XyHokRiwRCVv+b7o3QY1Y
	 DPIvA/2rrMTRlwHQiWdMyAzKsRIK31D+nKk2od99qLnne/SvVCEDyZ7n45vluU3Ovm
	 D0Wq2rqniLASd4YZ2+B9etXMh7+4gfmei4L27cOFsmD0lan2DlenznfBYdQXXtoxsC
	 OTkbdZ4ZGjeRLD4cRlqJ+4BLtIFYQlr4ldYvZBZV81/WLu7QlTpRsdhrRCbqDDOoLQ
	 QCL4EUqkzWUvpxpPyLNuGFLEc+6QzL0rzknz71guuWxzxlWxAGpl3TxuMoWcIzhbb9
	 m1qWNnKfUI2Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CCCE81A32
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177133529360.25050.8264268824376826924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4bf72daaa27ecf313505a4739461d09876ac9c94fcf7ac509ecd6b899840584
Date: Tue, 17 Feb 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771335293
