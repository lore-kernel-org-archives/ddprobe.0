Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24453313E02
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763121594; cv=none; b=iQ3LS1a7NvMojKfSa9ETg54DrjDM+aLgbUIYuMuLpVXSk2M/2IJlfmSK8sFlAhsh+ZQUtck3LEIlyhJWfOKOi68F1gz7YiU6EJIRle3MJHTgaArHdP6bboXQ67ngJ9oQhit4f1+kvQyrOmwL411LSEwMwXqYndl1jcp01HZy+O4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763121594; c=relaxed/simple;
	bh=wXz2L4RQNBhGvE2LhB4h+llkUEJ9nnEpBLAMTlE446k=;
	h=To:Subject:From:Message-Id:Date; b=c1cAXoyd4cjG69tejVypXUgS/IjmHbRMwUAFnlhe4reUhYRCDc1KdqOqd71AmfeB3nPKtheJOLMyk5Prhiux/rLmv8KDjuAo9yFgLMGhzcxhij5CA5Dcma8JZhAJUpfXHLD2fQFmYtgNX/riZxOhTj8g4DgmsTlriXsFYWwd8wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tlnRYlis; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tlnRYlis"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D42AC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763121593;
	bh=wXz2L4RQNBhGvE2LhB4h+llkUEJ9nnEpBLAMTlE446k=;
	h=To:Subject:From:Date:From;
	b=tlnRYlisJg6MYWGTmLy/7iUKiEv9Spgbv2IRreUpDJ9lsdOytE/T9DdVCHtiKYjht
	 JXfSgPcuRE7+rep9GfiaJ2JYZo3MVx7duPvIkaX6arTI1oWxyNno/218y0Nody/pHs
	 T+ebfiCR+fXr37DLq6TEpBXDWiEKQh0WxmxhQBcRknWnUdvLL84ECLmCW125dFdYOQ
	 u+rAjfVKeo38jRAVX0sgQIY+10BEVUiSM6S3ngMFY4MV24+uWgAX1iP2CdFcGbD3qh
	 CIB3B8T91lp3Yadg58wPmkQPLpVxIXDI076Pvg8so8ZS1OIUcHlagCUgJxocA8s9Vr
	 0aS0u9QadxRKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900F0CDE00D
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176312159358.16991.12108846323886056735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d4040c55aaf12659d1546bb75cf6177811c870faad7f8b68a556e110e5c67ec
Date: Fri, 14 Nov 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763121593
