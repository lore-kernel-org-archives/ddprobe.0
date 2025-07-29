Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1958A230D08
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753763394; cv=none; b=QCNyobP/BOy4/KOVDjFwSibhKt9fbB+lL/Tb0AxcR17Uj/g0QWw81PMIEUJU8ThUxdtpGtkJAkgCz5yz7rSohfwpa7BJodLpYbXkL2s6i7iAqApsR86tSMznMEz7p9OgFAwdiai6/lvNOC7hwcvtpyUzL9I2TTXtxlAOLytzDxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753763394; c=relaxed/simple;
	bh=IE5BjbQwRGySe1OQVzLzJGmJKWHdvwHnEbNcajrk5qM=;
	h=To:Subject:From:Message-Id:Date; b=GKKkBmHhtQFlGVRyJA0g+rjiGr4nV7r97XJgGPQdlFK/tlRlGTS6z/i4446fqS0qiKSJgzgEYLmdtP0Oukta2PM3wpDF3aNwJ3fpjYsZ181UldfuFFGy5769eBFGdZsz1pdlYLtAZ8AhvL5VzHc1hytJvgCE8+bcntCMixkGm+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqvGfB8N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqvGfB8N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EDAC4CEF9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753763393;
	bh=IE5BjbQwRGySe1OQVzLzJGmJKWHdvwHnEbNcajrk5qM=;
	h=To:Subject:From:Date:From;
	b=pqvGfB8Ni//QfDgaDNXVdV6MalM3R4xx2EGY1GBDYe7R2iwcVpXbRQIq5OVnCJDqU
	 VWX3mPqc9XSceYHXcxsGuDx87LpDyDyIncLBypXm+ddER4QqaqyDCdGO85qUFiIchs
	 z/nXfbuzC9RkcsQMi28QHFVXqsyMennDTxSPd8GcDTvJ7HJmpDm+9lICyUmcJrEWAx
	 AvbT5TxSZMwYBSUAgXWtldBGX2veFMVYKmjdXD4NDt/6VFb/5vZ290nipW9Ee9prHq
	 1yqlfZtgi0kyE99rEcckC/YjunTFu8tF55kb9lO1tHz5hDQf7CyLDGdFeDX4ZnZtil
	 fB1IPQi0jffXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906D6C87FCA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175376339358.2193.111678898182204162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4a18cfdfdee6ca1b60f23573e057c84d0adb13988908a960fc370ecee41d205
Date: Tue, 29 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753763393
