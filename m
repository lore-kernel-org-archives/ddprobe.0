Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C95B2DB7B4
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 02:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783996114; cv=none; b=WJxzuHFR/SQEG3QCXQ63q7t58PxKB3E2dx3ycfNcIcteETATP09y7/MpT7MApHVBt0CoUp99chAFsGGMkYzMeNM4R7b5lDYeSDrPXCAAuvChKJfrS8OE2sia1q1Pbk8XK5IANn088vCbahDSUFB2dJNpQ8tRvnylvEOBvuxEm20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783996114; c=relaxed/simple;
	bh=ILmoJ8gwR2j2IB0vn2yyyqRzz0cVZ8Re5Op9sDt1Obc=;
	h=To:Subject:From:Message-Id:Date; b=BqasHk/H3946Mz17CHn7Iy8yyyW8BgUZdjMdJe+o/DoKTfQbrGfMRuyspsUBhGSNQqlqkMLB3zgCniKaqHQAHh1thnNFVwyL83+Bpvr0nhuHt10qOeRhS0eA262l3rrovwLtS/rnVe2FwqroMTDr+Bjs+lWR6VrmAYzwcKGio14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kgnlcsad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kgnlcsad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AD2C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783996113;
	bh=ILmoJ8gwR2j2IB0vn2yyyqRzz0cVZ8Re5Op9sDt1Obc=;
	h=To:Subject:From:Date:From;
	b=KgnlcsadmGs9z51DCMi3CKU/GLHKRePJKIdDjUEqA9bDUJFZk8dw68SwxVkFqzrei
	 aaKwpW2+4YbS8VEaVGnZX4TBB/jGB1GPV+ZQ6G5ZuIOamN1fCszncnkAaaBIlCeLZ4
	 vA5HGVnMd6fHOSNX0jrkSjzI80Xu8HR5YuYcZ4/lkAvaHDjRWsh8Qv5Cog5H/DGyUV
	 FSMa+w02Z9pWqifwlPFHC1H2eYwYkehvbv8sEXBjwhtw9C8gCknUKlpgEbmJxZS8nU
	 D2Ktcx7ybzichXsVeycEjLISykv8bqGnPuRO/rAGjh0zK64AGa11GhyrKnKss5Lmhw
	 1yZyQqWHBviNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE077C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178399611369.31351.13550979912491568029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a1b79327e82e075ec4e183f996c8df796504136e7a43d6a4e6e9101b80674e5
Date: Tue, 14 Jul 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783996113
