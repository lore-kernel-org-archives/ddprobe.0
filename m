Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53ED43BB9F3
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 09:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784627314; cv=none; b=TR+nDZB6LZUw2xRaS+p2OCi44gnzhHfVzxkSO0stB+7MXeGJCXgTCC07Ef6Xiea3dTtL4voNApFOaJstKSD7QpEzJmXoPGGoY4r+wLl1JfuFOM6O6sCPojWpxlu7AYyC6ctT/PlCdQvM7aoXAjAvFY4kitLolWwjdcYdzfg+P/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784627314; c=relaxed/simple;
	bh=pDMwlwrk+qoUiDIQV1ZgaXhy2iO9fVYO3hwg6u7iWK4=;
	h=To:Subject:From:Message-Id:Date; b=CEoY3KyL0zyemaircGhUpT8l2nBLaag800VaYk/Kr7eoMwD2G31Oq6ewyIWFU1j3O+qSBgsfRjKypvnKL3lLO2+F7UBcjOLszr/sIXox82QuPbHiRP8SyAaX+W22LV8Il/K2yuRrp5ZIfE3VdTOIGyYYuOUQizXrDmT8Xygh+bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbAzurNO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbAzurNO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2744C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784627313;
	bh=pDMwlwrk+qoUiDIQV1ZgaXhy2iO9fVYO3hwg6u7iWK4=;
	h=To:Subject:From:Date:From;
	b=YbAzurNOXiQDdCe3Va7PJ506LNp81a7tvaf2q8wQWMIxTK0xLVpSw+HWJv6Z/L4M4
	 Guvvd6fHmCrDDbgN+BKuK/ZJqEYFVJInExJ1BUDJq74nER7yHaU0Fyle60LpK0Q7tB
	 JKppMjt783Jri9emTJreUO4hoKOvSI4v4E1HZV3sWYa0ae5bBmBZhWEZjwttWKmFkA
	 DwQc0du4ZvTxvZr0BiAhg6YhV4KcZcWapGmGOmgmcloGZFNhq40IGBGEiHKxI0hczJ
	 ffCH35o6mAN+qhqWI77U51nPks80X91TDiFOBxgf3GSbRoe+6q6Q62xdZExf6ANRXS
	 XXzzZP+LlmWzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD741C4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178462731370.22106.11991515012206178683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb03d54aba8b6251f6fe66af879f20bfffa1939891157257985fda9419323bca
Date: Tue, 21 Jul 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784627313
