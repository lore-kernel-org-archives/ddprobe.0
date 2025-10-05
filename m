Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C682126C05
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759691994; cv=none; b=V0nkLlBJRcbMhCsNQIpSOkGLgl5cnR091+p/Aba7LBumVDn9bqnuEwGtL9DDTx293Ir9qkTxc1Y95CrWfaKrW/YDU8Xedl4KKAVpb25lvA/0PTx5MeDS/16FSoTb3/dsDtEV8S+siImplocKhAclFdi5DnYBGCazopK9UYjC5qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759691994; c=relaxed/simple;
	bh=wQrmJhHLerxD3AAiscNHoR41ZMPicjHMz6nINAps74s=;
	h=To:Subject:From:Message-Id:Date; b=el6U2/lYNTQLqyQ4hmPbRpN5xnqBEq6zNIF/vn0HqmJcaYLffRXk8vt2sHiLxT9l2WTP2vw6cqqfQh504cVfN1mPzKSY+RdHrKoBXo/tTzOm9u2QG0NqSGDszXsECpuEhHJkbdqqzNcpOEe1w0IdBiAdD5A5Xos7SVDIbRqjNGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9v0Uoyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9v0Uoyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DCFC4CEFE
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759691993;
	bh=wQrmJhHLerxD3AAiscNHoR41ZMPicjHMz6nINAps74s=;
	h=To:Subject:From:Date:From;
	b=E9v0UoyrXYzja9jxmLItcPYh/wkNmjq8FIiuAsIVOnL3ozfzzeY04mSSx6AlWU1Lh
	 ng2yomisewHaHrE4HEATR9LHMSzNKn3mvvlsGxm4HlrTYT5sYXXxQt0jFvSzHWysxh
	 qFbRuH14DbUrmlRHdfjAWNGxj8DiCQv8/zWYcwbjIkaxbiAofmF56HSDpqlSuvyLF5
	 grIQRpyvuVpcrn9kRuzGV/CqTCnGAjHrY3QPSpX3ksL2PaPppNJ3srJGPKc6JSd4KK
	 Y46nsDvsrjUpv82inNOhq7/JeZsCPwHupeQFYZbFEPHrWKAXWhzXPePHaGbeosTWnb
	 C8ABo3WlMaDvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAA5CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175969199358.14842.6076494474289127986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b5cce698cf0eba74cd3c868ca29a7cad154f75c17be218504d844333c845510
Date: Sun, 05 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759691993
