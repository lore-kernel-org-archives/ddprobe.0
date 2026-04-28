Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E72727603A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777347454; cv=none; b=k5b3rlQpJxj/66YQZwwzayzex0rSHqr9CW7A+kfHn8A9f9cz2Qp1wzYtmnjnsy5A1aH80Vd2pzYaS8waJnrI1YJ4TOS2WRdlz9fmd3VMf9QwMQtLIwL5w9XR5nkjCFgPfyYKDWeGPX9Cs0IbRPc2uIqrW/7hfytlnvUTB4oaVzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777347454; c=relaxed/simple;
	bh=rfrqBQ7XHvFZsMntntphyNQNUisYB+qECIP1y1orwPU=;
	h=To:Subject:From:Message-Id:Date; b=tKAit1S58JS6pQLVlIHZPutatkK6LOl6INPuBLvUyitpz1xtFF5HBLXDRsQAhTWgr42p1/zsEp9iFHpo7cN7faBC/y3wl4qdYTDReP4InK6hn5rtJBe6fT3gCrvY7+PbqauK8iz5jCZwfk1z5Wxlz5DFKG6KGUp4+r5RbjSAVt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5txtRWB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5txtRWB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4B3C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777347453;
	bh=rfrqBQ7XHvFZsMntntphyNQNUisYB+qECIP1y1orwPU=;
	h=To:Subject:From:Date:From;
	b=V5txtRWBMW7qGmLNYnKdz2QiNXQCuBL1W3oJySInCCT6tAqkNpXuY7EMqzMwq4vlV
	 VtUoh6EuMETL3E1w6CchyILIT1GEIxQcVJGYYH5tONJ5EyFxWf4Ypg0Fb0mApJZqQZ
	 dm4OKnVAaCILaWw8JrmTJDHPfoRbwEgqIGLisOIAIJ4jra8Z/l0qtU9qe25guIBcg/
	 GF1bQDiqWCo/oWqYmsiwla0ccWBu9NP+l+xWBTPkge+xGTVtQb/XnRmb0qFI33NyJE
	 jKjzEKS56Cw2QBZZcYQ4dUZzN/ZNJzYA46th9yWtmlESn243i/ZJhB7PmIpLLyQsjy
	 +clb+2SNNIEXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B87FF8864
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177734745368.14264.16198284735987106395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5c7f248dd9ddf82f6249ae301b1e271afd42f9a769d0102f50eb3d86c7fc3f6
Date: Tue, 28 Apr 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777347453
