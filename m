Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BA61C5D44
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749284994; cv=none; b=AmL76QbBepF6nAj11HB11zp2q98H8SewWUq1rp7r4cRnEKbZ1+z1pJaOzfXJLdrN/TlC11guCpPQ+2wzokuy6fgGw1ciLElUI+Z4LrFOu6lnrLlbsNEemT6YOoJ1X5j5k/Bi0l9w+Wc83XZCxFj1aU4DosBLIbKXjq9dcQQA+n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749284994; c=relaxed/simple;
	bh=GnTcs9Z4H9SF0vpRMJGPY1iuDRVae77ASlSPsY4Ahk4=;
	h=To:Subject:From:Message-Id:Date; b=Iq1dL1hoEi/5nCOfgyianu2NtpEy46PgqjwchZhURLFGmZxSZh2+nEtEvCveOeMVvaJzlNTy7NBD0vh1x9//sZICf6Cchvt760Z51W5Y6o/wqx3Je6PkjeQywGceBOibekwmqUHv0NCqrzDe3rpxRg+LOJofdhfdc1K3RWI1WaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vGajIaez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGajIaez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A14C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749284993;
	bh=GnTcs9Z4H9SF0vpRMJGPY1iuDRVae77ASlSPsY4Ahk4=;
	h=To:Subject:From:Date:From;
	b=vGajIaezBbWJjHFquh85OU7Pc7THIZaBf/u2uXiD+utMKPwOcfOdc0JId5NMcEy9f
	 bnx+McgCoDEQiDWEwVKlkqIJ3x0ubWkC/KV4kzDzzyOtiHOQLeo4ZaqXo0NU8onL+6
	 IhJ439RsaSQQ06D+IsdeSYZqERmb97Bxq4sz8pWY1TqIKCu+c65KlFFiQXz6Z5RREA
	 A+SjWbKoZCC3bn9P9Lx6k1dU2G3ftWYOTjeV2lAiAcRpkg7Fbv1W96Vx/lFxJptP4m
	 PdlZBCdOjJ7kngRWx6ZrPB7KN91koL2sIm5VcoKQXaXgnadl97pHwSjZfB382xoHed
	 Wy93BKGqG1q4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94476C61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174928499360.14726.4630483103733129090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48be76b18b6a3f23371939b38ab8d67e73f4f4d59aa28bbb93f4de178355ffe0
Date: Sat, 07 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749284993
