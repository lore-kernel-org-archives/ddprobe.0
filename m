Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0B428B415
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752602394; cv=none; b=CAdVcS2OZDIaqWVNpLRQ6oIiox844fvg6bKxW7XNCy4OuMvV6d0ozvO+jyw8kHPvAXVadEUd4+z41c6dFSHDVg08GQRvMi5ZtMZ5TZFZpm3C2w15DV3UWyibP0hAOiUjRTOupxamjiPzgGPePYXCUh1byZjWlVigC0TxCxHaY4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752602394; c=relaxed/simple;
	bh=/VMtxKVCgDpIZNn/1Wt4CongT7vgscqfhINbOofhA2o=;
	h=To:Subject:From:Message-Id:Date; b=lFLAKKOpbFUGnEnl3BlXFtkcD2OQQGYrzn2nzqLkxKwlvQlnMmbbsBLx8nc0HWc++7B6Ec785jW3K50oG9gN8gBiAqoT2fiJ8q2/2uGLIuwu6slvhAmOLQq+ySJ8XrIHA2JWDtVrulrCI9GlIhNoiOXPyT7kovby68UgE/AUZoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVJ8Fvlk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVJ8Fvlk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4304C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752602393;
	bh=/VMtxKVCgDpIZNn/1Wt4CongT7vgscqfhINbOofhA2o=;
	h=To:Subject:From:Date:From;
	b=bVJ8FvlkO0qdKdoZaW6PxbC0JnXK2VsYmBhobAYQz5fIOG4PQzszzvYZ22EfcVn/M
	 a6pNt8A3lEWiQTHx3o499eELvPw5OXz3QPeiPEnwVU/f3ZL3t2v42e6PEg70SAv4Oy
	 TYu+sdNsrVUhUCK1T7OyKJ0zRNEEEmy0gjCQauNx7KUg749Eo9Xgtdc4peHnxZ/csa
	 hxLdg2pnedBr9oK1NFf/4aVHgIZidMcxrSP1egMM3Ey5gDMWbhR2Ajsu/lalbhJACh
	 ejgBalkJjClIE+EfwHYkWEnz5NN/y0+fGlNcfqW9UxwhXyzXzVr3ducEiTb+5QmpJ2
	 jU6RA/zz9yCLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9097CC83F22
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175260239358.15803.17543669766569802988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c0862512f0bbd6fef0f2e8c01daa29d804bcf12b5c1c702edf136d19c8a4074
Date: Tue, 15 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752602393
