Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA7C21ABAC
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 20:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768336438; cv=none; b=Y3OKgIYgZ4hpYvSLTnSG1HRjB1hlx3hySMRLmCo4t8nThxKt49hYLUi9M8RTKfttTDTVujmwXrcLY9V/8PENjsRbi7vsQgGqWb2QbSdF/48lKxZPvrzjjDBqHget/QLOPrhlws3HSRe3t5wv7I3ffcz92E68iRO3sU0oF1EqD0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768336438; c=relaxed/simple;
	bh=FcG5BAkkw5Pt5c0qsdM9FKR4U5wryP5Etr+TFk17rM0=;
	h=To:Subject:From:Message-Id:Date; b=ae2Nh6doPb+VnmYdgHAP5k25YOjzQCWdzS7NFvMM+jZNEKfp/9eq8kfRyAi75ssU2GgC5kyOHdQDlsyyh5U2i1WlEAATf6bVYeZwiX5EEkWjtTYSM1osdCd9Qt1+0iyAzNqni6v+CBybCuop6J7ZXrHPDKkjJO+GshM+VGg8nV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFGOOtuc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFGOOtuc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F98C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768336433;
	bh=FcG5BAkkw5Pt5c0qsdM9FKR4U5wryP5Etr+TFk17rM0=;
	h=To:Subject:From:Date:From;
	b=vFGOOtucfw0DfVYUk1r9uUBeFgzNHksYU/Brfrvbg+kzV1zAmNpxkHDY+swxPaWZQ
	 D/QTxA2g0/r0VV/gU6jggVJfjTgw2uCJ7HGLk24r/rhrDOm3PDBnlWJRWWusOY4g5C
	 CL9papBu/FDoDuV8WFTQWmpTR01y83zbg4uFUSebKjpA/i+4mFAK/DLnXoGHZeDzOw
	 xgf511QBh9qjpus/CEAVWXD/p/JdbzIUwvsbl6Z6Nbq7F6jyBOlL8CAoRRKuSh+5ua
	 LPx6ygudWOAQo/GaacqjefX8CLcmdG0/rsDEf6S4VFF8gUcASSGukLB5PnjWtDH182
	 8pOTDrQERNQbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCBDD30CC0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176833643358.18121.15662131281799161247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a970d32a1430c6ceb18b75d4a80c2b31a36768dbdd38c706ac772fda26fcdda
Date: Tue, 13 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768336433
