Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358E921CA0E
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745951394; cv=none; b=IN64kinGB29TzDDDg3SQAp47bMzrOYx0LFm0vSd7kWkJSSdKuRFHd3mp1/1smaaZvwBoHEvn/f74eMNJPPuqJzHYcjgInZu4mQYwUJYNb+xOKWN5rsE8CWTa1/uL8p4/+mNN+qs/ZpJ5bgz0O0aZhLHPvpfJpc2UxaFg3nkXmEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745951394; c=relaxed/simple;
	bh=7yxMxglf6eGeZBM75O9CNm1XjR1sWZI/MTFEGbUjcIg=;
	h=To:Subject:From:Message-Id:Date; b=dSWfSvz+s57LW6kljxuJmwqKfzLa29ABpkJTSXl2k/xEsYhvl1vVrlN8Cbs6nPp2QUOPSzbFRGahb9ndxdPk+rxZuCxzkC3Zu8WV7HoqZNKQ0bjZZgAexbZHJUenzoQNgHrlwEQ2gj9SehTLtTDdevCVBDRtkkFw1QVFiJbZSZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ncxsg3Jd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ncxsg3Jd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1081C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745951393;
	bh=7yxMxglf6eGeZBM75O9CNm1XjR1sWZI/MTFEGbUjcIg=;
	h=To:Subject:From:Date:From;
	b=Ncxsg3Jd1eSrkbLxWHdvxRRGhd9rRWt8/M2UD7o7gZaq7XTnJo+iTAgv9tSKbltja
	 DRoUpINxs09KNiRJ5rz7DpI2BwUdNpCfvbh64JhpEUTe4vEgSITnleliNMmMbz7kmM
	 nZUoadlVRqLgLNp7w+j6W/U+iIlT3eRlDJuKiSP74+wfrOfus/gCOmPgheNsjsTDkn
	 2jCT59fQAMHuM2Td5w1CXZcwtqCLvTQ7FCuYjwNCwMA/ahqiVszNTPVcJO2oItBSWY
	 QDT80FvOE2XhyZGY4ifBQjwO8Vc2/MtjPkmKpJXua2Wz2mOIe2AFCpC6l5rgpS7QHt
	 fuJZMQgFoHwSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7A9C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174595139357.22009.5971436903175353055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8c5b3326995d854aaf80fe4d7c2d38a9e00afe2d0ce3ddb02e9e904e797defe
Date: Tue, 29 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745951393
