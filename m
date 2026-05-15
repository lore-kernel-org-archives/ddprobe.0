Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDCA47ECE3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 14:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778853634; cv=none; b=WCtYAulVD3j17tOJHdnRVa00pyo3hAm7WaoVxpHBbGtYbUkc7yPULL9bFJh9GrCl9oDlcOJPffZBhZkxkpGLIi6w+fmGpdGm8aCAfgZp6WigeR8FSAfBK0pnkigACJhIKnSPZ5esyvFZXSEIU5qdGb1qC/wmB37BNl+cTfrQNqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778853634; c=relaxed/simple;
	bh=NPdNpA7lNCyA96GPXMzXpB6aaL77CZKOFX6gIDPiOBI=;
	h=To:Subject:From:Message-Id:Date; b=jIgsqUr06hBJZ8NG6QZSOr5uybF0xbITM/iQL09N+QqO1kzrWBdF6ndLZF5WrBmvhIC9zULI91HHnIj5sSW/4OkV+flX8xUU1bd4nG8ZLiZwYi6EZbcYd2QCPDso2qC1OlBCNZEa2Dr6na7bR1UAe9v4x5LDMbiPUx/JqIdTDic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzmSh6gk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzmSh6gk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADF3C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778853633;
	bh=NPdNpA7lNCyA96GPXMzXpB6aaL77CZKOFX6gIDPiOBI=;
	h=To:Subject:From:Date:From;
	b=fzmSh6gkUpFaRWki66nhqSvwTMaRJA3I2TCTppwmK3bt4mCykWDYEdEFEjlmoF4al
	 xcnJz+02dZ+3AL383z1mBwXByDpaVR1LHlJexvV1VxIAb7rBhgoLcPTat9DH1OxotU
	 d+/rf93Om+ikaBJxtJJ7/5X0rFdeeeYohh3HP6o0V+1lsrdDn+8K14xR6w1VsvbDmQ
	 Ujz5FWU/4slwrChc0POliAFNBMF0Bm7P3OrUQQ4aDe2YAsDNdo5/quobe+BBs0y9Rw
	 bMf3P9rHOK0JuICruCIT9rJbrDhxVH3vbJpLEVyyyblmdPGyTmKsWbMHXLbdYrGiHr
	 /f0pxPt7V03sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4333CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177885363372.26608.12377541812371468923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae4c1c4db421b90111a34f5fd2433797a7225eb7ad40f5683c96ce813dadb524
Date: Fri, 15 May 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778853633
