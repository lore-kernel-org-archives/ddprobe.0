Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C3119D886
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743944994; cv=none; b=PAopLalLcDgJryBBDDLOLKzFlXHhuybohmHNQbR/8YSgxUi+Z1/jbVX41mPi/ZIlHYEILLoPqUGWmchRBxiT8uZfI+O4tLGAJTpebS/fPnxeFx19pWbDCvCme4/a7aZHAAp0MvAMOA57MpsGE6nn7248nrj4XfRPJ3Bk97cazYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743944994; c=relaxed/simple;
	bh=IpBunGel3ktHfRIjfxOG1720xt26nAX2kx9kEJUFPFk=;
	h=To:Subject:From:Message-Id:Date; b=SXZQn3sCl586WMKJS43MamnqMuSwFK/w/gtU8F+7tGSf4ohT/Q1e28WkJch98RzyXQt9El0UFW2wAP9ocPYY/+zg+39K3R5ZL781JbYMO7O9obnG3Gr8OmucKA1A/n+95p18ves77RSzfUZIsphRxj1zR8BQ6Ukqd2PnKGewrNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pnDnOQ55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pnDnOQ55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C51F2C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743944993;
	bh=IpBunGel3ktHfRIjfxOG1720xt26nAX2kx9kEJUFPFk=;
	h=To:Subject:From:Date:From;
	b=pnDnOQ55FWmHvkyNiORX2/Nhyd2lXx37rgs+M2CSU6RwD77FtpOt49u4UDs6x1avc
	 mDuElp97hqlHGWN7Jj7rrdv8gv3JwT0Yh2Z/A7q2zT5TewN7JDP+ZS9CU431vlu7w7
	 t0CKl++e3FIUJPb0C2uvGdwDk1cy+EN/wJUcglowO2ET+0ooVK4+AauuzZrYvrXCvk
	 0nWWKANiZmnOeCsjN4WBNnuX25mptR9MToNAZFB+Muh2cmOwVDfCYKCKF4pqizw6hk
	 CRCKX+mgG3pt2AzCTrj8BYWOpxyjWuCMIWSNhfMU/6+NGqhyWLG8RKcyKplDAh/81M
	 zbEzz6MvW0Q8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF404C3601A
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174394499365.10164.10245550396052958921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ff343adc40a780800c569ece78de909e6c98147cfad32adf8d6c85c35f8382
Date: Sun, 06 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743944993
