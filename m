Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C8433F8DB
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760731794; cv=none; b=uMLNqRicSL60WQcjOtJl4Xn2cP97Mv6kRQtywOZHJsVoeHPFFEQaQtM1DPD9OQRpEtpz9vMuj+u+7SIpqg34qxLVoJPv5Vd3kTdkUy60o7ikO+7PJ26MVs1hmSxIoG7TLRMAuny34bXSAzdfV9Fb4Pu3/rhBO0S54XInpEnnuGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760731794; c=relaxed/simple;
	bh=8uw9D9JAsXjL50+4POhq0eHLHyKFNWIFxgG+LOCsWVQ=;
	h=To:Subject:From:Message-Id:Date; b=XJ1nlvYQc3H2MwVy2pI7lW5z8LcFIjbjNnS/1EHtIPKomsUSDZwttHqHXo+KF3MrWwp4LOqdPiYg+b7zGBDN2Ql+YVjPzU63q7De8GyWxagIN7PZdQvuiiqsvrB0s2upVff5l1IZZZhO8HifQ+/iV+4Qeut637S5wtdNidbes3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IylMsdK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IylMsdK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34E0C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760731793;
	bh=8uw9D9JAsXjL50+4POhq0eHLHyKFNWIFxgG+LOCsWVQ=;
	h=To:Subject:From:Date:From;
	b=IylMsdK7AvaHqyYvCAexKtM6L7pyNgEJKHqFo1v1bBN6GSv5W8+8+nXz7h0F8uvUH
	 7epwcJ1WZyjwSPLxw3o0mcnR+ltMEfNi/YCAekEs+upnpZfed8hc7ACRBKhDr9AsdC
	 6mb67AX+i8PdH2b10gwsE4AOleYIU5fgiGB+NSMueVVZijV36Y5LZ6rCJwnFiRp2b8
	 GdlAHAXGGvHWZllaR9/xyPGE91NhpZlRDw49hctfr81z4sDMTyX6MhTcOUM4MbrjkZ
	 9Q5+em5vgeS3tFCYDh9FNyorjoJGirTdB1HgN/MeYXvJqkIlp6rtyBpaXIxS61HWKk
	 ZTiYJkBqBrk+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906D9CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176073179358.32617.2736967869963631307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a24fed3a5a5b88318bd9aecaed2ea81df83a5bed67500e7018379a951818d02b
Date: Fri, 17 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760731793
