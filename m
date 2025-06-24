Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2328222D4C3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750809596; cv=none; b=ApdCVbY6TWxP2UTmCVB2e2ni5FE4wGXQAdHrCBYmQ2G9XdRGVclY1Ti4Izj5rLZulEhrYnMb2kEfF5UiMfV5VOaS5rVfD60C+zydmH94PVMWn8RLnlv5hbK43xo7Plct/D+HfleOAVD1v//o4dhvPhXGye51K65A5HbEuhYaIwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750809596; c=relaxed/simple;
	bh=9DoZuXeET5RZMIVvBQMEWo0j+VOjS+zRCDgTcDthTJQ=;
	h=To:Subject:From:Message-Id:Date; b=SP2QMrf0sgiWgryZPgXiP3ui1hRvFvh35mxFFuLDizEyBiRMqtn4erCMvxqBdjpVvWlc6LvSZLUpIN7BcZxN+wENYygMZ5TyDRrYYU3iYVR/SQ4Q1HzZAl1zOXgDESWB0M8rmhdKAzgbPnG3QobEFRL4FHBaeH7NmY8GKjx3Ozo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDHW0l9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDHW0l9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DA6C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750809593;
	bh=9DoZuXeET5RZMIVvBQMEWo0j+VOjS+zRCDgTcDthTJQ=;
	h=To:Subject:From:Date:From;
	b=jDHW0l9xAjddv+toQ4N5M/9wWjRsuR7zNyAnx/j2ufy5oHLB9Ge+JPhPJmqe6OceR
	 f1RgtMQe2Zm8QvjSzvUNBW2O3UyFu7IXRYva137NXAB/VYg/4d3+uXcFOkv+F/VSHM
	 IUNNEJqvYTNH6At/ZXexHCo8gPmlCV2HBYSmsKHQhmQc3s6ltavubp4lvgWIH8ofDk
	 8gAIWH/CwYO9kULX9SNYSICwDLFxtO+S5i/GmfQXyR7KQe4jAxGtrUVfI972NbSmfy
	 sIT/KEMwqSqP/Ts8vmeDIymUD8CGE9q/EuobgFnIlSdVcO7Jvu75BfpeKul8yC8RYe
	 zVigweSQgMYrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F032C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175080959357.3550.9895359098954545009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fc7f04b0135acc96424dbb80c1785aa6d541e544512d622914d110f563cf0f7
Date: Tue, 24 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750809593
