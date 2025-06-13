Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07DB2DA777
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749802193; cv=none; b=J/vfJXNPnnkKM76PWc/tnlXChcYkmxjP8qu6M5MCGWATlDHfIAbnXmOppi/Efv06iWiv8ms5DIdijzWXFCb2iEFeGCrF8FNxv9oVJzlvXFruWxl+CXl8Zsxt739UqhNHIAVrZB1ViFw8pN5qtnllTv2APFPRTBmRHHYU3npQClg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749802193; c=relaxed/simple;
	bh=YSURC/ykNuZ+C9f95D3pfYtYyRaiY+Hz4d1CijfiFWo=;
	h=To:Subject:From:Message-Id:Date; b=DFom2nAz2iQzaISPL4paOvkdjq0TWlgyp2YIpmW+FZs9oxh3EN0+3S0dgDlH2+KVbOGcwVDsi05ECzljb8aibKwkBW4TQ/+SxzsTs0c0niZyevu+XwPhlQQelIvsMb4WicN4it2ZPex5QMvtrPoNG06dXsbpyVqVJbQwYCImMis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CL/7zVf0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CL/7zVf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2091C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749802193;
	bh=YSURC/ykNuZ+C9f95D3pfYtYyRaiY+Hz4d1CijfiFWo=;
	h=To:Subject:From:Date:From;
	b=CL/7zVf0E9AgR7HzNoNia/w2anl95wGAzzZ2wJ27fW18VPNyxTi7bW/k3rOlvWpNW
	 1dWv/ADdqcIhk3SHA+cect2CFBOl6H4K4iFDLY/WFVRxO1MRXK5ht0u9MgUjk67cfI
	 A6xA+5c/b1Rcopf/8hndxi6xasGfTj3vaxkfbnv/f4yYFV8YBSphS+m45oRv/NJ98a
	 vVNwQDwbxVbMfZjCzscvca9x8wEElYNKuGOmaf97s1JOVkoF8s8OhVZ+O/y62B5ERr
	 OuH8RUcTRfTx4gyTbC6HpMz2sCVy9HX49Gg4DZh6yefxVf9DQwSE3m8KW2dsSbX8hP
	 x2fDNd2u8D+Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F392C71135
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174980219357.822.3967466553369642674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b6829399b8bc5f60215de659ba83d14217e89c1c77984810d212a57d2601d78
Date: Fri, 13 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749802193
