Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3466FC5
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768436034; cv=none; b=ERmb1XB/Igokutzk6GBWF/TepKyz+0PAEngbECPAFY1RhTJB8Eip2BfaOvvlOFTCZMoaWMgg8YN6qvwkXg0uc/QAPlmPKjtbV3HfdmahfOL2gxccxy/c3zBl63UFRk9jjWh4eRrMRewUzGZQ/NPhhWwXPxtflzV1yUMamL679vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768436034; c=relaxed/simple;
	bh=s6K/IP5co+lV3CNFoZTySrNL09Ivlm5Bmb7QOhyt1yE=;
	h=To:Subject:From:Message-Id:Date; b=ErmwTW7PpVkHdNPxuDxlept06FJ45l2y9I4jsbIm+WZ3X0yl/2mJh8OSUexdY6NFRHX8fzIa6zTtGhri23NagkbohMxPJPT/UtCspGUkeqytXb616NskW+4FaKIioZsj7JHRFxso2PbPUrHxHS8UrCjf5H7+mZR/gRVkrB4aK3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UiWLcQP3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UiWLcQP3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4826C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768436033;
	bh=s6K/IP5co+lV3CNFoZTySrNL09Ivlm5Bmb7QOhyt1yE=;
	h=To:Subject:From:Date:From;
	b=UiWLcQP3uj4+o+87i82Q3jerkER50TVLBDmoPCpDQ7vUNZO6YklDuxLKAs7TDzMC+
	 21f3bCNAZmXQmcCfXHOIs6ugyznxxhNaQkLNlK0qyAFjknCf38R074n42MU3L/wUPT
	 0/uvLMJdgZeMNF1lGeKKdYXS4vWtO/Bw/p3+ulUXm1aeyQcoa8FMNBMdfRj5EAtdvl
	 T5hO6wj2R6hkfJLzZt/blWoHlxqQKTUdmD3aNMoBloAeK97X5atGNw/c/VNmYnzY57
	 SnPIDCHDbEn4JNQ3xLwPRzyikH4tpYgJkhqEupI7SE0FISihEn/VpY9YJPLYQzTizo
	 t3KBGs8K1imcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BE1D3CC88
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176843603359.22935.14297095868896041357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2221b578b848ca3ac1a40ed483f0bf6a77f8417ce9bba406c96566287d353b52
Date: Thu, 15 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768436033
