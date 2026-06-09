Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E033F8242
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 11:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781003734; cv=none; b=piHn4sDNIARFJS+A3NttVWzmzJ1xDYvvab0teBgAEnrAyPsuW5D02kUc5MT0tV6tiWov9Uhm9jQU3qxjlOl6Eoa5onjTEY/Z8SPHsBvYcUSw2sZHxPb+oYsDFW8cTN6bvk9XMf+bN0cAfhrH8AJGBhiQEVOjqp85JkWinzX2SV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781003734; c=relaxed/simple;
	bh=iysUZ1FUH0YsyHIGlAnul4jQxd61nZxYeOEdgSip4Ac=;
	h=To:Subject:From:Message-Id:Date; b=AZ+6PnRmqgb124L4hQ9fxCWsg+XLllu9zZluLXpgWflIPR312DjbLlWE9a3ktyY9B0Dz6qZ14c+pESUKTieDdoeaCjkG9GQaulQ++NhvyS7Dtf4BCzEScQlZOVCIvIyvq9Ni6Fk5mU540cSsh4TQaMS5j2Rcq5FRULBB3xgJph8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1rd+r0g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1rd+r0g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A21CC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 11:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781003734;
	bh=iysUZ1FUH0YsyHIGlAnul4jQxd61nZxYeOEdgSip4Ac=;
	h=To:Subject:From:Date:From;
	b=o1rd+r0gvgBQic2bxjVfzMsyvG9u5o6/1KsK1xkmxUn4z2/yrxHWdyZ1608+e0zVS
	 sAJcslh3oMkYGvJDl//xZdU4YbdmRTYDtLvYgt5x9mP6P5kfXNxdkQbJktIxM4Lxgz
	 zrA8YBjr3vGJ4HZjGLANPZ2YO1n1wCtUWsfbhzg+E2s9CeaZSeeiv2Tp4i43HBe+z5
	 9VDWwCGw/9b+wqoYWS6LYF0EdJDlfEIZrUkTZqyjKZMEX3S42qUvS4mIMsveKifvok
	 12OjwseuijpgaJWMSgpAA3V3pEB3iq33mqfckWUokEV4Eu8P7hJgqKrym4kC/YMbNW
	 jFMtywFuzg7ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA3D7CD8CA8
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 11:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178100373380.6838.630306908981789035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82588a4cabf54d7d3ddfcf6ba9f8b1d87819102641d47c86df11439616aabc91
Date: Tue, 09 Jun 2026 11:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781003733
