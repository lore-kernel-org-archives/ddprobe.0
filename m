Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2220A18DB1E
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750213194; cv=none; b=nDqe3g5c0WdIoXWhLnOzN3m0nP5ga3P44PNUspWpwVX9g9Q/250adErkvyNtBRPvAKJuA1mo6Dq4qTdyk5wYw2z3SswU7GkW1lPV0EvngEyRQP+potC0jwMDVyPvAKYNkE9rfiDiWGSsjXVzJw43QO/iX4+Ljo3I+J+Ek7chqEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750213194; c=relaxed/simple;
	bh=U6slx7n0MrmTWcniXC+6qczY5s/VYgbd+KrDP9ip1UU=;
	h=To:Subject:From:Message-Id:Date; b=i8zOoSpLiEFq8RGIssTwGetP5eZpnn1ZHcb+QHOvED79Nui8meeJl5KwGXkgB3tzScoXwlR4hvvu2p3kWtxJnc7KtiQtWLsPlvGuR0OL8UGjzrzYvYgVGlpY0yqIvwlHOyJ7SSes5/ZgXsJ4q9gOR3ZARnVaI+3ew4zpd1NRngw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZcuV4r8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZcuV4r8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A6AC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750213193;
	bh=U6slx7n0MrmTWcniXC+6qczY5s/VYgbd+KrDP9ip1UU=;
	h=To:Subject:From:Date:From;
	b=NZcuV4r8ml8fFTYw9c2rBnvc6Ox5Ng/04AtsqYjh2kMtk+cHfoCrciIiYYMPse7pP
	 ZmK+vkxooHEbJR3OTUHn2XutWrvfxwVE4gHiOM8j1lWxM19pOTchrEezphbetqE3wH
	 dwEyluTPdBfbI0wBAmF3c4YhCQrsSqojldApU6TP4pGH9oZABt4UWQLc+ryTpFzl6r
	 +LpgXf0xTPFSswTMCgosTiVTpoWIfXVi4JgooyYGTN0aJKyOzSfYyJA59UHYFjc7qa
	 Nxak41dLDhsffZ9cn4lDWWnNjT2a9iMuKc3Rm8o09IwPmRUXKgnd8P7xIyYBvz45va
	 iuZMkiJY36Dww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93616C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175021319357.29919.197913864807612766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 444f4b39462ca168dcb8dea5fd28da7f663fec0bedfb1a02207c0ba8c5432ac8
Date: Wed, 18 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750213193
