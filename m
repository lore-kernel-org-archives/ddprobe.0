Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B39761FF2
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730428554; cv=none; b=BPMmwSvZrDvpaJqPrQtSNFufCzrWLy179LFvAg0in+xE8E6iuNGBsdJYmOOfb/XXz3mbb+x0vNxGgQsRCGLzio9UmcNAoLiKfKsOJfzVPHVD2xZ3z45yZuVGmuDVeZmowWOwf55W/fDHrhFF0lmxDuMpQUlTudWQGF1Xo2dF7Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730428554; c=relaxed/simple;
	bh=IIt15YdpH1aFAS4Q1D3F3xeeOzyqX2CplgOOQlselZg=;
	h=To:Subject:From:Message-Id:Date; b=hyxWZ+4J5GiecYY3IjsqGrB+Sfj7oK0isuPekt9UAj3sooF90HkpP583R+1vtbjnAIiZB4gNmyCPrsKRuQ3kly+tCtWbuTL+ZH5Kf7DUIiI9vh88gkzodZ8zBjDt9+i8a87drrN1BUlorkMBY0Y7tN4r5wuVzf2zrQDz7AzsMeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7cXzkOB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7cXzkOB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE70EC4CEC3
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730428553;
	bh=IIt15YdpH1aFAS4Q1D3F3xeeOzyqX2CplgOOQlselZg=;
	h=To:Subject:From:Date:From;
	b=u7cXzkOBjcQuc8N0Iz+XVNX8pTGPehtt5sViADXGguEnf9Dwdwo1qrbM7JNA5CN3b
	 45ReN/c+Cs7yHDmEvq0MKoWmHjmj2jV25FrcV6W7YmmwcX83dfgNMylaarLZY6V06v
	 /wLJ4lUkLjt7hBmS5IG28NL8EMcXHToeRLqeQPgi0diGhc5VgUgaQYZlMCBevB7TVK
	 leukfAEhmYeux+I6cABgzOggFmpDT52acnCmnKzVeZoJ/LKW1QgPILrPT2nYAQ4yGc
	 +IsDe/VjSiGafNHYXQowAzPslON0wQJsK4zOrjPMb4XSoPfy4Svon7TysfLrrgL+gi
	 ayYstO8bkLc4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA9EE67496
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173042855363.4840.16543208322986159174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 321358822015b32bb3967afe888c6db78050e0671a042a3748a6dd274e6ac04d
Date: Fri, 01 Nov 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730428553
