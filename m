Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102C61FDA89
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756153194; cv=none; b=T/Vux8ni8+iB8BV7eIBjuDwiq25d7mQuVBrRwdrHHm/2DZ7bBqCGNLOGGCzLZqRywmiXvBK+TRvrb3MfxSyRrD0gipxX65F8+vwei4oVPVraZSrLpm5Ng8hQ3DOi3ynfkbRknlDnT7vodIKhBv1DdsnPAJSwYmUVmIp60J4oHy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756153194; c=relaxed/simple;
	bh=EGSxjh6AcipdCxB8RLIPy+MqcusYt/hfK8q0SxK8xpc=;
	h=To:Subject:From:Message-Id:Date; b=HEYeh0+cvtF4wG85L3jcQMkAmYLRfEzmnon2KFuq7wep6dgrhpnHgyI0nqiYoZZAmkSnv2mIV/7t//8LQL4d77NpKcLL6CFowNUQcwOlQ0CnAwcD4UjSKTZvKrHP7SyTNo+DijvxxZR6e/iSA6zKT1uMjm5vMXNipwTlPaknClY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGxBOfpc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGxBOfpc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBC5C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756153193;
	bh=EGSxjh6AcipdCxB8RLIPy+MqcusYt/hfK8q0SxK8xpc=;
	h=To:Subject:From:Date:From;
	b=JGxBOfpcK5ghouVaBWljuJ5xe/x9jS11n31B/05maRxrHw6LbWE6Om+t3bylxqLsq
	 aHn/lyBywbP3Dbeq6wVswdqbnolT39BxXgL1kW0DXKhEADNvUXC8xWbuN5Q8ct5aEA
	 foLlH2NGf9bMyGjKjSBLE+yfXP8Kn12jWvE3o+0eKpemWEgYQJHls0VxYZXhuDmquz
	 yPbtam26WyVBJwCqIf94YCit5CAondEb/dexUpX8bf6XKDtNoq1d/vOz13y2jL6lJ/
	 ZpLWmIxp7wC8h1xpRP3V0g6wJxkpXip5rF8sxWCmz+Fr0qjHhFX1mF5rojGYA8b6oM
	 t+rnkAT6WNdcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA21CA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175615319357.21697.1569876952820810220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 725fbaf2ca9515dc924cd8bf63d4e44cda9309370fd911c7c2bb23ca5f8eb759
Date: Mon, 25 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756153193
