Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FFE2EFDAD
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757322594; cv=none; b=qdww3q/PWTA5dHHBDwdOBup5lJdbqiYGZifRO/7z5buayqFwvcMNutGGEMXjKYQokrkmck5wSsa4PdyJrOOkQ08c5TWLpOapYNUD2ScgS8MTXhj1PG+xGX/S2P0XlbGsLSwc3BCHyGm7MRGucATAuxWBqQXAzUFllqjxpGhVbuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757322594; c=relaxed/simple;
	bh=uOZkeQYNBQol73QG77sWRDOmWB8EwtOPDsEpKMWpj5o=;
	h=To:Subject:From:Message-Id:Date; b=o2t0bNql4wDZwMiAE23xaKCms8sDTiVw6Tqu3i39Q3FgkWUIjfGrWe+jtCueLD3zMos3SgcMq92Yo5z3KZeqDK3+Jj2T3X0BZmu3vLIMb/9cNyD5DCf0DnPYNBRX80ycj1PL9J7LZmPImbYkojQWsWceOq8qMc4mRy5TDxViuQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+jGNAhk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+jGNAhk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F142C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757322593;
	bh=uOZkeQYNBQol73QG77sWRDOmWB8EwtOPDsEpKMWpj5o=;
	h=To:Subject:From:Date:From;
	b=p+jGNAhkYS1hKECyL3BCKlEMhzzul8toVO0vloPJXEhHqGi6OVQwZj5efxC+rTS+C
	 QZz0/ele/BeDy7mdBLSVch65ffmVR4A2eKVVFSTzT1DoVjQeYazZg4nxLq7/2LS+VD
	 Y1700gQKDpfmQEotfTIT3CRvbHLM/gGflzB6pYuoV47jbDkbEox/yYynKVb+SVHonT
	 KmoWF8g/2MMAuBaOko44Tj2r9o9ZXtoCLQxUwD/RGqk7ZS+IGxtn8ZsAg7dGywx3sz
	 pbY6+X8VwL1/4/btPA8MNquHb9HYzJgmytLWORC2DXPdq0cZBwCE5iH4wVDM1Gg3x7
	 eOtckf84pLaeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90336CA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175732259358.26049.7842679278163654021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff8373e30b5bf0d03654d140cc9d81c3cc2d9d42f3171e8a55ace47da62aed1
Date: Mon, 08 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757322593
