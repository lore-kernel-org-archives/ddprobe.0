Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 052DD3E8C6B
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773689694; cv=none; b=BDlKI1AOKrulD7/wluZUAQmAP4gFJdHNbBd3eowox2aHd4+g06vWx6uzfeo241SGOkN1T1bSIq3VoXax2bO4WRblF9DuLcB5rSJUbXt6PJboDOWBe7UDHwiHIDUvFo3ioAHhk+j60SOqb6M02ut+4TR1Yx1hPtv1XRS1b2n0KyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773689694; c=relaxed/simple;
	bh=WM2Umkjzh+iFYjc9V3poEjUoiD8wOUVgWgLtczB/nWw=;
	h=To:Subject:From:Message-Id:Date; b=oMLLk0IWo7fdb4hpVuA8WMUQVFFHGDW9Uz4Hvk/baYr0m2/S+dY7i1Y2/PNkoqqv0Cp6NKJ9oabA9I2rriaoWcsD7v6TUwGTUsNEbxqcyy1Ngqb+MWeLfHLdZ83A6VCoi7LWn0iG/Ix9dIzq2tU2L1ed9LvoDQkJGxyKIJWAgSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SN+XVjDE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SN+XVjDE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5ABC19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773689693;
	bh=WM2Umkjzh+iFYjc9V3poEjUoiD8wOUVgWgLtczB/nWw=;
	h=To:Subject:From:Date:From;
	b=SN+XVjDEbanjPpvFmRCKVT2gn6Xawl2G95T6kpt+bgnzdwd+sgM9OeGAMkApkhiGd
	 uQV82ZdivxQSuUHXlC+dUAj/PjqAqgU5DALIXgtZ4CmK8zMEQVRosMGpOoHsr2wmGl
	 SWNZBFtPY1gHvf9eIhRPmVbmpChgHaNAjyBCzSFP9OJhUiZZmXOQQT2hFTzmU8OMMW
	 BhzSlcWJoPR2WXOkVeKEy87pjZeGzYPg5Znn1vjtHz7oZJgWF/rLpdApRWp8zliD6V
	 sODplK+LlKkNwfZOw66dOytaaOmOrptjaH1e5E3cSqoRGpqZZZ4EHczBUVU9KW/6l8
	 g8h5fAfCUZ8Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA63F53D91
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177368969357.6880.14042210274850625338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68559bab9bea139f5084f2aba38397bd518aac1c533bca3bd2da104d82aad902
Date: Mon, 16 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773689693
