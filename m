Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379201E7C03
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747343394; cv=none; b=oRNwr5l9Fmsmbwmo1q9RYIQRs4dIhKJY20sHzykAMCKffF1rjNygXviQEIPfIdgUAFWG0OnsOQY3ReaMaFl8VOs1m2NEu63+wPVv0OKXQgMmphO32VctbVr0s6jWi+wd6YEMy0+An8oHGfhSTBLRztQmu5xQgm+dLHTVjVdFNZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747343394; c=relaxed/simple;
	bh=2ckQ8ZIHR4I87mvBU6+qKhgdPaO4nAi2xCPlqH56I34=;
	h=To:Subject:From:Message-Id:Date; b=CG/DcsFgP8p4jXSC2Ec95r1GiJrb98VGyfl2YYhAAOGH/VIl8yy6rnIkmvs0RsG6zpnhZwH2JFPUxwazeFJ8RBxxjsHmwsXBHu5d9tWRTDXi9tDn3pNleJEAEjx4tayrFeCR488gn4+ec7ZkHNBdAXi72zQLGrFKfu3aR6D41aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJYadw0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJYadw0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0013C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747343393;
	bh=2ckQ8ZIHR4I87mvBU6+qKhgdPaO4nAi2xCPlqH56I34=;
	h=To:Subject:From:Date:From;
	b=LJYadw0Bk7cBRWyY9ziAOs0cY4f8EJqB9HyMoV2+47F28CmFLrc1A3ezvH/SoH27Z
	 2qZOMyjwZ6twH+/8FkT6t41rSWY2lnDeKvcFW/5PZ5+L2+CJsLhfVM6NVTlhmMICYk
	 yWAy1J2riXudT0oO0gdwF1BNSa1QQp/FgObTcx2mniR2i9OqywttHQdTcNqHXhADYx
	 UVFtIyQM1t7A/mjPjKObuXEMekw5D3rinXkg0J/llGSVaRZQEoPzD2TbrPFZgTUxbT
	 65FMdLR3Qylc+S1jWJQSpr8nWkQDjxzxAHROeA8ZCqQFYQWy1WghKFEGl/wS/68K/i
	 VAY5rKvah1nKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1CBC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174734339357.10825.12857070430076756256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3869700975cdaa506ffd25c5e96ccbeab891dbac0cfba21a9cee5b6d7198a4e1
Date: Thu, 15 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747343393
