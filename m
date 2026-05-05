Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F074223DEA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778019454; cv=none; b=Wd3BM4Te45VRGCO0S97NHxG6R0gRqvOutWS/LkIcOVuYcvqEzE4oHStLU29JwoFceAfWDfj+dr9xbM7Dz+lvZphDCHb/5hj/NZUoGsobPA8r/ybvkCuUN0HAMDdkjc3xxF1ZiMr/CcPSC31Rf+tDvFyWaqQ0QoiDKntBYpfeGbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778019454; c=relaxed/simple;
	bh=/7qyp9SzdRH3h9afVlctBMX29n57TwurnRFIDpoKp94=;
	h=To:Subject:From:Message-Id:Date; b=lG4nwQRPfbqPDTr6xGBJNzcy+d9UlkAMAk9iFfiKTuUS09MZ0cXlDLB+aLC4M6xagVarPWiQ7JxIN+fxyrn3AcbN+yY/YZzZgab2hPz7Y7yIvIxdB+sjsOEePrBmDDLL/wtuMj5kTXxQ4DTaRiqzn2+YL9bfz8Q9Vr6RcTZQm4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvSYPm1c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvSYPm1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF3D7C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778019453;
	bh=/7qyp9SzdRH3h9afVlctBMX29n57TwurnRFIDpoKp94=;
	h=To:Subject:From:Date:From;
	b=IvSYPm1cTcLa/jCGWwJR9Sb9I+Q5UPmtT9GOz1VPgg874y/NeV+1sMZonHmEyhR7U
	 vdZC5m3S/G23sKvWUyUSfGbfzyItxcJWfe/szNtO335TOgj6ee5k/s1ML2fS/3hmwI
	 25zm1dUB5fr4j74Sr2pIPheo7ZndeTcZ9AV9CM8pKJnMBO49QilNlV0QVC4G7/oJ4F
	 j2iNRz/jun6js6Q0oyEZETI1x/SxER3+nFcNRBSIpM1v5szpv81p4VcBKu9R/6j1cj
	 8Ag3f0au2DceuIgl5+dHTrfu2SL5vXsz5CVOpDJ+hL1ptFSNesFQq1P1VdFEJK+j2H
	 dPFRMj6uTA6+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE076CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177801945369.6707.8207452246843286442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d5c33e260cb96cd30ab0c3812bc22d40edc3ee656d5c20056285ad89826b5f2
Date: Tue, 05 May 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778019453
