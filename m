Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A737645
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 00:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741911534; cv=none; b=HYs2ECQZPkBXX4DwFBsBTjCDHuEOu+Oe4y5hzG4pIhKJ66yi7gyd4uuIeDwKlWSfZCjva3aJ3cuFKLbKcAvpyS9UQQPEL1Fiwdw6FGCqbSYVgi12BQ0Vq5oi3ALqbdkX89bLbusrHLMT0WH5TTAaDOBxloTwkogHJRQ0TGx0MQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741911534; c=relaxed/simple;
	bh=xL39Nk915y0r10rY2WmEy3qnnw2PrsbVsrZjZniZZis=;
	h=To:Subject:From:Message-Id:Date; b=loCpMKUQ3kQyWZzRgGnxniM1OefUMPCMXYeqkJ3XuJNiyvx2Mkxt8WTxtaqtOopkZtEXphn+/C5T2NiUAhZQHmVrUuw8JMMtI6Yp0K+2cmyXSbTrfStUVun+zGd9aXclxBsAxok6vyzKJ/9LXnhwjelhikM1tgRfEHCw9e2Pg10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=luQKvVEg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="luQKvVEg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D1CC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 00:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741911533;
	bh=xL39Nk915y0r10rY2WmEy3qnnw2PrsbVsrZjZniZZis=;
	h=To:Subject:From:Date:From;
	b=luQKvVEg4eTUOtZx4z2R20pcB2aLawJ3Hvx7VV1e+puC7AFFq1dtSiFWeT/E4eESU
	 rQEOoasEhMt5XqxbwmmHuBsBw3KkExSurmzXqxoTLHFRf/uKGcMQ3GQxL+r9iRmHD/
	 yYOU6CRZz1i+/ADRKXn9ZNyUxLDmbP31JleAy74qxZdix5Lmdx0gTcCy5uOmF/Y+Hd
	 zweyHlVtXjSHZokGM4jQxlokz3dbkEcjobHwoBu088J+3+z8nss5BFqDhULScwHsUm
	 6fIaELkWpMFF+46oP5lXVVrHZT0z1il93vfTn9T+t3yuuDYi2ukEoNDOSUJsYnWmgK
	 zvawBpNDqOjSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9846BC282DE
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 00:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174191153360.7873.13798893831990661170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66025afc950925889ec9b11d0c47bb8bc2259e048aad9bc2cc1825b3726e3350
Date: Fri, 14 Mar 2025 00:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741911533
