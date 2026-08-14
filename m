Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F10348D879
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786725634; cv=none; b=r6gzrqh20o9Ti7Myelq0oUW7DIdulCnNdgKAXATcdmLF9NrCjCYWspE6gCe0wl9SZjNmcqL78Bi6jpiPjczCK67+zqbdRbjpeQY/q8FUohLUoaYDdrx0iADHoE1ipEVUTH0WMCQ3YJXmlGgpSkBgNJrDRSXVtvtvgm6SYldPO8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786725634; c=relaxed/simple;
	bh=b/GXi51iUlxyxWvnjmqx50x+XGmv3EpLZ/eM+UZDcDQ=;
	h=To:Subject:From:Message-Id:Date; b=EgHEoPt3SlF892wIpClw32uXZ8832UPAANYJqmviQexqoXSms0j4SK8laHXN/BFIjpwHCv/cf9oVserm9yBC++0uJjOHZuo7lu4l4JNhnZ6u2BWkl8fu6W+YQc4OtSIoj/MhQ19ZP2WZof6EEK5X47QUsj0oKhjxzxiGIB9Vo1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJ4HTD+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJ4HTD+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFCE2C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786725633;
	bh=b/GXi51iUlxyxWvnjmqx50x+XGmv3EpLZ/eM+UZDcDQ=;
	h=To:Subject:From:Date:From;
	b=TJ4HTD+DbroYTKf2NOWrwIX0tnhrKS1GwgWQDEEqmlnM0zFkX9nnWOEn1zHQqIy2I
	 gB8IBNbtALDWdD4XiuV3Wl1B1FcH/N/VyNOKkRJsnl1btdDddLmWbmnfSD9GNPut0h
	 g5hCGmKJAV4aPsbB1DIou6KhuEH6K/0LOU5KhFR3ZThwaN405dtwtjzGSiZeVzNTI1
	 9OEb6VeGF3gVSW1eCwQGf/nCKPy7C815yEknWDstXRU6zBmsgj/7NsbrGcXg87NfRt
	 pj8BIQLkKF02bgFi7pvmxNvh3l9K5ddGkEqJwCbTy2L4ht0l8kpDvgbNFs/SE4FCxN
	 b0f6NUKn78YPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E84C5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178672563368.27616.16165697653072178802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 272ef867db45c4b02ae54c47b3699d7a59ef5a7c1b56fca904929f506bf051e3
Date: Fri, 14 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786725633
