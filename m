Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C05C21F3FDC
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757169593; cv=none; b=htVqhsm/swvob/JuSrrB+4O9cU3QDDp2Xbb0SaUGoHsPKsSVLWtGFm+A5KUaeaXchX4UJUCQ94VsGmRDdmZ+auooCa093s7wv+RWOFxvtrmueNtsUdCbm0LXicF5g6O5eDzKugnCqoNttKGXYl1vc4yBxwGIXcz02eJ3WqlJT/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757169593; c=relaxed/simple;
	bh=SYfkPK1d8s74hfZEUaW9QUi3xILZ2+OTMdoYhQzNhjY=;
	h=To:Subject:From:Message-Id:Date; b=fLLJ+fzZoxWdaxcBB9sQ4UGfEtIX/XRviaID1O9N8rRI6uGuChP+3ldnYs0mIlXmSGjj9qHt8lBGcmjbtRxhp5z0miVT9BXHiRNOOlycmA8PDP6JnXE0i2JcDnV+jbds/NmYMk6f9ZgqfB4CBKxHMbgGVTjNsm1f+qIXl1q0ioU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQ5wRDky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQ5wRDky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CF0C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757169593;
	bh=SYfkPK1d8s74hfZEUaW9QUi3xILZ2+OTMdoYhQzNhjY=;
	h=To:Subject:From:Date:From;
	b=eQ5wRDkyT+VU1VDqRktGyxPnzKjSRjrjAWI1RyZRKXrZOOtlaDoxNmYBQ3JDlwqT5
	 77uDHfS4iUf0GMBPPB2aDj/GGE7Y3VndQB03kDiWnl8sqbZkAx7aFF4zkj1qykXBcz
	 uCWbltcnoJNXafL42oWYOnYBGjDk6YW4hhjeccw8crM61Jl2PbnHXiINHJQBaRN8jG
	 tZtizs0b4AI0fZ5wHvKwLuWQYhs7YqnKFN8+ObNuIxZA1kIeUY4KljujgMqXfG6ejY
	 N8CN6KlEyYh2vkId6PVX6KzwdHfmSqx0l+iDyFmNdFdDDfNKw8LsY0oB723GGIGtYm
	 KR16O+LTymJUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948C1CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175716959357.30643.5436800232031083435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b7f565cad03d882c1ebe71ca454b6372335c51dc0b1bcc48b53087476fd5968
Date: Sat, 06 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757169593
