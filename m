Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2651823EAA5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 05:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764826974; cv=none; b=eRTMMAe+HQvtuWhv8Ni29PeBuChhErTi8qeiB9sNMgGWYu8y4/ONIUanYeIzToWIjCxSpDeg69JXWIe506K5wEdCzojyNghIQBG35NIrqAWXxF9LWevRwXg4J9/dDeUaQjyiDvFa1Gtaijt2pKMKmcxGHEEhdCmYVxYZWujoDv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764826974; c=relaxed/simple;
	bh=RMB9FwZyRZnoB+G+deyMfm6/djGz3+f3YY8O4O0tvi0=;
	h=To:Subject:From:Message-Id:Date; b=IJKCyLNDyle+OxGLY6x7EjMuMKT7tf1oiiV0ozASxk3EhVfjZ/a5RlLItMeI9+ewH3X4pywDUvDcpVmZdxFSABZ9+zyJ9UbRyPkD9XPuli2Se+7LCgbBw5567n4SqBuu18i1JZIWa4d+sWlH+aq4jAKm57+L3XtKt8E6gq4wUfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMeCXmZt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMeCXmZt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8B2C113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764826973;
	bh=RMB9FwZyRZnoB+G+deyMfm6/djGz3+f3YY8O4O0tvi0=;
	h=To:Subject:From:Date:From;
	b=KMeCXmZtzcFl+8SBsUTS5pnBwgfiz+83Ytv7RifNqHPcjK8p9h3zaFtByUHIzCEP5
	 rAEn5MW32j/YyHlY9CfAc+WUU+Id9ydWfi1qM0MNb0kyr4mCm7olPqrDI3Tb5HCnYF
	 UM9GAnFH/2B4ndIYFs2l9AmvkyvFhxjH3UZ+QT0NYOPLLwbYX0agJO26W0NVWCdrFo
	 E4YnqTHBQt8NbYkJMFNrLnkGrQT2yVGcGs3HyC9/U4dm+xa8AzpFoSYYTkTr42kZKx
	 b4Sxoj27hebzIuz5RCwOfnCePqa4mLEdL8cL7tx1M+MhiUCHVBB0UgD1GveX/ggcQy
	 YotoTNoRbkEPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97905D1D862
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 05:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176482697360.14386.9089361442665889561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c10647b23e8bcff62b30b230b4fa4fcbaf5295f5d2a06bc5d4b83b5ff788d3d9
Date: Thu, 04 Dec 2025 05:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764826973
