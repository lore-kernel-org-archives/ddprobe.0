Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FC723EA94
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 17:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764351174; cv=none; b=aGIGAgvKUbp7ib9W4E8imftSpbPNiWAII/0ExWopMUTHiCh94HOnM4pIyOgkO0kd32XT7CkkunpxgR2ZW2q8Q6zj16e36FkawqzNzdbIo+I6BF+PjzUDlseEjMcLsIn2tg8v3s6Cne9YyWbPaUZAbdJdSp3jSOzj4j9HV35uy84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764351174; c=relaxed/simple;
	bh=nCLJ5TVIWs4fxskmJWmG9/ibXwYhIJmqg3TgweXbx64=;
	h=To:Subject:From:Message-Id:Date; b=JUTQctiEswOon7MDJQBefkII/ySwRCyp7qzSYDcrtezlyqnCIJui8lPOg2R25HY0O2Yk/1RyjXBQ07aiYG3mVKobRd4bgok2BPTEnXw1TBTMDgXrXMjsTlrpgd8ZS2NvwphM2JadFAo4ZYydffFkI0iFgKjX0YQkm24MF0jHE9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EC4As5bv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EC4As5bv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC82C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 17:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764351173;
	bh=nCLJ5TVIWs4fxskmJWmG9/ibXwYhIJmqg3TgweXbx64=;
	h=To:Subject:From:Date:From;
	b=EC4As5bvPaS6N9FFoI7RDlLxGhje1/QfL1ORhzYrQrfnXO5nisYXkIWMoPHl+BgC4
	 Kg55Iybxe86Jc6rLhf567XbuW97F8v1wL1+z5p75QGee0+Z6ZqGS8S2sLkxSUQKqyT
	 /5x+dxaVJ5+Bdhf/slmBCWumf944x97QNDRs4LqDRIVDIAOhpQjQBXJeTDHU+Vf79G
	 vcpu720meG8B48loPrvkxSd9b736eBGfLDkI5t100ZJyhQguLaO5f0c96n9goZ/FJ1
	 /BBAsusPhED92Cij87MOgipQvM1xyOBvSDuMRA8+YG27mmgalX0wO9ouFQto9O374z
	 u54//M3NP5vAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F74D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 17:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176435117361.16769.4628645474997680486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c511e5c3efd68e0d969792711dfaa9aefbbe7623995652c1e4ee3c449dd61b49
Date: Fri, 28 Nov 2025 17:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764351173
