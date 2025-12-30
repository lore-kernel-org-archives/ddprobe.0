Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C644921D00A
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767115433; cv=none; b=U1IEVaLtzjmrxSisPwAauJQujbOs/cQM6Tm353sFliLiAjhyVXzrRCZOfd0YevzKgUQVywJ6T5IM16Rq3LX6Z3AUQ/l7rBlZrMNU/gyMGKGTkvxFoUaZdlhQ5+ex9JvMGvJT/56km8Wpl07qSZlJMRraKi+YK5CDuO/gbOnFwMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767115433; c=relaxed/simple;
	bh=bC+eYg5xPn0Fug3CI727lOx+inN4rdVYZedeonKlMHs=;
	h=To:Subject:From:Message-Id:Date; b=fqTR+WjZpWjezrj5PXhbg1EPW8uULkkDclowYLkgM6fEOVb4jwwcincOfRCfICpk0hdhXeOTyxLnHWvaSlJPGOXMpNQ4Gx6P64impcSOCKOLQ1DbaGIY29pvElIdJuLyXpUaJnVTPhytxODK8HMu0c2CaNtPe1Kga4Jgv2PKMxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnBdBjFp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnBdBjFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C235C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767115433;
	bh=bC+eYg5xPn0Fug3CI727lOx+inN4rdVYZedeonKlMHs=;
	h=To:Subject:From:Date:From;
	b=OnBdBjFpL3j4LnPKoZi3hyEQV499+QTjIvlK/baxnTnBbp+HiDYiTcfcVqHV+gXx0
	 ek/5Ge1Z2Lr7Kb2VcRFSVLueKmFHKmGWVqEeXCOWxD6ONm98d19m5AVrlp11Zw1p3j
	 PN+Up/cbenQULlJgqAJ8Ho5c+OKYvAS4aYEObYp9RLt0re+yI8DggrC20iCqHiDcBo
	 89cgvxkZTcdAcN/izAhgG/lwWyZIlYzhnt4VJImX4ICOpmC7VsN7qqnw67keeB1SfB
	 jq4giEdnmoPZT9ISrLJooC19hGi7LdHvPHjAT23nhVRiAlfJLAHR9OPeG9vAj8UxjZ
	 UoxSbvNEo/Dqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAFCEE498F
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176711543357.28386.1166322957539807022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d32fbdb83d13f31318d9bc7201482167836f7398a3293fd3fed2d1ce621fefef
Date: Tue, 30 Dec 2025 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767115433
