Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360871EA7C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742050194; cv=none; b=NlAhoJyXBrnSBmgdxl/pTJe+KNU6LvC4Y/7WWfE5fzWxzeevvyzQY/d3Xe66T3wBwBVlzR9+yCEzdI1+/UBMYMNitmYqsmXH6Pe2lEGQR+4M4q9uHp9r2clSY/w3X9iyD5N2/i65BWdgBWRVY8oEbjaVqyyKsuevggb22WVU5Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742050194; c=relaxed/simple;
	bh=ayla7mvwo8Qwgr8BtLgSL7bgUJwm7zcnel16XI/98qk=;
	h=To:Subject:From:Message-Id:Date; b=N9f9BdWrLwpKKk9X5ZtBVqcImFtroPKuw8zfTixsIt5xjFXAhj2pBA5a6AAHQjAwRv0l78qG++6Bv6zt9JmDawy1eWqDOjHGP1McE7IWq+G1ryGcYVmsLcDryAAVFDd4Oec2Ec94YnkFrJ8sH+0oJlcbCp3YI6z9appR8OGOudw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GdJ80MnX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GdJ80MnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A780BC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742050193;
	bh=ayla7mvwo8Qwgr8BtLgSL7bgUJwm7zcnel16XI/98qk=;
	h=To:Subject:From:Date:From;
	b=GdJ80MnX0RAyunrw6YpzxFHemSopSWzC/TloypfL0r2OGewVALHqm/BI0PVg2pVq+
	 TaRN5iurp2Ky//98EfIdPHx13lnteZPoICBRde9vAfTJCDD2Vho8K++4doC1C7fY5N
	 zHU4V2y+6VBlodMEsvZnmYJ29pzXiQPavWwyXOvLdHHjv5pwBwmkmGvt6H3eXZG39c
	 HLfqUo0+l2N49wEaW0Lx+THgCvZYPUw9RARgzX2w8Lw8Hn0kbDKsKImhvQIUW0ZQS0
	 CvKS/32cM4kKAvk1V4CCuKqX0y77VnKW+2kMeAKE+KV05FvSwA4/if/aBFI0wChMqW
	 WuxZKXQgg2JzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94748C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174205019359.6660.10346333828952398629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7227067969eff13abdb6d0d648e305ffe55429aca312b0a3bef800dbdac26ab
Date: Sat, 15 Mar 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742050193
