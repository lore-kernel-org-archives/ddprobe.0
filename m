Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F2F36212D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777209454; cv=none; b=bKaxeDtToyuslHBaN/Od+x08S7pFFsW5mgzpF13s661Tped2OLQx3D1o61spKC8/JdbSFYhcXmwhuAsHoo/STN8swURwNF320KdtRod9/84kJ/f6aTrJw6vhjVQonkJKlVHoouDM4sU1L0fZL9cGTMCIdJJCj3n4H40WgMByPcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777209454; c=relaxed/simple;
	bh=r8+40bTMzf3n41Cw5deQRhwczsYaCVOO71m1f0o2x4I=;
	h=To:Subject:From:Message-Id:Date; b=GgSvL7ecDozlFcF13bjDRAhzRYaOTtu/B+tdnBqpq+9UNsxU/GLCmdG3uLXFjcny4fkejdar9dOKFvjW9gL9qBQKc5sNNrTuVWYUyknCoFfV9VZ4SF5NneUxTTAEwIDDlklLTCsvugoG/XK46PvSOaToK+6PQ/nAfTgFMSggPmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IzO0MM4E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IzO0MM4E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBDC5C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777209453;
	bh=r8+40bTMzf3n41Cw5deQRhwczsYaCVOO71m1f0o2x4I=;
	h=To:Subject:From:Date:From;
	b=IzO0MM4EW4W2bxCZMocTFNYe/ub4JSWE7VfU+DllsrM1iJvVb0+TPeYDv8oDuCQHt
	 ZjJrtD/wB+b5HCp5WI3rJ8PCJ2Aa+Hl5N41dKO7eQUXijYNJCXok48lZ1vWLsyTs/d
	 ix3ae58KP8qHlnLedAjmpvrh0xbXIn35x4Olyaqb7CcT+Uk1F8mI6t+mIPcyOnGbcK
	 jfCglvhPD8/hCwc9E2TGTLp+Xp4wIG/hj7bwlwEqxECb/eW76+liHSBX5CJ/gPA+cN
	 5YT0lVtS/n17AnuoIPO1MhFrjLhRf6b5S7DuVoZ/bIUUbE/9rxgEMEBfhlhdQ0X1dz
	 Kyr6aRQdHSCww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA3EFF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177720945368.31631.12227521346801190693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1697713358104fd96c8a1e5384a813a330941b69022fbdda1fd25a41d791bf0f
Date: Sun, 26 Apr 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777209453
