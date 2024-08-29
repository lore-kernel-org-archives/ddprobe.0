Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB7D1B151F
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724949354; cv=none; b=eUAcUsnRw2c5i6E/hnQBBYsMwZkGpN7xPaGUQKaB9b0jHGtrWchHquoxWvfI0J4yLolnT14OmKDHAAMJP95vCwJxMBBS0ez9ZVQNA9UJixEXJy3lFUk5Z92qeM8A59A+Rt58V28W6o+oFBDkwY7ZOx1WU50VhLY3RqGh5/SPb0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724949354; c=relaxed/simple;
	bh=vifEUd54D8TaXRju5kKB/8v1D1cF4S1yPgEw+dl+lIs=;
	h=To:Subject:From:Message-Id:Date; b=h67VW6MbvIr/vjwHuCgFftAemMs2aba2eKjl8mULVHrrNGint1Tpm53dWOME9QmCTqIHKeY3ToGN6uQBgXwiShb0Fu6P14V/KeaO/n0D008I//vRoZ++WYxwoxZgZJx6ua5gPEvLBj+1LcddNHZ9TbqE2uU1HXJGi2BoUAvg9CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWxDhCRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWxDhCRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A49C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724949353;
	bh=vifEUd54D8TaXRju5kKB/8v1D1cF4S1yPgEw+dl+lIs=;
	h=To:Subject:From:Date:From;
	b=EWxDhCRaIn0glVTRJ+vl4IUlpwqxQd0t94mxU0TvuuUz4ho/2ohFywNzupxAQxFKO
	 55wNQkZd4nb05z7JsVEWhGdKLWZS4sWrdkhVhBSlaO46Z2eV6fOvQbecrKntiHreFI
	 NE7Ua2xavcnUTHFFZIpgnQMAlQxm1czGkPdyX1MEdb9WNnVvDYbYTPsVE8zmJ6pjlk
	 y1KfdpsE8SXP+IDnz47s2tKJC1Dg8GvcNurEuoZAkfM339i8a9fis80E/P+0Uzo3q0
	 X2jyyiXVtE1lOP0PebqfO1vf3a2iWUtp4RW6kirxFWhwGtX13fnmo0HDkRGdjointZ
	 gE8gLRAjF+aXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94372C83F3D
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172494935359.7352.12383166343148962878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fb720d9aac79e100463ee063dda22768e29763b9ee94cbccfafad52cadfbc98
Date: Thu, 29 Aug 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724949353
