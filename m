Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93061B7FB
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706249897; cv=none; b=PyHMp3QuF/KCKMa4NIV1hfbN/viblZdsJIyo/dmNJ2I2Pmqt+kNXGopEESEuRUCAJIGRYVYIwd2a1TUapj2zxD/gUQRYNAlUxx2eJtsj25ZkPzyMNRi02osLamTVuCCEHGkn2mLCnDQx7lkKHWOGq2ViWQ+AC4n9JEvjrUKNhlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706249897; c=relaxed/simple;
	bh=Hd/d2R2p6tcCSgRy+Id+QESri6HZpxM89HgDeTaRYxY=;
	h=To:Subject:From:Message-Id:Date; b=LD6uMuEF/qmUk/24JvSi+fAPVnY1UXaLBVxsbjks4KrGnRtPwy4QOCdJ9pGSzyTK4oqvudaWE5nsclF7Em0P4XxY7ZvU4yBArknCCJZ8FOqlOdjBIicp3RuXZs8OJ/+/+vbJg0E61IkZi7+8EEqh5uUbZgKUJNwTwa3GXrsl7iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMXLKt6D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMXLKt6D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 730E2C433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706249896;
	bh=Hd/d2R2p6tcCSgRy+Id+QESri6HZpxM89HgDeTaRYxY=;
	h=To:Subject:From:Date:From;
	b=nMXLKt6Dbm7+E4QW01JVqco295Q704+44An5TCgU5ZpPQv4CPnrL8hSi9MFXcmn2U
	 yAGMTzOR+aU2abYxBV/HU1MDbqCY67/62A7q1kRigdpDb5rL19WL2lQdLRFCpqepd6
	 ZRYPG39in1D1hHu89D9tC2Bo14Vzbx4dkbx5Ojv2l7BUJZHcAoUnshG/13A6xzEodY
	 YAZu78BWF5RYm1y13EqkKo6XwWUZJRtqk9tK4aJbDwoXJK6u6G6cALExUiglLoHGBV
	 YnuTRJ7GVJtG2sKTshf0FfVnis2cK0auWZCSENDM4x2XP0PXjdMEmjJZc/cAR6QHqZ
	 bu+1Vf1IC8XyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D0B8C47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170624989637.25746.9201244088871774207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d33b9f9ed0e500d31ffef1239eab43ec956ea26c342036b33b5d6fb273f6e4cb
Date: Fri, 26 Jan 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706249896
