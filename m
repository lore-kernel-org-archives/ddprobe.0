Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA99D528
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753627194; cv=none; b=mFHJRKiwJh++sGylCHZaJlMggOvSBvCBFhT4yK/VplNosap8f0yLjdUhdyilTeYqvJtrPHvPOoBqbOPMZvFUF8BeGvuY0xyECl0/OL4CRezN+HpdS5t+uCtRNFBjZrPBm3TEGXCwxbplJ/EQdkwIwbK6AsCDva0L7MCuKA8AQBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753627194; c=relaxed/simple;
	bh=VEmqNq9RFNwyyPpLgcR+dJ51tCKqPyM3w54yqw3SOd4=;
	h=To:Subject:From:Message-Id:Date; b=RMjxMBmbWrDaU2vKcX3EKur/2Y6up8IhoX8+NrYAmCc92nd1ogQWqS+ricnc+aUOYye4Qu1twS/glJnIN5fuop77DlTK/XRkqWzpTtblVSTKY1ki7AxxAfESEyrVvZt3m1MncExFwDUbNdJr5IvC0/v+nGIxiWYRgoUhVTtF+ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvjhvmzW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvjhvmzW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38C9C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753627193;
	bh=VEmqNq9RFNwyyPpLgcR+dJ51tCKqPyM3w54yqw3SOd4=;
	h=To:Subject:From:Date:From;
	b=YvjhvmzWFHt9lXLVaHTvu0zHuORVHylyYK7tzmNHx0mdAimhtZq726j1xIDwCCMvP
	 dTUIPtxGRORmY6RAuYktYSj6ZtdY7e96YbkUXcRJo13l7v+PWbDi0olTb5SfhHK29c
	 1hSsNCyKhBvcDycll9yl8iEXJiiyjmv3J8YIEAjw/kFzEy5PrOgvTq/i1mTKziHfn6
	 s5pRmlp7FObdUbekUT7+kl0i/Go1VM6EiSGyYgN17KByOZvpdDbUVapMboYuHaaUwb
	 QJJSKH+rRDkMebH1UsfPaBLO4OyqLGxLX2TKQ0tio3blD5TaG4YbQISQ4v50Zlgf5n
	 8FNIfAGxR+oHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9104FC87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175362719357.9611.4149342848555728076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c13010869f24392f526a6fae2d6d59123d62211b46590b9ccb9bc9da00bee71d
Date: Sun, 27 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753627193
