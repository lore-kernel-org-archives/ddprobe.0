Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CF130648A
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 22:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778885434; cv=none; b=kfPN19doZZIDpXEJ3sHBYztzYkqZFzIqptJJBEZ4C9IdJCUXQsqKEciqMR2zmOE6uCgrxrZ+gzWrvMkDtwLQhXGa1rkopYz/aUzUVdB0bMmjLxRpl6/1Nu4KLGn3ow58YZYXFwxl64mYaGdSrKPU/5vNpZRJY0blKt8u7qtXoMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778885434; c=relaxed/simple;
	bh=13hYsYT2T+GDX7q+GUrXKBA4c0MJU1cHbVgvsp0xsCU=;
	h=To:Subject:From:Message-Id:Date; b=ZlemHtS2pYHE511tTfyTGjoOR+7pDHFYcb1xLWS6Z78P0yGxKbfdLcd7UT7VBhhXrWnbbsN0SPE40aLy/1pUGLsXrcEEv/zTGMQcbL89mbYOarznZfr+8SgR5+77YBlWpc+4HmcFVStuuGqx0DbRUdgKDuK2GSJiUrry6X5QjjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kq+vUqNA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kq+vUqNA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C52DCC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778885433;
	bh=13hYsYT2T+GDX7q+GUrXKBA4c0MJU1cHbVgvsp0xsCU=;
	h=To:Subject:From:Date:From;
	b=Kq+vUqNAHrlCYYY5qzP1Tgm/LiZoeIva3nxmt6ZnF+nggCM1c34b9AxDo3N5s4f+2
	 uVRSMQWHYyrBDduR/+7wpziROQNyWC9flcTqqrCCSwzdW9zDl10t9ZsPBGcX/MSTyd
	 KMkhZg7nPUJ5QVnCYG+TstORjvMWV53jSF6+0jcDfKAnoVGbs1xY3rFfouJAyI3ovg
	 qFkFtcFp6rCH0LQTwL3eYpNCMBzxjVxr7IeLH61U55llnNTRv9srzcWIrZEXiSzwxD
	 TNXe2JXkWgb85/S8ZLCtl3oDiKCyOg8WQwxtR7TD7gfMrU4vAST4BoWw1HbFMxeJiX
	 2wgGsB3E/5JEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C3DCD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177888543368.30295.15165461432225609906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a24064e532a6ca18792af1e4b589537091a12fb33616debe22f4c78b27248a4
Date: Fri, 15 May 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778885433
