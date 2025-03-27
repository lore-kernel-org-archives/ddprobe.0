Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E1518DB1C
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743067194; cv=none; b=J/BFupejJBiTqj5n3vSlRPRogsdD6qRkgewFdyrP5bkgBgNI0V12k8EamX7xu7f0LwHHZc2mW/YIKdnbFqATqzF9MmJ+qucDeZFpeGMD+RnHMauLbDWck7Bc50CvjX9K1xQa8l6v+36qcUZsDLUWtVT6vLcpCmr6YyaWSEzGpFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743067194; c=relaxed/simple;
	bh=2cyHSqcYWnlniBFsYj1sqRPP9u7YpMdEEwiXC+TIbtw=;
	h=To:Subject:From:Message-Id:Date; b=MHnwalRa22riUO+fOkaSx1yfi0So5zCcX2bYWlt8gQMPVN+638GVL9GNEu3wQ3/8UyANHuh5K+y8CTRF5xQgHLVPWN6fbs1SsK+yJVFvzW1OA4LMcIjowtEAM09GFPTL0jBx1tjE9lxgYDSOpRZnnVdZboNLHjbGzpv9Ngftg5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyt0Ta5K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cyt0Ta5K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF027C4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743067193;
	bh=2cyHSqcYWnlniBFsYj1sqRPP9u7YpMdEEwiXC+TIbtw=;
	h=To:Subject:From:Date:From;
	b=cyt0Ta5Kx0TZKEAwqCqccX9D876zuOOwh419VJ3h3KHAJDnWT34zTVVYO27da4xYs
	 yAJChjKOOPyNjTLrl7yCWfABFcJXc17HMeC8neU0uwmkmoXuPonRignMJ/0E49fiMm
	 ncyYLyoO6uRuuVee3VeqKyFmZEjUjAzK6z2+uVIOIr8q/2NcfjP01qwSIP73t/hiZs
	 rAi7agLTxfGOVw/AzPxEKUbmCYwf1SUpCx4BVUOiKMfzFhYg6cBYxWSLx1iJNFXocr
	 76bRuoX+XwTfd46jSJaaYoGPa8Xb26doqnTpD546NCvusLOzUw6X6n+4rZW0WXCz3G
	 v36Ak5iB0zI2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987FFC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174306719360.19738.7328425662595057787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7556c9ad45b4cba15a286c0cb0ad40990cd5abe67fa4c0f3be54b655ab5ee3a7
Date: Thu, 27 Mar 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743067193
