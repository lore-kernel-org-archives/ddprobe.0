Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6345B349B19
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788471634; cv=none; b=B2MvZXh7GMXVrcm2FgRyuP2kp0dCEkhrkuZs1XjqGwLHziWyMA4mwlOG1rH31kQTeL6MtO7tJzTgcUPr5L1ZpjyQdNtVwavl5Qn7jos+QocksAR5Asb9KERFDenWoeHSsYlKP4eJUX/PNTSYflCq30BJnI8G8cgfs4n6BogeqjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788471634; c=relaxed/simple;
	bh=xYo+DVXEMAGYtNz7PocVmzVSU/mPVLefNwwB4GNxMf4=;
	h=To:Subject:From:Message-Id:Date; b=SPdcGfmKDQFuv5vDlAN5yPmcL9cE1z3XJkrm4euzl/Y4BTCwDz4IsxTgm/n64jIcvis/BVMvaG1mMFNNoBd85SqIVavdpI8ZpbyZeACxoLXngFwZRaK2ns5mDok3glXn7k0/aALlz5weIoDTDz935/74vwe3WAnZ4I9mBMcwlis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyjcB289; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyjcB289"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D24C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788471633;
	bh=xYo+DVXEMAGYtNz7PocVmzVSU/mPVLefNwwB4GNxMf4=;
	h=To:Subject:From:Date:From;
	b=iyjcB2897INjr8eJX6seLiVqomFGVMqajyXGHLoaS/70kgiG/D1EkPsZIYvaZDzU9
	 jmyTdoExfrOf8Sa3qLzTigtxGpy6fBGSs/K70CvwMWpQ/+PsYGhxT6GaL3Ay5DrTKE
	 Z17RN08inRlch1LbnFqO6xELBCyrROgQZHwoHcWJ1v/Tco3csWtdg5zogb/1J3g5pk
	 OFMdkIYIryyCSVrB6u4e6fbWragAJqr/TvDgogJsFmND+y5rB6nzP1478wXLG9VYcR
	 HSePJL26P67GxS7QtO/ALr/Jp3Vmvx0YkYzXh+QQ7PB+2mhKmdc0eS+rwkwspN2KEj
	 2VgS4yfy+alhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1374C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178847163368.22407.13407693047547663164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7703c904f4bdd74d7c4c245fa9ac2204860bb45cdbd74174f874f18f29c11e0
Date: Thu, 03 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788471633
