Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E36A1A2C2C
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 23:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716767063; cv=none; b=YRr4rxc0H+9yG3CylIK5Tsi1xDk1H766QUTqFzNG1IoAlkqs2PdWbCUogkyg6uZeDr4EId8WZEmQsgxuXVDyO128zYrmEhs8mgJnzqInuQamuiWHpeeVLXFIQ8ZOumsc7afZuh4MquqQbBG8/i+wzIlhBbUguHRETC2KsZ8b1Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716767063; c=relaxed/simple;
	bh=yV2eCSdL3l+yeIVxUY6YPqWYQuxFFHMzuPdby4hy4/o=;
	h=To:Subject:From:Message-Id:Date; b=IqCEHZPxlIUbsgJXtcMZESehRKruqCPhajV1OKjg/HTQhq+DckftVMusWcxQHS1QsCLBHgb/fDgnl8rvm4TM+psQEhD1+8k6WQEJ6vksC5L5DtXp0jbZ+gpw1rxGtzL2sUyZLiAtlzJ6Vb8om1OUG9JHfIw+wtIUmvSCOcpxRRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DR1h7oEa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DR1h7oEa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D68C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 23:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716767062;
	bh=yV2eCSdL3l+yeIVxUY6YPqWYQuxFFHMzuPdby4hy4/o=;
	h=To:Subject:From:Date:From;
	b=DR1h7oEaC7OJhGpJQYrx5C3fhVbNCoxR7HLabV7LM9WptgtGuvjOt6Hga/Sm7HZW0
	 u+Dk04oSKFt+uRgn2rA9HdfpksSqQH4mEUzJQsjFcOZILIt2qR/NJMocx2WDrbdBFz
	 1ngktiy7ssDDTJCztoQCs/IjNmjKTkYLJnfoKgacejTZEmFd278P0GSmJdddT5fc08
	 eEEKyHNMH51+8jV7Kp6KIBkYYQgLKpo/sVrvEssLoaCpxfCInjZr5cCGdQjeHFiSaU
	 zrcaSgU/HdqmLyHqmCsZ//hb3zTAtMGEVEh11pXjQiZJYz8qcjHn/B8KnrPt/m8X0j
	 c5v88q2/G82DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE512C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 23:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171676706275.24068.395833178489913423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 830e00846bc8ce9c7a46b583774ef0c8cd4b5b8a1983395a8c514d76a607d653
Date: Sun, 26 May 2024 23:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716767062
