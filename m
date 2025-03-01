Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F8D1DED79
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 21:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740866335; cv=none; b=O/QEOg8jIRtz30AqPNYzqwPcKYxnN0SuSMDMxf5Dfq82WySDtKrHM9hGndwKZZSjQGhUYtOMfAaQMa6hOCBtiYgrgrVnvCjYmgx4xvYwYfBOzFnGOdwvDIAe4Vfdj/Tp8pMaIkczDRRbOrFy4p3leDG48mxQhlsBozDF6Y/xFQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740866335; c=relaxed/simple;
	bh=DgkUZBs25dMPEfnDxOsmgD12kD7DBPzjZVIajIUNiKc=;
	h=To:Subject:From:Message-Id:Date; b=n3nL0tfsqkwWTpObAtGbVPZr4fpxoi91fBEWHHI7W2CTfNxjlca+QLWfzPO/zeNkmMIjjzC8YePQLQ9Cjp6JgM2p6UXZAUfuWqaC41MkQkY3jxJvmrsSSXgIHloR/Tjobv87GwJE3LpVlOKjPd+393JBPI4UivDiUiq6D357JyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hY640xPa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hY640xPa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B606FC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 21:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740866333;
	bh=DgkUZBs25dMPEfnDxOsmgD12kD7DBPzjZVIajIUNiKc=;
	h=To:Subject:From:Date:From;
	b=hY640xPaoYaaydSnYmCUcpFxlFkHojcXxsfyVC2ZWEk6aVSQKH6/2fN0RmiM5PZIQ
	 Oy8B0YtgxVuPUQLTWgF8LWWJXHLCq//njBFLXdzHJlPm9aoo0TQ0D6uMloYDVcWXVB
	 qN6SJWeWWaSbNDM/s/avxtVph5WbuLCCp4ri0Fx9NQDnpvdXKsRy6JaUEASoMvR+8q
	 O5FvD1FnHvGDKdd5MNWNbvcv1kBdc/ct0s0ZXFPLGSioM480AJ0/gdk7P6vXeEbq/K
	 XHyQVXECwKy3IwdeCg6aYgJL51aMMQR/CMrEZVdG+/anim7P5PCAUpvUljn8ZgE+cK
	 1sSAxqVaks8Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A66FFC021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 21:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174086633363.21191.2408874095474987776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 424acb7b8e84bb0a0f9bf8b837c2a83851f6c44e2d89082cdb4bed7b0d11dd2a
Date: Sat, 01 Mar 2025 21:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740866333
