Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D71F3DC4A0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 20:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780604074; cv=none; b=OViaSQ3LiJY4BAbWWh08pJ6PuBEdCMiNkD4T/i5w/ELTnIvE+sw5CODyp2wUHc7TaSKXtAlmY+Fpb/lCvgL5JFECDwNIbUT/uAGnIrAWj83wJd/Aonjbl/k0TsvlKtYMXHTEHNjeP3ZUGWhalo+OeK+bff/le4L1fy63HdI548o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780604074; c=relaxed/simple;
	bh=pbHUVGrGNuKiKFmrd2H3vctlNiwVQ1LUhyDsQ6HUmVg=;
	h=To:Subject:From:Message-Id:Date; b=NuCLl7tIxYNZtljZsWdu9vE7oeAtxEtZTQPnNNvQJLnaCNdBjtzOba869rEty4ObXRcc5nCAxdUvVqVIh8QQN28SbkDphEDhGh/8gukaicUsh7+RO7HsatL1/NzzsHlRQaqOLDwLUFUmxec+4E7HrBH19DsN4qmsFQ21FnUvUrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJ1SKf6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJ1SKf6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C468BC2BCC4
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 20:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780604073;
	bh=pbHUVGrGNuKiKFmrd2H3vctlNiwVQ1LUhyDsQ6HUmVg=;
	h=To:Subject:From:Date:From;
	b=mJ1SKf6Pd9q55s5gD2evP/G0zS99Po9moSLgj65l8W97jylYNyQzrUVpgj6NnEQ2o
	 Es/eqv9unCAoO6crFRKen8xZLCVacojTCKuVMstZ1TyDYRyLeVGj4WU+Z1vlRL1z1s
	 5mPO5GL1SDOdXR2t7Ja+G5dwJXUqiSDkQf1z5c3ZQs2LTj2+J651smkafrP4WW0fwY
	 QukxGgQ2J9rRz38XUY4UxvTYn4A/ZUNOq5TTGMi2jCcr/Nwnwrkez5UgMaEplrlKf+
	 7BwFJGE0f2T7TrTRt8Do7M7fEapRco2AZYdB4TTjjXmP0vV89zQxmn5125097d7LBR
	 YmgMdTQhbAotQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBC7CD6E6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 20:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178060407369.6886.10091464964700944836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cf28e9516d81ede70c79b3bf45d0eb9e0796a1d6fdf19473cda467cdd65c6a7
Date: Thu, 04 Jun 2026 20:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780604073
