Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F980635
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727051754; cv=none; b=o2soSL1JBr1FHvehotuvIh4iyvj1Egn2p2tqQqgYGlboNOxLmenH7wwcL4gnS5IShWXzixuuskxLpzLX1bHLNsE2UK2fOApeF3GZQmKphpEESP0BT2GMgOvwz2oOz7trRi1Z+qWL4mcEII/zcwjwFbzZfv3f989IK/J2gipbFoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727051754; c=relaxed/simple;
	bh=V2dk53fpZgBHhrrBFbqquirEMdxyTT+eGNilmgc0ZvU=;
	h=To:Subject:From:Message-Id:Date; b=Sh5VFtZMUYAyNmeVI01JVj9aaS+5Lv+jzdKNCUIAgqJjkPICgkbNtfdZaBsWgq6mVKEvKX7R3vamxGCZ1HNdgQaCvqf3sMEItsN+916Q5spjOnIScIsTql97KeadGJlhzurPysdAebluXwKZAJIgUmoCw5sLWO1HSZN5lQ5zzoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pijVDNSL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pijVDNSL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6789C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727051753;
	bh=V2dk53fpZgBHhrrBFbqquirEMdxyTT+eGNilmgc0ZvU=;
	h=To:Subject:From:Date:From;
	b=pijVDNSLPpcIfQP4kQe/RvT2K0NzDATnJS47BlEFxXmB85bYnNURE8ZOYUX8DftCq
	 mIEqwIsiTlr5Y0YSYVuOTTZMA6R1G9Cjuby7nGp1l8QUZC4nAFRgvUuUfc6wRvQd/s
	 NiubrEBLDa8yMmjIXLHiRUBMmZqkHgvAyVBUu5WT6cE2knUWPIqMkXDxiktmYJR/SB
	 QPJQbWrKcAFTbUS+toMsi2SFXNSWvc99ON/hnhFzVGyGWQv0AXLp5rHk9mRq+vBntl
	 t9buYBkPAPLuRZ08RM+/mDtxdETbSqSRNEDh8UumsnBDgdLe9ypvKQKFaohcrxumhN
	 Udha3YdF+UWtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FECDCF9C6E
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172705175358.17926.4569300158715588485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fab7912ca21ba0340d0032eef3711852771610c93b4a855ce5d8663834998f2e
Date: Mon, 23 Sep 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727051753
