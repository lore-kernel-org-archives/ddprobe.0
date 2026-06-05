Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD293E717F
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 20:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780691674; cv=none; b=fWEUZMcFG3k205La9JKxnPD/dmwXNFNdSWaqr++VXjan+ODfbDcujC4GADN0iwnKjP7Y4sCe409LYiIz6jGNaEzy3E0f/QmhyMLIlXv4bD+GPY/p/pviEYexlDV9+p66D5YwyLz/hee8P4cYsx7RkcuzskXIRAxJAcRLzv+vYzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780691674; c=relaxed/simple;
	bh=P7gx7BZuhttDSxvFcq53XW9kmsikGpdELLeZDmUCsPg=;
	h=To:Subject:From:Message-Id:Date; b=UrdNy/GhrL6W+xXYAGMds+pfq6bzFykK0oFu8JbxbBy3fAEC+8mde+AzeK9ffl2b1k4IgxsgRSTVFoSu5YXlXGX4crvU5/j4i2oEzuSqgPd2kwk8ez4p7WRwEKYhfMNcdV1/AKQdIrBYatM70F83gN8d8z+6FFimIq19NgovvKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4fgCsxm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4fgCsxm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48FFC2BCC4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 20:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780691673;
	bh=P7gx7BZuhttDSxvFcq53XW9kmsikGpdELLeZDmUCsPg=;
	h=To:Subject:From:Date:From;
	b=q4fgCsxmBPSrWEJYteY0De2Ntoh7n6NG5wKWkSmYD2uVBfnXkOKKCe4rsbiqcC+y7
	 UIakdsrXJKbP24rIjNobve67cf9NdRIMs0qyoNnHzgVGF22FVpSgaJrs/z045Ppwvw
	 S1xdrx5S5KUKK7CXXpy1L/VGw3D2df87NZ+j8PREng0jkXA4lsOvUF25uyLzkq0R/2
	 yLjZJRw+feqqnXX6hgxr2pSjIR4htMaiZ9TglgB+XJrFG4JLHxjmfH2c9vwzcgBwPm
	 gGSJX49s++Oz4cr2LsvPFHjmJhJWTnc17KsN61nMNHw9ObXUcwFIfL3bXfKxALLzg4
	 0lF6EKyfQz+lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD78CCD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 20:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178069167373.7734.2184922902139165912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 731724f9a6033454cfad56e691a68d7c16f7f7eb2d805a6e6842f36a86173d94
Date: Fri, 05 Jun 2026 20:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780691673
