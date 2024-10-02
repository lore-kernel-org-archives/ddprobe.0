Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAEC1A00F4
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727861154; cv=none; b=a7SOsFSu+pIrd/BE2ymWYlP0lvLr/oUEL1l0v6KJ6eji2E12artu7TB5un07BSH3cxstx8kUD3V6eFcFZZBphHQ5nf+j0wb2R57RY4SFofnL+BVG3NhV9V/PmAJWsA/MYcoVo3eoPavzlBAY4KFkuP4Db3yNhS8SDDyMeecGSto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727861154; c=relaxed/simple;
	bh=qPp/ZyvHXs0Nz3m56yv09T4W1iAQ32UURsW6Q918uYA=;
	h=To:Subject:From:Message-Id:Date; b=QrGdLYC3XgqAKwLQZVdF6u8Vc4No4bgLty1/lWUdTdYujUQkzAvvZu839gkWk0Il01ByO6cfQ+dn6VVtVfapG4zXijDiij3zY38K2HwZ5jBXRmkN1rwc5KeaXj6qEa0jEhgDWZlEvILhz8jIBoxryXSQQpo+lPSO8k9VknHF+fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kplZYMGC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kplZYMGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD442C4CED3
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727861153;
	bh=qPp/ZyvHXs0Nz3m56yv09T4W1iAQ32UURsW6Q918uYA=;
	h=To:Subject:From:Date:From;
	b=kplZYMGCN+CrDYiEJKOH4VR2YUdCip3NX7zslYeip3/Hyl8WtY15ukYWbEkB0hYA9
	 lUjwptSc/WSVmXIGenWgxz1fqamrO9usxWx0wMWFP7x0ozI38hPXz8DjcRxSeeQ7Ht
	 hJpuhI6yaoH7sWQYp9cSS2R9S/lMyJnjFliFs5ph7HbdYzNRKWf5tW5pk8Cx1V7aql
	 nF+nUqmRr4hkiRxVOk+GPR8cH2dYWkzTAAzllPts8yierFhGCrV/SeWWdPwH7JaDRt
	 OcCTGgRNdY25RRGaQ/16BkT9E2Qo3thUcJX/hqdtSUzjZkgjkiEk5iLk6l3t8UAHdi
	 tC79GeX6rYZSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A998CF31A9
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172786115359.16956.6085941309331092788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f430dca47194000c8f8acb6df1c38e6cbbd65f9ef35bd2474eb585cd73bb303
Date: Wed, 02 Oct 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727861153
