Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1CB16BE1D
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724847954; cv=none; b=dIibZhlUDVxS2jdegFK6opJBUF6uvVyWSkY7hjviaWJVcRstj1Oj2Ep0Rp9ozHoHrNz8sI6NEZoyvXQnCIrhQXxi3ThPFzP8ppZY2d7Hkmjg3LvvIw/8tap63fLXcShuMbvbbC2mg3XR35fov8Z+om9CDKT2YnjzwiCXCk0kGjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724847954; c=relaxed/simple;
	bh=p6h+Ul07VF5o42ESGDJdKYls/WUosE56pdCZknPfqBg=;
	h=To:Subject:From:Message-Id:Date; b=sWtodoOpuIfOy566wG0lKw80vanaN2R+MpZpR/QC5pNWoZ4E1q47ukXoqKWd/VLq33i6na0LncfRmxLBVPD9GAGtSnVyZqceD//F0oBL/y8zgwBMxZCpAnUoqlvrJgI9Tv1DvUA3MUbXVnfnXfQ3d8pdkM4jORNVPjq1FWrjYvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdCOIwz4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdCOIwz4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB896C98EE3
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724847953;
	bh=p6h+Ul07VF5o42ESGDJdKYls/WUosE56pdCZknPfqBg=;
	h=To:Subject:From:Date:From;
	b=FdCOIwz4C3S4h9vQNGoloErO47HcGqpa/J0dX+/4s5DWIXAj11e8vdhyv65c4gWsL
	 pI5aCHkuYMjaWyb+CCbMoxAKmrJ2RyeRnIZeHp3gLNRdtoQrA/LLVYeNWk2mIOuqIR
	 S2ItRyvyO9zwu1lROuAqGlGUK3pP6WmtuGgfgFQdGo/0zXVTjLDKh0/fAzb+NM0xC+
	 cx719GHfQp/Px1UsfUleUny6aUKjizPk2pDz8ozv5Xk8hrvOe9I5/F2hIEqSmldM1k
	 VFEZseE/JNYKVCK2ynPXxDtfKSRlVT66D4L4PE17R/xHvEY3oKk9xIwSF1xfReHgn9
	 MwgmnVj8cpLXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C1AC54FA7
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172484795367.23524.8506482000334252425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44fe43d44c8a08e04fdfb7decc3e2c4eccf08a8bac8d4e14c9f92fdbb834216e
Date: Wed, 28 Aug 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724847953
