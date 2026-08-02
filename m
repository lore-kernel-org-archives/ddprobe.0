Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3982F2737F8
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785651034; cv=none; b=KUSXPzBL242zRVXuzptTLKoS0XpmlJ6wgA5a4vSyuS6SjM7pMIhgTSIfiOQm7iwinoUXwGasLXT6wkkPrOxYPrliOcw6BV2AYrxU27qO3KL1twmHNCqLP6xfiEQmbNCQvKggHXvj6odCGuzo9I74YFzBTKI/gWhb6+9JSdQTc3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785651034; c=relaxed/simple;
	bh=YSi2ugeYeJldD7JVNCVfP4/U/qbONwB/K/+Res6PbXY=;
	h=To:Subject:From:Message-Id:Date; b=EwHNvq6786pPJwmT7pDa2JBk43SdxnsTxqT+kaoX0STH6LAxDhzbO2jFwVEn63tSakOf4Ci36S9TPE/fqSF1epH7/inRjzf6MQsltMy0sd3RhFc6Oq9Fz3DFJCjckBQPrIK+pffHli+xp7r3Ep3ox+CXhJFn6nCrYOxsqJY5BQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Az0NUOC3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Az0NUOC3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF797C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785651033;
	bh=YSi2ugeYeJldD7JVNCVfP4/U/qbONwB/K/+Res6PbXY=;
	h=To:Subject:From:Date:From;
	b=Az0NUOC3B9WSsH55gjGwjx/e2FWGz8KPY3VoFWYwMvAOfhkzAchru9aqlF+d8fJKX
	 im+BbdakqExow2aE3f7HH8KNzEqpS/+gAfkEJvSsoL8o6/CIjOLgdEz3+Z2CBUDvM/
	 0XdgkWsNsAhMoSMwRxV6nM29Qqv/67laUq/TB7WcYIZ1/VJLv1W7mnzvgYQl68uYJ3
	 SEKn2NhsMRvAK+MITQ3zgpH4XBhSHealK/L5n1Pk571PmW9/m5m3H+nyule/7ld9+d
	 zxrEb3Do6XGgDFtDZns6s5jB1XbI253ghMJi/dQBo6UV3xPedDKguSEpy2/8ZaME/K
	 O+OmiuKK9a4Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB81FC55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178565103368.27496.8024782811221214556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c71d99a2540c7633fe6c11d60692ef52e7959dc873ff50d3d2779bfed0dd1565
Date: Sun, 02 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785651033
