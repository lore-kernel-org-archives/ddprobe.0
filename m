Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D4830C377
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756718994; cv=none; b=qQkP/5/h7BYQQmQ4MuE+ak90Xcz3NkJ7XlHffPRZeWmyr7tYAk8VsrleCZTkviSVCrYPi8YgA3uVA3S0DZXrOt0ykhIgzxC+UKffP1x16tl0880lM9hGLVSVMYeWVG05uJ7vpbV6dD0oYvHnMt4i19hYX9sjKTFyR8FYWMVErZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756718994; c=relaxed/simple;
	bh=pAmI7bHKxtTrLWluFjQXkMvDbLVGnHPByB3pGv8d1bQ=;
	h=To:Subject:From:Message-Id:Date; b=BF0lGnwquPs5jRyC8ECeEzwaaA0u1cHrrl6Kh77YVyAAWMuqvrKG8/Swr4kRvRWY1iVgsxC8CmKWc+yKjijT+BWeaE8DmOyTatWS+Jed+u96eyaepZCectUTrXxWvoaSCncQnPqVTBBVcXSfNG2i/L6niL8owVnOBvRZWVbZQ24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pgYtvGOx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgYtvGOx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC2FC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756718993;
	bh=pAmI7bHKxtTrLWluFjQXkMvDbLVGnHPByB3pGv8d1bQ=;
	h=To:Subject:From:Date:From;
	b=pgYtvGOxbv6hVDFl3/eqs8LCKfCXw299CRSw4kBtBdEq6Sa4DVPTSKg3WB6j2bj3+
	 iZGk8oe/WR6NH8FMgzS+by6CwB4AT8UylBhQObbYode/pPG5mTVRzaQ1Jl2REfGOZx
	 rNrj9ILgfbgBz0ftEg9P+QGxb8FYnSGXFwXzJi+7x8Ya9che0UOdmTr3k6PNnpubCV
	 kR8fGBIvQCncpmRSIZvGj3fk3psAu2Kl67kniWmFCut4Fbny1gatIY57GhbQO8qTHz
	 k5FIkKoTRB/y5bb5o3xhZ39eK5Z446WRCn6Zz0UxUYegZq+/xV1X/jBWir7bSa/8yv
	 0OUKHcqIzh19g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91820CA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175671899358.8059.10550106607350134961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb081b6029cdc0193ff9f27b39636f5a6832b6d3b74a6cee692a77f735b10ac9
Date: Mon, 01 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756718993
