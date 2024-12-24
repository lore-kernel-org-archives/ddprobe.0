Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272331B3926
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735056354; cv=none; b=YG4O2+QQPrXYL48rznEFcp3Ao/n+FqQR0aChuDsMP1rj5nPoQWkLX/LRtkELkGEyEvJUFI+/0sX7uOpCYq1Zuis+O0kDhNfJk6/Oiwzuq0LwAa2h/6W9KT5bbMIQZRto6V+0WI54GHETtZeCDYz0LnkiukmntHLfbLAZ3DtRTDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735056354; c=relaxed/simple;
	bh=8+eHEH23FWzqAkVJRwJPENc4sIdIR87gYi6lcypFLhM=;
	h=To:Subject:From:Message-Id:Date; b=ZmVWosfdXO5cEWeQXw+/asvNFEy+m+nBVKX9lji5oQ5zqCL0ECQ05jt/84V0SBwAHZwoa2uro8XdNjdzEPQjFEBu15BEibjMnoxoflJqSg3bQbH5rAUrGXQOp+JKTVoZFFRnt0QHplEZTlEZqljHzOpwcoMIYKA8PmXBYfRsqyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8EgclP9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8EgclP9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E37C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735056353;
	bh=8+eHEH23FWzqAkVJRwJPENc4sIdIR87gYi6lcypFLhM=;
	h=To:Subject:From:Date:From;
	b=K8EgclP9tlR9Op6d4nT1trxlxHAxKT34tnhfZ/U3LBqE5Y9TM2Vd/pqhrzKX/kDgl
	 VViiCVyWX5q0Hjo4KpvoW+j6bXvR+lHRXaxs9wgHeIQDKr6DTkmLiQCcjgRWpgsIvi
	 aPBAK76+oOzF+NtNDm6cLzq2R4LC75MM3nO4yYW7r3Cer/NQAhS3fLfWw6XoYxl2HE
	 Kofp8okenT2vI0XjxnSDrXWCi87+ZMMYiYgFJLaPW7DPxNSohmdKTEGKar/jrt9T1m
	 lTVLWK/8LSnQgt0TM0DagWLqf7KKHVFD47+LzUgOokF3GhdxskDJ9TU+y77md44Qok
	 UmuZC1g0IcDBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9551DE77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173505635360.6267.17680007370508497040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 628815747724f81745a660fd7c797e7ca24b7c7994086ac8a23305d47f31a1c3
Date: Tue, 24 Dec 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735056353
