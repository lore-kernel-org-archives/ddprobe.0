Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A8318DF81
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728552354; cv=none; b=Wev5b8DZlPrsPg359jIpnbHiHf4PmcvlXI5lolScf1NpFGs9vaj4YbWn25g+VG3awIviMcjH3/t5LwOPNjZ0f0hH4KlntuxY86gdAqgu33ecIs6y5LIC7ZBcD/IncvcIUOZ54dnJRP2UfwOOeG8R8GczoiSfN1Z0h3By5b9h/04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728552354; c=relaxed/simple;
	bh=B0QU74ityXCzWw10WG88vWU0iiFGP6IlRO8XZse5qhw=;
	h=To:Subject:From:Message-Id:Date; b=kZ/dGAfcJaVABxlA99utOjq76tBFH+qvD7Bsu9K9RQ03tvINGgi0bb6/LJHBXubehmgQDQHSt311rUkr+RVxjD1QnCTwO74yjXjNz8ohPCPnSYzpWX5kOeqs5yelU5GT8pAxKbek+nnC5qNmllVFQ+W9WatBCWxB+2I+VX58npI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DIf7kuzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DIf7kuzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B66C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728552353;
	bh=B0QU74ityXCzWw10WG88vWU0iiFGP6IlRO8XZse5qhw=;
	h=To:Subject:From:Date:From;
	b=DIf7kuzkcN3iVKCvFwR88swbmcihONk4SwxTBv7Q4iq0WekqaVxh994XPzNhMRRfU
	 HAJCYrqO0rUReGjvirMK1ZMWp7DQzZ9j++PFygA1ra/MEZEk/QOTOs3xEZ28/DLCJ8
	 yV+Rvq4vG5HnAQvBrEBJYlkYlUPdgNW94c3437xJO6F0RFlGjB9vBcuYfzunwQHu1R
	 2REhT2ztn3N1XPU3Ns75ybdrR0YI/nborJV82SBoFe/79ioGKVcovwAo1dTwTvLlfz
	 Y2+iBclABz/+DlZ82RQZe5a9ugmepDgc7+BCHzq2n1+nxazxoenZdsKq/GK+vUHJ1/
	 ifNmk73ojIx9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C83DCF07DE
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172855235363.15941.14075654985253773507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf853c9de78314b2cb1863b8ff1572a068f0c9f0ef1adf90f775fb8c7a36e273
Date: Thu, 10 Oct 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728552353
