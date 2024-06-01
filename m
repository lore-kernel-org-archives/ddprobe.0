Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80ACC6FB9
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 12:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717245263; cv=none; b=oQF5S5qX/cK+ej1yT6/bFjRd7PDWzRR+5xGXgtYRGDcqkBkxm6a0ErTA0xPIWmJiSQnLuYpJe1MWGDbUzyZNregX5Iaia0f+3YmExN8zWmixMQJ26aH3B/PPto/TMcMM4BGZ+/fnk6xc89cVvKj8WrOIKBG+uKyGo8coWdImAns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717245263; c=relaxed/simple;
	bh=k0zxYUGYGL9XyFV5pXUDMNMLxFWJEDqe2O9DF0cWVTQ=;
	h=To:Subject:From:Message-Id:Date; b=X585c6F8EGMiprOuD+I3kk02QBHbHMkvCSGLIE6NtW8BQOmLL08OhxRWz8SpDwDUh1tFq7J7Oof6AJ4eUy+eJQtOv1OO8x9mV0UT5dKmVi0wYpsYdM0E8uJlzLejBOqF31U82FbsHB97Jh7BHfa9z4w7yT0T6NQzbbWgMxC9/pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I74htfyQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I74htfyQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDAF9C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 12:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717245262;
	bh=k0zxYUGYGL9XyFV5pXUDMNMLxFWJEDqe2O9DF0cWVTQ=;
	h=To:Subject:From:Date:From;
	b=I74htfyQJICSrYFnofh/qh5JQny786YRBWcF5DFotlIqxRS9dklGfCkaVQhsbVQjj
	 hjDrmfx+xa7Y5UF39Xk04LWaSnySHZSnRO8qFsA688u+BrDNW5UiOCJb3U00f6lzQx
	 3MSLgckQ8uFYnHfwXD5MwDRC1RibnbigLCzOO5DmvvvM2CJ4OKmtXhtIIrqN7Q4ZxO
	 pjjWWUw3NrkJGkZCG+/J0IeGhkzBfeIll8P4DmS7PGrYuZKMPt0s3hvZ06aW0CoctL
	 pPXSqEqMiGx4UALU8L3WpNhrG1+inTr7A0KJY+Jl4p7RGsIARXNleGLHscsykZE1KP
	 LZBEvQZhL2Xog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6ED9C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 12:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171724526279.6506.15249793543758771891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3181780da7c16109263cd07a16e6cc7428d928f338d3fff461e35ad3c0b1ff3b
Date: Sat, 01 Jun 2024 12:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717245262
