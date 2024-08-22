Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135B21CDFC4
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724351754; cv=none; b=LKP+5tsJcvzzX0gaXQ0TkRoD6mMESOc4RSZQInOXFEZ8GBmyem54OXXmub25lE6lA+w46lL7fdk5Y4xIHaLhL998M6vMn14T7fRq2RUjEcHOBjNPxDDTWDC3jZ8M35fZ/gDmXw719WCiNiiGjxvUDllsAyVD54yp/OKMn9OoPio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724351754; c=relaxed/simple;
	bh=OwEC46jnIPTU/xIZ1NAVl7ZIs230b2B/pp9WaJUXBHE=;
	h=To:Subject:From:Message-Id:Date; b=VsewR4KJk8lUupIuJIeh6RZTLog/SJiUTbMqerBBHAYYoJFnCDqqL9aPLMaoInPNp4eHLjuelgjcUU0x+kpqpA4vN09XqsJyADPvhxWcHGQ2RlCyd80X8RwTRREEqh+6Nu7jjzLDASdbd4he/hFOd+0Z4JMxocNnG9XE6evaC8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsyLi755; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsyLi755"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF4C3C32782
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724351753;
	bh=OwEC46jnIPTU/xIZ1NAVl7ZIs230b2B/pp9WaJUXBHE=;
	h=To:Subject:From:Date:From;
	b=gsyLi755hXdtM+EtJP92BIHTghnVxOdYx9pUuvdIIVHAd6Pt2+6mOOSM5uhp+Orf0
	 izqT1JffFAbxkx/bPNDJR3fssV9Jl5EKJ4dfovPzL6k4oN1v7xLfhXwuGCm4D4EkFU
	 Uqq4gQPa2mkBfPnKO8K02FKejbRlogDpm2cxKWHOUmtGRy987dCBCugdkv/BgFQI4i
	 shG16wAU5Fu2TJhuHxIehtXpu/PuHQbZXtXUMTGqihi+G60X2QSy9F/hmjlyHCtGQV
	 wLcydRO7ym33iLgIQPckHCxHXUMF2DA+TXdm7N2hNdbs7hbBbn5L2QuR6WWF/fQmkJ
	 b+ewpSku0rRfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1FAC3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172435175369.12761.13943990183044406629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51255be6cba2a63e68002f2574a7f9c4ddc16fd1f14775a173499de82890da13
Date: Thu, 22 Aug 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724351753
