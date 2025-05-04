Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B13C1CAA7D
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746376194; cv=none; b=QTBTgKfAPdNNhw1kOsfua359tCBTaobt4oRSnBkAVLoMpqj9moHZiGMXlpSBqqC2I8mb/yV2dd5Xnmmu7lfBf+cu5qr9TakGLE8D2iPddi7jmAhyfVHH0dR87UlJ1J02rdj/tCdOi8EQUr97Mxl4WqeUACcFMHF/DWvPpBhhlcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746376194; c=relaxed/simple;
	bh=POUHdrG27N9ER3RxUayiTzZYkjCPP0QvuIjmtMfwizk=;
	h=To:Subject:From:Message-Id:Date; b=kR5yIdodo/AvDI13zhRkwDC+HB40zhvlfs2p1uD6+81y1tsR7TvxFzN1h7TzDXsBmp3XjwypLNppvGNcHPHPf0U4x7vncVd3IH4lMGOQOKWBreleHvuiu9EmqbmFe00iQPhYZabu6SzR6uAuE9xT9Yx4xFj4xQ7nUHO237ZYbvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PABy704Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PABy704Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C37C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746376193;
	bh=POUHdrG27N9ER3RxUayiTzZYkjCPP0QvuIjmtMfwizk=;
	h=To:Subject:From:Date:From;
	b=PABy704ZORpZ232jixbJ85IR0RzCVx2kOlOfL23QV3WjlCs2BZJOLgtjYvLcoC8AY
	 zJvfU3WfNNBtI/c5JThVliqZq7sEMmGCo/GEoyKLSpLL15gXOB9ZEXIxAQZB+BmbzL
	 A3bPOuHrBoh3hb5lga8CzeZ3kBsxqdsHjURyQ1Oosag/fECY0Bapj8SRJGk/ZLZaES
	 9c8kQ+L8BfnYcd6DfpOk4FsX6UV3fRhcVDcRRGanlPFAyZDMBWpTILfoKYDCSgMYsO
	 TuZhVZcwZXaY+PJF45CfMfKMGSFYPodpwC14hJ+VJgbAreGQDUtFjJzN5OqLIQBdqU
	 YwMLmB/EGgwhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910C7C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174637619357.19865.12063577661881904075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a1a66853f050508a757814a7ac860c45c35d08f35b2b66a0dd8f41577266579
Date: Sun, 04 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746376193
