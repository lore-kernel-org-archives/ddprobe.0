Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0891D6193
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760080794; cv=none; b=UPuTtBp4LLit17wLfRAGUrh/pteToXKd0krHbzJegn86dRxBKpe3lTL16sCRnXODcwdYujVWHAQqm5QvBUXBn6Wgv0725L87i6kIDEca3cOlMEPVW0rFqr/hMuiJxdnHouAssbr0WKg4kDdblxY30kpS72GsBj/AuIoj5BAmTwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760080794; c=relaxed/simple;
	bh=YCMxSd6QprqDpOGy5USmNkvyb8nDBLf0gNYxSR83o6o=;
	h=To:Subject:From:Message-Id:Date; b=dXp3QKl5yeZHDgF53Ty05HB59an/r5FoMyC+qBHYDWVHnjFY8bQmE0N0eXwxFcuUjoB9Q/MzJHu++hs3gqjoHstOo0N94c5B6DqbtFUshMoOW9pgvJFDOcaMfV59M80bVISUHW3/ruVjoZkZ8xGUVuEdyeLCeavOcjZcNStZOsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PLy9AINM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PLy9AINM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE9EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760080793;
	bh=YCMxSd6QprqDpOGy5USmNkvyb8nDBLf0gNYxSR83o6o=;
	h=To:Subject:From:Date:From;
	b=PLy9AINMqT8NMLPijxUrusUbDvKdR5C4GMV+pszUWXHBgaMf9+53cnvSxRt3gMwGa
	 kCUPVkcOgzgJhTDypAJTiwSb6bqFE1X8Z0f/Nz8c2s8pYsNRNfEACQ+fLWscpZ5Kt/
	 kcwgr/tznm3eZhfQrW3oISd61kIYwvKAgzCK5qcDfxy5TFigneAQ//cwvV+4GSnF7X
	 ebTe+YGOuNxPMVfbj8PU68lN9Qs6E8HpX5jyn1DkTJEwQuCWY/diYLZNyjvv3LFssO
	 h/PDo93FDQ7h+lsH/U0hPLzyVg8hoPgVAEF2/YiDSlaXS8t7/rKDAzFxuJ02jQJg0i
	 V4N4TUjqz/RdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F887CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176008079357.19643.15238771514625041692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d57a79fc418901e4b3db02cea421e197dd2e391a3c6cb79ad07d3c2ad26c8bc5
Date: Fri, 10 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760080793
