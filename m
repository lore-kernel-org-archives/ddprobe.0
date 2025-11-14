Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207F629D27A
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763159994; cv=none; b=f9oo0M0LABhG2zCiW/aW7cIAs/aOc8EVUfnPjUDvuN2FTvSbQ7iJBP0xfOXTi9TvMseXFiBTyplWl9WOksXIbcRjDn7ZSR2jT9ngL84MCW1VrP1iMEGYjBMunurnDZ/SgBarbrEKy1r9NBZN2SkkhoXIs3pOuXF5NPvoPX59HCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763159994; c=relaxed/simple;
	bh=wVhDez5k34C6zzwxCJYf9UTRJMZ76f3qpuDDfIkOh6E=;
	h=To:Subject:From:Message-Id:Date; b=NTCyJJNHRqxQvz8JGm7E2MXQyFSI7FNgOL3IYcChjGa5XAY2Kf+5BhdS866X6MF4dDeRpuPCV42T0JLX13yLXTGqLO9I5V6GRj60+q4XKQE+vpkKr0E1DkLTTdOP76TZtDY3GuJLvqBc9Ur7G0EdFCfpsMnRkutuvRUawFM0NxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvFP5Mpv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvFP5Mpv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BDFFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763159993;
	bh=wVhDez5k34C6zzwxCJYf9UTRJMZ76f3qpuDDfIkOh6E=;
	h=To:Subject:From:Date:From;
	b=pvFP5MpvOJ220UbCyD8CW7BLoBpEsRCq47ZFsM6uUxhtEpZCLyEId27peC1gHeD5G
	 4lA152up2DyKNziDGKGVlR3zhd14jQ8OqVxmLTJTcHC6Xdn/nzfV1O2kh9OoQU77NG
	 RewUOQEGGKpbfIEaF2ze3Jw2Oq37v7zQlrdsk7xfdBBy69w8ujK81glrPFe2coP2H4
	 hJ/F2nx/0B/fGOfD3E3f5SSNoSM4PATUCarjVS8BkaPr7mpEbAvF76CcxQQ2VrqSXA
	 3FzUHxOL0smfvC4J9s6dQjoCH5wv03N+HI33gK8YUWg5MX7Uf0sFg7V2OTr2BN4Yep
	 hE7m41J8whf5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F90FCEACCC
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176315999358.10092.6594389781590320827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e913f8c6cf46555aa0f717e0af1114379247105379ece817bb9f2db2468519fd
Date: Fri, 14 Nov 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763159993
