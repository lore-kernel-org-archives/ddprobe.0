Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44ED8187346
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786095034; cv=none; b=HK7u73Se1uSgBZ70tc5R8vL0m7By5w94foQsPBeSUUSRjrZN0a/sCdtXJxtnsboATHWqEo6M3Gx8h47GtTeKx6V2fm2ClLi7zJCmIf8poiQIqeRWJjH3iDX6QpFL+s1ilatVY0gILYP7FFC8ZxRUpAreJL06Hcqs7RnUu0pymu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786095034; c=relaxed/simple;
	bh=jqZJlBg6QiArkemjLQTwXxMiaRcSoY2si8tFZKDFafU=;
	h=To:Subject:From:Message-Id:Date; b=bjuX3am7kwSeHC/ZeWbGLHyjeWGH1i89uRMuD+0UonWsRgxvLYSUjKcHXV4Lz028wJ0HEmEkzoXR6jtQUoVl+qC8ci5q6fAPeyGvadq7Bg2VVoBC1Ni1iLFFo5NWg9LkC3u5C98M406bpMYKzcXptps/kUFM83d6AAtIT45aINE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jF1fi3G9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jF1fi3G9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB710C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786095033;
	bh=jqZJlBg6QiArkemjLQTwXxMiaRcSoY2si8tFZKDFafU=;
	h=To:Subject:From:Date:From;
	b=jF1fi3G9ukOKn5MnPyz8Fd1wG4Y6nUlZTJlM88Wg6k6ITbyBh6KMLLbK/frkya+mp
	 gxnAqscvH10fFdAFyzvIFsbJ250nwCNH/949BqdLbHPp6t0s+awXEUZ2tuRE1RjemC
	 DfXyXmrR5glFM1IZ0k7Hcdfb5hoG+ppXNe/0Lpny29cfB2Fdods4M0UKiQp/00XvhU
	 W0Vz4v37JaEjMymNqMsR88kSUpbXM5394JIJlo00JOxCC01lT6eBMq9AiR4q0XqFU4
	 pilGlA0w98f4m3Ex0dufWbK1PGQdUV5hYAqYl908h4JfiqjSbTOdhBl/fX5eOaOMNR
	 6aKf9KeH5mszw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF73DC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178609503370.9516.13492218191816944024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144770bf1ab02dbaacd384537bff670a0de90a0256d4ec23846fff16662f544d
Date: Fri, 07 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786095033
