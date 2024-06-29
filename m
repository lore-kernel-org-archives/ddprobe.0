Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384C43BB48
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 11:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719659663; cv=none; b=X7ydmzThAKy6NXNG/etlqjNCYZkpDyXQQZeKmZcwamtwU9okZFSNb5yu3WaxqqBs+BXCF8AvNXA3Q/rqKv2D78aUg+8x4MDccPK5hD+Ou4S/SV0V2m6mv2EOx/KX0bHFu8+IX5gEhJhZd4Ne/xpYVSPk5kjbcbVZwYmmjcq2yeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719659663; c=relaxed/simple;
	bh=DOx+e69rt/QKyvelwQSngzCy8PI/KnOkM+QcUbKhblM=;
	h=To:Subject:From:Message-Id:Date; b=uCnLjyw19p/e9ArBFZfiO+Bf+GAvcMbFKvZs6FHLkBYJ4s4wgMnA122IRoCHRAxVOR4tJEDAeknII+8oIu5HnnL7WehKgyCx8F3SauAL9OM6tnUwIbwjSAvC9AhPv+kuoleLwAjaoZm5fSTY6yJdg+Hr/CD3OKCfuoHRR7B5M0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRWgfuxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRWgfuxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D686FC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 11:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719659662;
	bh=DOx+e69rt/QKyvelwQSngzCy8PI/KnOkM+QcUbKhblM=;
	h=To:Subject:From:Date:From;
	b=GRWgfuxsabrd6mqsl+2YNXQspyww9TgAgQI3fqGuJGddFaT4Ts0uJAX2tgPC2hys6
	 YELt8am2GmgAF7343y/2ngadkrlEywZRWDvZXaZt2V1xhEBlgT7XAQMHTqdJH/626i
	 yb/y8Fov1VrKUFRKilONR2WMw3OJzrIN+kmxNb/cGCvss6g6kMEShzTe9w7/KTAdxr
	 IpGJ8cxNerjVnNGTSeIqK3O5mx2K0hRlYKQXcYTnvJHdr+FQCZLeKTi8IA5A5o7kgn
	 PHrs+nm8NLBEQ9H5c75zy+D5Y9t+VfOEOXaV8VF0uSRrHfSedW8Gx5gASlinQQypAL
	 S61lj6lNm+6pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4AD4C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 11:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171965966276.22805.3807384358562573910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac2b67c021826365cac2e572edb721e70bf4e7aa6fc9560243a74b7e35d80d66
Date: Sat, 29 Jun 2024 11:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719659662
