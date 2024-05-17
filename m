Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76ADE140374
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 19:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715974943; cv=none; b=qZS2mF1C2OlmODk3AG0xC6aqSQpmhDDZ2Y0+y5Z8RGFkXw2YKID+AuFEyKR9oiJjkDi38UGhJEyQt55IDuhkl0u/p5sNHLw1KjZ+MVv+NWTZeve4uq5QRSjbBxRkvDPImXChIxCF/FlmbvW/FtoNi1xNUL0WjHgXcvenctJoT9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715974943; c=relaxed/simple;
	bh=0xs5oNYC+KqV/ZOwySHDDI3mjyyi9cKK6sAn6Ln5aNw=;
	h=To:Subject:From:Message-Id:Date; b=raDQ6K8DgKwgKvbODdOCM8AA2jNSbdlznUVFeWyr71ZxtZLh+d6Wm+isKQ+o1gsUtpa28FEq+lYRqJKWs9ZELIyl6E02Xj9xz7HLTR1g00G1Gbi34EDEqrpSk2rOCuPrTMM6fzrvg3NXq+b+kXZIsl2Nq/oHjq9YRHoVuV7dCFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zomsup7e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zomsup7e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1DAAC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 19:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715974942;
	bh=0xs5oNYC+KqV/ZOwySHDDI3mjyyi9cKK6sAn6Ln5aNw=;
	h=To:Subject:From:Date:From;
	b=Zomsup7eGqV8tZesQZ4A5WeWEPeLkJRD89iU1koreDzlXfFxzSAAPi82FxcnkmQ81
	 1Jxhpt02kGOUNhIrDWlpbdiCzHLlzZRLzjcGIQobj6TbHRc9lu7cwRqSL1Ovvh+A0X
	 /yRvq9Al82kGleBM3mWbK5MPlAv/ENN6dIG6ul7EEHv+KSqm6eB5YipQCN1o8ulmBC
	 14yvEz1WibcuubyVMXwWLi7d7O14YWP9tJdXMKR4oAlXiPgTPHNE0wbonMJXO743xH
	 H6mVZDaGa75oEhhbYIVcu9srBi7VNmmLIr41LFsNSs5mOp3I8Lhcv3M6IJROswnilg
	 XkMl0ZwsPdQmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD871C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 19:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171597494280.23769.3345639064880331700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06b874b09dfb61882b666c756f5bd184668a3551346646761398466e9742470c
Date: Fri, 17 May 2024 19:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715974942
