Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAD62288E3
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 01:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764982974; cv=none; b=SsiVrYhPSXqFC3FdFWxmX/w6g82I+rbkJeGK6ugDIoDv6nSljzPfudw09q8hKID2uXJLdYOVwm2UWmPgEPub08oLo8HlSf6jI02c2HQcoKtYpWBOXBakMK776GgyEqy8dFM2F8oDwAr0wB0dqmJLgtc65E+PLKfG2NDN6t8pLfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764982974; c=relaxed/simple;
	bh=FaIsktExU8hpVnnLcW0aV4fBCwclg113OgT5i2hXdO0=;
	h=To:Subject:From:Message-Id:Date; b=gVmp6nsqObRd26oHjjN0Fkt6tIQONNOXj1nRF4XLQVdI6P2wjG94ZTTJGHA1A227uIL9urrpCcItzJMIJ6MYoxkMkEXtq/T/DsRrOmcHgRCAFZwjfj6wn+cfJZ3sq2a3J70rkolwqg6yQcj+N2+8vEJk4M6lGvLPGhquiDhkIZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+z2yDO/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+z2yDO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D0FC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764982973;
	bh=FaIsktExU8hpVnnLcW0aV4fBCwclg113OgT5i2hXdO0=;
	h=To:Subject:From:Date:From;
	b=t+z2yDO/TFzTrNpnTxiQ856BbOuaR01LJpbPPR/pHkB7KgGGbwQXNBV3gdJUGVsXs
	 KbS0ZhNyHU/Lm+Z/Tvhf1UL3r+1pYGbJDagq1GtHxbX3Hf4DcskO4UXwN5/36lNCKw
	 tNta0A1kn8XqZa/KTIboUa6l0dSKNB0ct9N/HXzBw669VZKfSkacJguoiMeKhpBPYe
	 emM6BqHQU54VEcmVenpkZ0t5N6cCFc+BnjyWn563OAXw53Dm/15+vZBCiOJL04FKE/
	 mShnF0dNc1nhAfoFvMTqJg4lHLHn9oNGv595gbg3hiFj3ux4Sa0EpCc56YzQx2ceq0
	 hyxKETK/3zK+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95151D3ABD0
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 01:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176498297358.538.1289379817358842948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 088afddc1ba8ed5569b1176732f20a3667acac3ed78735f0e1e67d556967e9c7
Date: Sat, 06 Dec 2025 01:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764982973
