Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D607224FA
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767330834; cv=none; b=nr48okR9zXw9MnIzWbyoOlG7fp+lFEuS8PqGeMDC7lxF3trA8Nvn68D4gDU2cbh6tKj56Lx7cAAlnj5NKN5zEj7cMdoTVlbnRTXTf1NQbsWEltLYHWOqX59IU/rdrgnbJIapB9HjrVUzEWWD0bueZLZoX2wHrdGNx7r9fhII5PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767330834; c=relaxed/simple;
	bh=Lx9f0MwrsiXvpT+f8Oeqn4tUreWAsE8zF1hGsM3NDGo=;
	h=To:Subject:From:Message-Id:Date; b=aXG5h28PWyE52LxbgcWzNWRh7MugJ7mqJoIJvfqR0k016A4M2zMdpapJoIUtaBkMaowNipNIanrOcvpYOljgI95WBScVWA/2kRAOdqjBQIdi6zONrxGXk1pYtuG/wRoUjymaWac+peFAYS7frLE1mMx2uSfx8sjEPYr7BEVJbFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pAgYiq9G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pAgYiq9G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8512C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767330833;
	bh=Lx9f0MwrsiXvpT+f8Oeqn4tUreWAsE8zF1hGsM3NDGo=;
	h=To:Subject:From:Date:From;
	b=pAgYiq9GQNk5x02ybHLvRfc9mE0sK52xFSJR8aYiV4OcOzbjJROe1e8DxTMJ9gaHu
	 ZXjk+UO6l/wd5cfd5+M00rwM8NHj4jTA/fnADkrsHgapOsa6uXTFeR4RuBFGqiGJ9w
	 aYO5OFqXPsjPwXIndyWLCLB8Whqhmk1gAmbFHnOxYIcVsGmzKDjsuveQDqSlOtXjmH
	 owR0slHwgyWsaWtZQleTSd9bKqj+bxBnjTgywUM3qVZ/jiqrTQNi3+d9ewPNFeUm/1
	 rpPYJFprtuEBYpn8Klel1xB78vcqRoGIpDR0uwgDN4nVe6s+Sv1w4XoG6ES63J7T/W
	 l6LIdKzTfryfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961FDEEE265
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176733083360.26455.3148419248534719545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6917d71d9acf3ae4cddb8fa49834f2c77ffcebadb35575f42ac5f52e26934a24
Date: Fri, 02 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767330833
