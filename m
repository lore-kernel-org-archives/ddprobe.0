Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3AF272805
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752638394; cv=none; b=aDV2NaQxIZvDcQ2lERDF2a/d+yRDrhph3iH9QqJ2kA9SmVik2fI5Itww3OqbXkZjGv7Dwf9IWUYehzczwP+suTivDdHSgrgMDQWPIuoIxWUSJX1xmc4+VHbFcAZqzJ8J4vxSe0xjEMwU1HOWHC0aGvD7oLsUS5nKsSa89OApwtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752638394; c=relaxed/simple;
	bh=ZJ3TcNPBud+zZdjw2hUPb+DKw8uWD0ut9ytv8Y4Aitg=;
	h=To:Subject:From:Message-Id:Date; b=BqkTb//2lG1WlhEVyLIn8Mc00KX4v+v1pIQB8Tiuy6CzDBhiAbwMc7TUt7q4lCfqLuLe53ncz8WfGTP3VNg38gBSIJj5LfgQrAF6DtDGbg9SFOxzVhKY67ln/BYVnEb6juE09cb5YN3w4XRqr91aUFrKkwNT+VC0k4J8xk3AgP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hx+tfjFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hx+tfjFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AE3C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752638393;
	bh=ZJ3TcNPBud+zZdjw2hUPb+DKw8uWD0ut9ytv8Y4Aitg=;
	h=To:Subject:From:Date:From;
	b=Hx+tfjFtXv2ObQrFMVLdP7EvSWgkNZZ+nvDrcBxt6uMbeV0Akt4eIkXf+osOo/50C
	 bbby3j+60EXySqRo4ofKMBPUFclkyuaNL5GCiQuVxmVPHc+pS16//0Cmoia3d2SnjI
	 6wGVVV5G1mVk+IYWosBbxWpN5ulUxJGAWpO0bzj9IElS5Eb5XAyUzYRcX1zVhlU0I9
	 4i/+RIRaV7PNN8Nh0fal3mZBKStSLFfX03r+yVUTuI4R68YbHo7q2MJD4nkscji85/
	 55IfAT8Xi5f7dNltWBLOrhVK+Jr4KiNR5J1LAvq3X+cyVvQuGN3BbRc6paQ9UysFM+
	 lpEWYkkl/fWhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDC5C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175263839357.28236.11060850593306776338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b8f050137bdd6e8ae5069bca5e90d694e699f0cdbc5d7c44e93cb73dc1ab46
Date: Wed, 16 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752638393
