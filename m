Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8083CA50
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 00:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719449603; cv=none; b=sWTS5w+qxA8r3ihGezlIJ/w2G0ox666MMI9/qwKlIAO+00yMipK8h/MOsAK6zROyk3OCHlGCeAOyhUtTssHssiCiO6Ap8qtQVNavDobm7voWdEi7UQT6XdjpTikeKBvrG3OVieisHiWPtkUSS7sQOJCNjgHuRYGfYlC/QfCzs20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719449603; c=relaxed/simple;
	bh=yOwZlK3ra4/i8K+QLosenvMGX1TV7vs/4cL6pf/5tdo=;
	h=To:Subject:From:Message-Id:Date; b=OrzoBWkA1OQkqf2ssJg7r6N2RPKgAJYtwmQTnsDA0sIJPZikGddth8u+LEQ2Qar69S6S47WOXDuoV+NCU+Rd5+x+Zv79LCysQ3SGEPy4RHrTw8DIiGVPLD/pvbOmSZbDy4ScNFx4H0lNohkUa2QVfsMU69OybP1lzseyJIvc3LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRmbYM7r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRmbYM7r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13DBBC116B1
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 00:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719449603;
	bh=yOwZlK3ra4/i8K+QLosenvMGX1TV7vs/4cL6pf/5tdo=;
	h=To:Subject:From:Date:From;
	b=lRmbYM7rCZm5mtbhGz79r5QLAY19NAuoNdB2H2brnmPsCF0rgNt2uTCS0GQBXViVb
	 C8k6dg0rCYQN+WVYAtKd4OwoBZQCNVq3WoN4rvksT7YymmIwaWzsZgIOAU+hVgYBHu
	 Rmw5R3W75OjTNiicomBIKqjBYYiPUzMIbFs8tSMTrEdavUGGVjt/mSgVX2pa7HDBIn
	 CZxn9Ukb+MJacuFUpNZI76g9t9cmsT7aYryetXzHAEv9028El/Vkxt/+LEJ/xzj3dG
	 zXOZR2UGmkq7eN3qPJRxL1yDJ+0RT7lwBIIMbqawZhOZWcZ4bWLzZgY+vFU+jHR9Y9
	 V5r8xEecpTKNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4068C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 00:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171944960285.5049.8783812984441076167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c7afbed22a775494eb983f5381a50fcf9d9ffd607e2c53e09084e81df3cc4f4
Date: Thu, 27 Jun 2024 00:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719449602
