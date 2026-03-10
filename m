Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBDF53BA225
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773114293; cv=none; b=oB+aXGrkF4svuUfnqgl+fVDV4T/+qfNfi6a+yYLqNhfXVz/7YjPsiVzs58IoVTJmakPhKAnIoHjzsQOC5HAGHQQSiHEvky6T/ZWhZGuv68cYKjbEaq0cnwekekTVxjajJn/ItxTxkKF1y/yJtDflIJ+GC9zDUhIuGEpFxuFacaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773114293; c=relaxed/simple;
	bh=xdrP+Azi9CgwPeiQ5wE6fiBTmaTdP1FVJc/YEDzLTCA=;
	h=To:Subject:From:Message-Id:Date; b=dr8+FpU0Nc42B2QQL8lbNXQsxZ+F4SErCswtB8KrN04I4Go6KA1SVGixw7b1uGaHsYM3qTsTVRg3kBpn3CilCyX80fVd0MzsiZjEZhXhe8y/i7a/2scHAZUn+oH/6ishO7vohWpIbYnaVgw9RYHX/5YJ2dRN+u44QGVTfKMmJew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqlhym6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqlhym6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B26C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773114293;
	bh=xdrP+Azi9CgwPeiQ5wE6fiBTmaTdP1FVJc/YEDzLTCA=;
	h=To:Subject:From:Date:From;
	b=bqlhym6FvB/PNRG4l5QFI5P/feZMxpfShyGAGCLYt6Zr5TbwABvicpr+FMNuAdUzL
	 YTplCrO/IfuDsKEAFWYC0tFLhVcuX1emwTbUySjwWU27R9vwBPbDe9toEcoW6qV/wL
	 gTWxkxPK1aOvIlGSzZ8B/46YtO0WDsl34aAmLSuBEpgYYDToI8PVrveYJ1f4qh/abt
	 gUphlPdIO0P+wu/9Z0t58DIs2Yjy9tE/+35tgChB06CyLHi9UfJMon2Jw9FfpVuGGI
	 VP44BqMgYyj5XdR13cibM1+ohUj2laUKGVureREB3cobKtOYB16vsG9Cy3fDLo/Lxl
	 rtzj1du76D4wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9245FFCC9AF
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177311429359.1072.17181848511554856486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2676ae608ad4c00ba9f4485ac321e7de9603587023f35810a06e7fa21a0894c
Date: Tue, 10 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773114293
