Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F25213E89
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777253254; cv=none; b=TXExjj4RRbFoOoycDvccH9M4u/+mMGmoeZo3rLtHK1lvsUSmIkAX7/Aqj7zPfimTyXPoEVCnrUWEod073S/qCA61teA5sieohHLvkXiMixav7+uJNbDIKMg+DKu1MXrD4ExAut9a+CdWaztKcvvnUGdUp+vfu6R+p+3lLBHAF6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777253254; c=relaxed/simple;
	bh=dsiRMQ4wcg1pqIWI01SIs1nkYVhvgAH1jugci3gb5ns=;
	h=To:Subject:From:Message-Id:Date; b=oi9B4ktt25vELiyEPpZTLHR9LzpRKasjl1vI00BD7NvVWIxBZIhrVpQUlMYH0ddCfLB/JIH0XSB9x4DebrGRKX4HBqMXzsxa2k/mwTpSUG2Lw8TdJCewiL7MpF7JWTuJ4l8jdbT8o2tdm3wB6zBA8C0UB9d4qV+s5VLgATrsZns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EletKPY0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EletKPY0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE80C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777253253;
	bh=dsiRMQ4wcg1pqIWI01SIs1nkYVhvgAH1jugci3gb5ns=;
	h=To:Subject:From:Date:From;
	b=EletKPY0oXz9X5DrNenaWh/hye2X+o0McDH4+s69Oo22W//SF+kCHKqFGShuroBhV
	 fBam2y8hFbGxXZvQAeR5Naxc8oXQJ4B5yb4ld7eZBMUgb+YLVkHD2j5jRu8Y9McDPh
	 epmpmXPylpg3C1k0y2HHEudCy5924svKtcGFgwqvYeQPewkoiEKZ5vSRnI0YLa+EpA
	 EWUsJEocvJ0jpW7kFKB3Feqw+z+i6nZWPsLGz5gR4KQ2yW73ltSJNSUyXy6/Sxstmd
	 ISrfWplv5ASed8tDu3xWC7w2LJNEx8kWOBjNByjAtXQ/36ZCkgDC/2mHj3prioGl5m
	 Xc89EGvkbiHTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC592FF885D
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177725325368.10464.15720870340535762819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89584fba44281f09c9a1b4e98532da711eb44e07b1675b1dca91e66b7a36190a
Date: Mon, 27 Apr 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777253253
