Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D95405C21
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 23:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778889034; cv=none; b=XAplOsw6pfJ4nmqWA1F5waakcSWpjht+ugmsySba7EeSio8iGJ1cyNOCIdEd05ueIcVgkYg9MQaA29K3fkbY+IQa+NOkSOhnc7uH3Py+QG97A0Rzt0J8CPu06XU34lPZ+xbHflex9f5POTw6P3McQAYWB7oNqGQI9CdlMEGOdU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778889034; c=relaxed/simple;
	bh=gkMLs6lt9W4Cjh9PTPK5mEIOELlSd8d9K6U8BK4osx8=;
	h=To:Subject:From:Message-Id:Date; b=R4yqrA7v+Mh45AZ/FrSiiE84HBjBpMaT9MA1Q93O1FqglDdSUvh162fNl1P0XV3Ut/TZmN4goPW6AvMDm9RHgsD9iabESlLKQJrIQMUvYmxwlTNLr9xgu13DM49lgg6t2B8+LYFtZ+hYA5rCXVBMOL0CD8kGA+ChBuh8gf6Ks6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ub5EXnng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ub5EXnng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2254C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778889033;
	bh=gkMLs6lt9W4Cjh9PTPK5mEIOELlSd8d9K6U8BK4osx8=;
	h=To:Subject:From:Date:From;
	b=ub5EXnngkivD0DCQa+sHAW33x1lTWTpzBuBJxQh53eqD2+fH9sqZvu4x2b6wu1Fpp
	 xZBuainME8Pyomdv4qFv3XiBpcCczYeWJ54KmgOTKf/Hoci4AVgnvn8YckG9IYruiU
	 t/maxrV+HeBoc4/ROTWnylXkjoHNR6lxkUV1IJ9XCm2t9YEiHQlJ2pIybfUhgWcZ4a
	 XAfHHff8W+EdKWHol6+frW8bwhjYYOJ/sRcYMuO7b5Q9Astq0PFcMNw/BZ3a+XcjEu
	 Z1QhjIeOXtacXayOe8fC7HgnC7/df1XUNq4OmjiyaIV0hJzNXce9QozzuyZ7Rv6Cmg
	 rVayCU+aNg2lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF3DCD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177888903368.17673.16226474627812838473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acab2179066508c65a42cb42c16d1707f59d5d50ffd07f5fbf7be69adda171f0
Date: Fri, 15 May 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778889033
