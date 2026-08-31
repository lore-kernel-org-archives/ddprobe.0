Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52DAA3C3C00
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788151234; cv=none; b=Sg7ET1toZs4KuTjl9J4SaV97bChl92ZBhOocMvwNP2sS+VPdQy4KkHD8M1tW6bGqS0WVmkiebm/UiI3NAY73Qaua2keYKCdg0az8sy6tqcVwy8b7IOdjwqPPRZyXQm6dbRqUSDknNx3y0zi9wqedH/YGt7Xvka504miJq0IThWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788151234; c=relaxed/simple;
	bh=XTXrOFPMU9/NACSIxPHxpSsrCVFHUp/dFypC/o6sAZI=;
	h=To:Subject:From:Message-Id:Date; b=PJoO8KGzNCaa9ustxjQjNWHEPbXY7ypUJn5C+ciYM63pAaHxqcKZkz/DohIhGqQqCiGrFFmQxKTPBUAWg4nMdeoTFeZGrlM557rrpTw6E30RXDh9SQ8X+P/qpobtkE8zomHK7F1Fozlyd+ZOiax6THDcuU/fEJge9I7DIXIF/R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXt2SKk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXt2SKk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1892C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788151233;
	bh=XTXrOFPMU9/NACSIxPHxpSsrCVFHUp/dFypC/o6sAZI=;
	h=To:Subject:From:Date:From;
	b=UXt2SKk168xGYl0mnAGmGDQ87JO9zZIjk4JoO9YP9t+pnF6awn5E1NIFXndq0au1w
	 RrHmB3HXrKAWzqt6SIHt53+dfLrP8ZaaRZN3VMW8GKfarA3ulBvCR6X2QEXBZ7sM5H
	 C+Iogv0kDAXXg0nw0J2af3OeNBkZ0CB3OVqUB5vnSeh3vvjLieY6L9AgFE+heaTrJ4
	 NRjfFiEvO+z61pJo3E9aaSZSDWEYuUxmorEU4ANTSZl1Lidam9Rn9o3qGrw5V6ZzaQ
	 H7AOORW4vvlkRthrtUbXKaYuwT5zwRRAIDESTlz/C0qWgL9s3/C5IjtEXgUrUefrGl
	 afgh5Z/tkeB7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC778C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178815123369.10174.2852438560319651754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7335a4de88a6997d63a95582936d00e16a23208019498cbc7f4f9cc8723d79fb
Date: Mon, 31 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788151233
