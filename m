Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA5720B0E
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 20:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714162343; cv=none; b=jvZNFrm4n5NaEBG+/rLNCS6NA4D6oZHvliPl3G4HTbVRW6gXcp2mh4WMGbS+SMq42IAPLoPrgUV39d579yVNIBWwvj7wiGGRIdpIpTlHukLeOq4H43KNqPbbvBRoVwkXk8zOtp+U0V/qoNrPpzJr+gQFjp/lBHYqk3BBvQuf0fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714162343; c=relaxed/simple;
	bh=a7lIdrr1RLLmqgwIBrQYLYHq3N3ukSZ2iFukjqOjfJQ=;
	h=To:Subject:From:Message-Id:Date; b=D7Qjv6WYhs+UsCgnaCKpkZD0X0q6b5W1+e3tQ9Arp3PN/PP+wYvI6855sT38+Mph8NvjdjnsGB//xo3nxhwnDOTzCBMRfAXaBQ45JmIlLz0w+h2X3QJAeY91kzQhqiL9DF9Jo1m2CqtIPtOBIi8sSlMXQTP4w2cAy+YcnpsJwEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVjaSvLY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVjaSvLY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8BE1C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 20:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714162342;
	bh=a7lIdrr1RLLmqgwIBrQYLYHq3N3ukSZ2iFukjqOjfJQ=;
	h=To:Subject:From:Date:From;
	b=rVjaSvLYgKUo9RsaTsJZS6dfLAqjtM+3NKQuvnsvUJYSh00xZ16XzeimO0hBqOemr
	 xYlBY8ZzpkRNkWS+8g9Qy5Ngu1V1bnU35nUdr7esyag+hRKlLQkk5i0wZgQrYdRYn3
	 w9MB61PEbVKUyingIQiDU8VCpKj67vMd10BgHe2U8NLXmjg90q+w5YNRti35pTjuKw
	 U0cqphmop1I7WSPdMNFT029YPvfLouZ50ANUJclfXywN9DyMaGrVJwG3BLO9o7+OrF
	 7p4rY+a31jnk9/w/qrw1x8gy9rWpSzb4U28WIAJczAekeJUjlx6xPVgjIXWUmk896/
	 JMXeyU4HIW3bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E45C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 20:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171416234278.26353.8821898909982952082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5d57999313b7cff54215071b833893d4af6234ecef5e0ff37ed0977af89ed8a
Date: Fri, 26 Apr 2024 20:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714162342
