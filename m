Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D7B18DB35
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750171794; cv=none; b=QYnBEShSU53j/w3Z84Gy8iGxnSlMNlN9VSiESQk4T3pzqYm8YyZMFqyCCPkpU7exCnk4rslEuCw9tqyddkMepBADD/KlMd9/DvWnYkcQ2AHle93hRPxvK9P1xuFq22IvFrnZG/AQJKDrKt0oNcxhOzDJlJ0cLludmwOtlmEJ5gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750171794; c=relaxed/simple;
	bh=f063FQRs4dSWYRlWHLafY+UO00SmGbZpkY4XPjvjaSU=;
	h=To:Subject:From:Message-Id:Date; b=RbM+DcWsfDVNs/yfI1K+vOlS+fXuUwSzaxitF2KJRP4QRpXLUr7CTgnxZBzv9jf0lir6dSh5v1einZdfpwVwkJurudjSXAZIalip/bCs4/7kQtB9HXqtDUlcyrcUXMonzVfVa8Ea78yzQ5Wjf43J+OZl20AmB1P4LXdHozSvb/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7umrLUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7umrLUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E47C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750171793;
	bh=f063FQRs4dSWYRlWHLafY+UO00SmGbZpkY4XPjvjaSU=;
	h=To:Subject:From:Date:From;
	b=Y7umrLUUucwAkZcAZ8VVjpnrp6m+3PktQG0CFDgYiPkfNrNiAXxvjIOcrEGwsiTEL
	 dpgZmXMpf1qXpMV2wR0utBdOI+aH4VNbUBqVGvBOZqzm1vj0axcvGjcsgbYtOnMRPX
	 F38ozzyDWxYiWGMdCc0gF5exBXP2Mwf3qX2Z7KXvOE8tpkYQqyV4ik4HIrlvqwOalF
	 Bf8LCUQqTh+4+guQKztV4Dvlu8DAxxmocD+RwS6IbJTtIncG1w1d2Mp6B1yPNmBxz3
	 dd+7+Rr5JK0Uu7HfV0eOmHCUdx2M8avkXbim9bu7soD8vDR7oARvnrz7QVhnO1c6fS
	 A9V0loD7YFq6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBB0C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175017179358.20315.16222084527191844456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 782583d835b1d2f7d0aa4d406bd5346c8a7dad445fd58ef2e2dc1777d68e0746
Date: Tue, 17 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750171793
