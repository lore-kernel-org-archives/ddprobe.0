Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7D11F2BA4
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759981794; cv=none; b=Ff3bhHmi8ndf/xHBPMV94sYL8hj64tqC7DOLdRbLmD8m4O6gPcq5Su2zhCzBpQexhbsBtPUfb5WwwIjau3KvTOtr9H4dUSMKNJLbibTHe7OrwaaM4po6cHmOyWAi77oYcDr78tVGTNlTkDcawFEJ94lqzdlq6mWgLv5bpweuaPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759981794; c=relaxed/simple;
	bh=Ce9ZwgBiC62+7RsKo3rgne6h5QMrwVaPB4UHRJxsYVM=;
	h=To:Subject:From:Message-Id:Date; b=AyoPZeSig4jbqOvW72ufdv7F7Pp9Ya2HJ/NAMonm85G5eMkL/GC1j2pBF7DgyUJdkAbfB6HaoMK0JvhVylZ+6qPqNPLRd2PcKeE6+f3KW56S0sFzDKJxZO0NjPYMyTjDOWBSerGRsZs8MFTAFF52zCIUBuB0opY79NymIod7JWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIdjMDpa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIdjMDpa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13EEC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759981793;
	bh=Ce9ZwgBiC62+7RsKo3rgne6h5QMrwVaPB4UHRJxsYVM=;
	h=To:Subject:From:Date:From;
	b=pIdjMDpan+oqglcLIiwHiKigoj8rVODHxUx+gdwQlhZA2WoKtjIEpOyGiW/CM0fhJ
	 dwffEMP9tR6LQvARwEdlwry/+ogV6zrqoy/Yfa2nI3J0VLqDJKht/gbueG93aG51OL
	 5GuCYIQHl77hzZzAK7Cd+pM5Q0t6xOFymGseDnuew1Xb99qxucPW4ObMZ9hlFYeg/P
	 Caom+NFxDesTNDtjnGr0nX4csBgPTJuNJz75MByiY3fMU1usFrFRzRs6jN+EdscRTe
	 CyUrWEwJNR3yOg92T0ZEKnFcY/KUyEcMXhrhrbi5VKsX04Z6HQAafmyX3zKv5e48As
	 03MELt1NoG1Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B85CCA471
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175998179358.4923.9962245408936305525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a13a410a47d54a1773b723f8597f54303c2695b4ecc48752f7c8b84d555bac
Date: Thu, 09 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759981793
