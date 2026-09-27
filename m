Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F86F3A1D14
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790500234; cv=none; b=YkgHe2GMjsnZXsGRwIdR+LfXrC1XcIoh5nXYdLIYOLixeKDNVCjE8R1D6FWAJzgLFfytNkDvMWN9xEq9NGQifWrCnkRqzJmrZr07A8Jvek2oVI8kNvGWARO/erZ1ON8Nk1Ve5zfFPaMLmJVdYrpjISeV0SEA0Nm94yUDXgVqZh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790500234; c=relaxed/simple;
	bh=JlXYIjQ3mdqYmpqbjNGTuQGHjtbEKH8sGqozQHHrlSs=;
	h=To:Subject:From:Message-Id:Date; b=AxImU00kd7GvROYw/6JZF0zh3I03WCgAYiqxsQt9ea5r3pLpIsDiEyN6+Jh0+wgm0RfXjseBoyTpsxXzC3YdVcYq03BL9qbjKihP8Mau9kPTWNhdDIFgzhKakkBsudgYsnyqefd++rAhPF/JAY6U/KSrj+6/T7zxW1gkEYkW8EQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smvslQ5T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smvslQ5T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF271C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790500233;
	bh=JlXYIjQ3mdqYmpqbjNGTuQGHjtbEKH8sGqozQHHrlSs=;
	h=To:Subject:From:Date:From;
	b=smvslQ5TTkSyEPZqVftGRiR8gnznCaq0qheSafReapBty37UcrpKkML2sC+bVZCtO
	 nnzHHmT72SCTcInEizKiZa9I7Lft7uDg7xEY4iFOgzFDqmVyDt5AnO46/8pKZudHZP
	 m/d4ZUdYIFzg7UJUh7MmgT6LECHlHPF3eU5tvjaphqAowgQjYp2vFRzR7dMIJQzB1t
	 V1bx8dylTBbLkPBBy7KnY77maGt69DCbmhB8ne9y8S8TU4ZbewA1Uo/LC0ElOCwjEB
	 ecuwS03lDpBorm5C1TX2mU+YESCHxKt/Pj7GxDVcftumG76mlf4aVlkakjbaZuXzzl
	 bqqo0agpNYOMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC661C98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179050023369.26104.3750683188364533357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bc879e222e8c7464adcc1bd5ce1d5e35549e4946437cf5ca181c38cac02a55f
Date: Sun, 27 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790500233
