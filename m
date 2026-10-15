Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34ED621767D
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792035634; cv=none; b=W7LIA6xasC+4UciWre+RJw4ERAn7eu8VqxVw941YB2GISc+pxEJKnohrAXXWRj+7dLb67Tega0VudAwWG1La/5bl3kjviqiLxklljN3SjutN9sFnawZ+gg1unl0s0MKo6ZTCe2kG5klKD+pvk+GAaZPboQg5hQbF4Uyi6zVU15k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792035634; c=relaxed/simple;
	bh=oHX95waVCf5T5mcZY5yfhU2B7yg8rAu1mzlAEAnyvBE=;
	h=To:Subject:From:Message-Id:Date; b=DAtvTuyGs9WpfF6vX5GZl2Wt5xTaH40mezkBTNJgn15b3DR1xrG7lFqaN5SSrk6P8owZ5+z2IdbrFco9XVQQ0XiCaG0GqYTUwcz0BqQ4povS8ILFFEGo9JiIhA/n+pPri2zYtDHivsQVOraooYM0eL0YLLIs4QghjJU1CDtdI3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkY+IPNt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkY+IPNt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFECC2BCF7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792035633;
	bh=oHX95waVCf5T5mcZY5yfhU2B7yg8rAu1mzlAEAnyvBE=;
	h=To:Subject:From:Date:From;
	b=qkY+IPNtWRdGJ+/0fczyi9hlVvT7NR4yseMb1xQhxtwXdI8oxh0S7gOoWTOrsP9En
	 otD7Aft2EIAyvK4p+tKRhYpEMA04EAxRXZGIYXYJm97+ZG1P3RqYqXzQV1C6/yvHgv
	 p+FYzqONKnlebpEcTwOGWkexy8XKCx3rhXN1PYDjtD3z8eqKbkJ/mUqE0tl5NBmuH1
	 hw4R6mOZBB0D9hq7jvMcA4wXHYz8deiuzwupuc+SI7gSXl7P+Ht2WA+Gs9W6/1/4cA
	 5+roG3AQMsbtw/o/myDKCJlsnJO+eFxil+S7fyIWohNM4vOjq159X1ppW/S/XQk0qx
	 UfFuVdwFG4OAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC516CC6B1C
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179203563369.17922.5403632426612638668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 982919282fa5b44d4d79f6e7a03fe646efe9b862f063068dd2bd38bafdf00270
Date: Thu, 15 Oct 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792035633
