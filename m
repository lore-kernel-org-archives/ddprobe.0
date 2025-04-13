Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2EF22339
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744508395; cv=none; b=GSpBRU6tt2d/e6Hec1d2YugqE+YtJqdankGsr6PDMadVnte6DpSy1qQkpQ/zcnlcfHGKIAqTDEBlzEdyRkefPTEqC67XI52rZaCiW2r+RMu6jbKYOPoCgcWXsQlfIOpF469TYr5OowIYmgzbEoD3S8KH1tW+dWR7mXEoOPIVpOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744508395; c=relaxed/simple;
	bh=qj3uZz36S6BexrhUurDXnXMT58KsScfPQ4FxQB8ZQFo=;
	h=To:Subject:From:Message-Id:Date; b=WrpS0Q5bZ3Uc3jW61izaQmEj8QhvnmScZZCUwpPssgb+ADxaU4oFVGrsQ+LNy0abfPCdEbu4CRqOmhhJseR2nw1udn5uy5NXcv+sHZdBI//330dOo/jwuv+2yHZM3qfVpsVcEwbL6d3Ts3fVb+8uHZW0SLJLc0tuRz3lPLk0e7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1MscJsc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1MscJsc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D66C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744508393;
	bh=qj3uZz36S6BexrhUurDXnXMT58KsScfPQ4FxQB8ZQFo=;
	h=To:Subject:From:Date:From;
	b=T1MscJscYbWxqlvEFWrJfDt3rKIkRdOVPgNzo+ZcBGScIMR3TCbup7F726rqXf2I6
	 bzCrYOQQ1p/3TkfejU+5hcvHIL3BfID0G6nZfTJYMCYyG+m99O8UtnFXgJ+xOrdqCd
	 cQF6FOfcIN0hlM0ITKK06vDCIbQJhYYlZ81AyQTF6oTUBTWUHAS5XgWl/2/wdPmDP9
	 OAhDEvaKOs16NjIQGkQE7QmQnQ8ZzrJ0l01Yc81uJSA/aI00RqVjHsP5yjfiKHcq+G
	 rYpepIXsLPTETKydlq6iCuTn70C+bDbK83Xir8c3kGYlYOX+WMtKyFKYAfDtF4111u
	 mgV/nVy6gxVCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98644C369AB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174450839360.11133.3433936090415585235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b13911a8bbc46160425d7330496c15b2a9f34ab4c55cc45f3952471defebc9ab
Date: Sun, 13 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744508393
