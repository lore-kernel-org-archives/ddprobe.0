Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476B4FC0B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737160554; cv=none; b=G9Z3WO0o/3r9w+luanigA1uw3sjtkGEaNTX/fic3GntDZX8pRAsxbzEECEcqCQSQ3/esRkU/8Kv9wY1bZRIl3D2uwQ5/aIB9kHpoE+FC9MuVBZ+GRCmkyjgRwoqLncTSxcm/rH83OmSVBc7tRA50UF7jcKFWyB0oX4vgd1yOnZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737160554; c=relaxed/simple;
	bh=HgEMwdxOrhrZiCCXA4cCiV79gA64NdbCU7MYubfDVTM=;
	h=To:Subject:From:Message-Id:Date; b=fpN5kp6/sES0QJjqpWRe0TKEb80W23aNKzGMrMXL2kTDU3vzEbbrY5EEm/BiKOPhYqddNnMFM+Vrtf3UP4vHDVKWBDKmOtcwIWDETqkF+3+0UJRq/y0ogrAbn6kUzIiMQyaotBos0AlBB3/4EBK6fQj/CXA0V9LkBVPbB9jziCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lup+f9mn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lup+f9mn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD52FC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737160553;
	bh=HgEMwdxOrhrZiCCXA4cCiV79gA64NdbCU7MYubfDVTM=;
	h=To:Subject:From:Date:From;
	b=lup+f9mnrpXZI9BIT2e2cY/oHBuKJF4V3926aRmJBUw0tz47Iz77eoqc6di5zVfud
	 NRkRhQyknlQaJZ9llrB/REtARtgO3fILf6VrZleevqEPuBsoygdUQY4UpO0j8gnJRk
	 atPg5V5U3weiQ+UR5hWB0RBHL4QtWqeDescd5WL0l62NanSX0YGxJgQiHyz4PQmDbF
	 l3/dGYdByC3BhWW0sKF58xKUjVQlRRX5SCrwLiu2M8pDcmvRpI7ftkSP//vMnTXiap
	 8op8DALF/KsakQyRU13a5Uup1lOBpRCer5RF8l6Wj5pzavOvtPo1oh+ZwJ1IG8aRBu
	 6Ca34lro76JTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94021C02183
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173716055359.23194.9926115632839867415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9231a9bb3e933548ed0e7bed2e9298e04749ee8139ae3f33b900b8beb8ab45d9
Date: Sat, 18 Jan 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737160553
