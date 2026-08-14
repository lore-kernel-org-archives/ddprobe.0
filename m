Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E652F7F07
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786689634; cv=none; b=CCnxKVfYTvPS8CpCmRHVSRY8zoC7K4sbKjaSjX3/vxInFaS4x4SN5lUMvMTzjtpDggbwjPN18PPha53t/r0Wj6xCFbesQ7Z1r8DZWgQwZtPuWuI+psGD802SU328iUeD75dgmJHK7MB8RniFDW3EvKZmuZCZP7McuTj3aUIqIlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786689634; c=relaxed/simple;
	bh=FDb6s7MZA2EZ8f3A8E/nBtpoEdTHl7PL+brWlMui48U=;
	h=To:Subject:From:Message-Id:Date; b=ZrO7zE4muZ/TnIdBbdDIlsKZgd8XuymJqEP4WnA4HL106It9Ycvg3q2bJ6/tja5+O6yAhyeN5Pz4xU1wZGoJORW0sZMWI2bspmKYwgVNIHrVOYQpkUf6qTG9iO5zMiyx0OBdkut1ywD8xJdBLgrrHPp2RqDSBW53aq4FIEDTPIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XRsWN1aU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XRsWN1aU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE398C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786689633;
	bh=FDb6s7MZA2EZ8f3A8E/nBtpoEdTHl7PL+brWlMui48U=;
	h=To:Subject:From:Date:From;
	b=XRsWN1aUJ3SBQmNUewItw6Tu3Hxm9rrrlQUVLG1aHWG2Pq/2VFv+ovojFvEdxrCaB
	 lUWCdj5qGebgaVBbpDBE4gef/Qbd7M5lbOC24m0Vs0pgp7uYosRWABsYQYdCdtQ1At
	 Fgt7vOBR3OPz2kGR+kqnK74h2L+X6UgVFHCywDnioKn5KJmKhBix3NwhRjWskDbCpc
	 VhTVmMI0BUyn0d/qibGN/g8rM5pjy7WYgdreaqXDy2a5nlbwHV0C4y4P6B+rxQJLfY
	 wGv1H1e5ImQ+lSH4/kcEG7IeGlpoh2an8iOUmtAF0O3uaRAaLwI10vyJFXqxUqIFdV
	 LXn9hj6Z6gTQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE76AC5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178668963368.9436.17961214585028843118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7cb8b6e93071c9fc3ffc81ce3885ec6ce10d6926df558c4c4c6ccbdda4042ff
Date: Fri, 14 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786689633
