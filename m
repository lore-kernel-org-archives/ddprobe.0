Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F24A367B68
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 12:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781007934; cv=none; b=oEAY6N7hLqPqltdm2O9jke+0XdW2PsiI9XYDcMpWA8k1ngsyxnEXoawNdSXZ3sN0rUM+9PCDyPQhbYI1BB6dsVbuWmkSRm2a5m7wpDPoqblruBtLKGK+3ibsrndy3g/fwVT5RZXaxTP8LEGYMqWMM8WMV4JP9u9e1BNL3IcmSzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781007934; c=relaxed/simple;
	bh=cT6tx35phyy1Pa3phvHL2y56RAl5LKt+wFKH48y+qas=;
	h=To:Subject:From:Message-Id:Date; b=ktuyEqibot0BwIwTb1ruv/OlUbiI2jtnyIWWvNgV0uVnvIlIUh4X1FcPmoZ1DRtnn0TqvB1Uc0MzFlRdRN26Gad+Oa/PqmY0qTQRoC+bNRp9weequu0NHp7ZFBrEGRKhu7Xi8fuyu8pz6xiGUe8B63dONK98eB4wGwlF6rOcxMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAoH1t2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAoH1t2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4227C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 12:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781007933;
	bh=cT6tx35phyy1Pa3phvHL2y56RAl5LKt+wFKH48y+qas=;
	h=To:Subject:From:Date:From;
	b=XAoH1t2m3KvJ4xndh6QBH++aNWXP5MHqCm7j42J/PiVmGvdQ5zfUrZ6KE1clB2UBw
	 PvKh3Xg5XLwtrn9oCkXdgiEpndmEJdMj3/tJS0110SVLxnleYuAzISdG+oPxPXI+Mk
	 tQgRa2HfsjeLtf/UdHt5/mxYV3Hp41rk+8p3OGRnDmX/rZ/w/0DZvYM9kTO8bMglOx
	 XDh3+l58Ugw6wjWbxzyEm6igpmEftl4EgGEWUP6InqT+6c1MAOBz1OZp550ZyO/G4a
	 GIka8IrBykZz65Z8iu2F1j1e9z34J9/ZGP3knFM4bvIkPzixFBpjkwJPkeNB6fizBI
	 DMN0N+t2Fi+iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03A8CD8CA4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 12:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178100793371.31586.15599203699510093561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 147526a1969821e28026987e4558b68ccd4f812081933c803345e370db53cd2e
Date: Tue, 09 Jun 2026 12:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781007933
