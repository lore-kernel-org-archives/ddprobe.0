Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9563783BE
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 11:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782126394; cv=none; b=sdxrM+FseaPBXoxcsUF2FkieddoMtcxet3Y5YGGh7r7odHgedkihGYyn9NjD873kcBJsV+qeQGBUG5hQlgnkhzv3OenOBYK7BFx8dyFrNW1jduC/7vHHH/Z8jpjItObjo1VxAzNcpkehzijAkESGuFM8Z1R2ebACPm1bMGpjRsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782126394; c=relaxed/simple;
	bh=E4Uv51MnKouktJ2v+zrKQQD4f8t3hwUhYwUwD6mg4uc=;
	h=To:Subject:From:Message-Id:Date; b=hdp6iRFgTKqHDvtwrILRzUUTTAFzOlmdqj1ajBptz3IDKKkaEPBnXNuq2oDXrwQD7t5cmLPWNJvFh/E1lC3SX214V46KUSDudrnTrkpM++bJnS9o+fdsXWoT0UXeVAh5YI+/zskd70xAyvdvoPswFvtYN09ZocGNrxDOzKwWm1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ov8CiUUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ov8CiUUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58C1C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 11:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782126393;
	bh=E4Uv51MnKouktJ2v+zrKQQD4f8t3hwUhYwUwD6mg4uc=;
	h=To:Subject:From:Date:From;
	b=Ov8CiUUOC2D0HX9SGneoMLmXyVAIZUBXOkrYyg4J5LXGswOnMY8U9jO7VQHCsk9BD
	 XqxMOfnm+J4nMfrNiWWepVvqi61ueq1V5+2xHyPi7J/U2qHqZkidY0BFPUErQksYSW
	 nP427jTKudSKEYqqpWIOGpeuT4AxrvgIu1YJR4CuyGF4t3K13jMKMrhMBGXxqURmZE
	 CkJJG52Io4RbM8WZ7+FI3WKvqV0YNLjsbKrCLrc/GzV6s0hTUMJtcHl7D9sB0ChL4S
	 JA2GxieGE/JRkyzd1tm/L/crjX+tAUOFTntGlGNDYn5CapHvJaD5rc7nz0bz22m9sT
	 lcbbmc+/Pksdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B683CCD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 11:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178212639370.7501.13814954347188372381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479c59020fb94157aca7824b2579e27fa6d133c7dbdc5e79cac39a145d1f393b
Date: Mon, 22 Jun 2026 11:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782126393
