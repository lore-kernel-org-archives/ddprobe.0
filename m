Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D101DF968
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752721794; cv=none; b=rg+DEugS4yc4a7Q8H5BqJ0x99yrPs/0htkDQOYCZ4ZqlsYAJhJjsXjdOwbfZXCfLYYx9zBZAdxeaAd1wfVONZmeOjWOA4j1fQRCXlDSiAArbt3oPP/X9lWtEYMb8qQEth1Nx9mT8NG9H/+1GCJ+wPJ4zc+U/f39U/gJo7XFPiMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752721794; c=relaxed/simple;
	bh=zHNwnnf3xxgvjmefXYfJnH0TEujElUmxsrDRRAq3LfA=;
	h=To:Subject:From:Message-Id:Date; b=cE6zjPZDzMkarMQF5xT1nbN78nFk192BCUcIUYpWUwI2IKpxO2CUD5DMhsxFmv08uW732Y08SiMQAf1snhGDzOVOWd31U1nDWLcwV6mvuN6BE+NttHpaAdstNBo2bGjhCUU0WkTY+0cVdVlHVM32C48irx/XIHNz7Yp4f1w2ztg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V42o1Yu6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V42o1Yu6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A353AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752721793;
	bh=zHNwnnf3xxgvjmefXYfJnH0TEujElUmxsrDRRAq3LfA=;
	h=To:Subject:From:Date:From;
	b=V42o1Yu6Nb7R0F2Bpyyj47cCFMx/D4q55vIQ9RR056E4Nwmf7zsJyuu8MCRvB003P
	 D/Sor0oWCOVbQdGrz5zGgwEiYisY8fop5Qsu000wynMpGVt3EpZzjk2gm5Z8RR5QEO
	 jPxwSYtuyW9ZPxEDcunJRa6eSL+HDTDDoF6bq3sSt4dC+vYVHD5HtnIvflt/Ev57H/
	 6vt4Icsj9IcT68nAnnVjgeEJU7NejxkHx1PqtbPiRaeyiTTB5NZmRFTEs7Kx8eXm+O
	 cbtG2BJpvOJTYVCXdvysxG6E7X6nLO5Ykx+04stBnwkkO/af23bjZ5mNDW5ZdYM/Ri
	 FNPkeQWg2g6pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCAFC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175272179357.28667.12610002087594706151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c6c9e446b9c6973cfa79f54a0ad55b0c547015ab7d70a2db2d3c7d3f1272bfa
Date: Thu, 17 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752721793
