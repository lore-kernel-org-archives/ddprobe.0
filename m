Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D93C222599
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767383634; cv=none; b=LeVlXKBh9TonEqXWtdqm9F0hJkEjdjU2RseIe+q2UtL7P3s1GYaB7Ottz/EOa+EAOXnSzCYYJVq4bvDq4bkR+w5zz/9jilZ+DeUBwBdj0NN6PIwVDtYjXSpXTsUGPxs2JwoR62vzSTGPmmADdpxBx7BscjHGZ8ieSvsmvPf5zbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767383634; c=relaxed/simple;
	bh=0K2+loDVyerMwaalEFQZJguE3ZDYIUCUT5qCOge5lE4=;
	h=To:Subject:From:Message-Id:Date; b=Egv7hFcBX/3NxdUdVpIZ86PnRkCJQObGHOZIr6jyI+VnGbvusgTvlyXJXCLqPvcFrNW8vMf7Bcge28egbEnOilmKGR+KxRatfT78rLNGa8AiXzu3MuReQCGBW+/NPPjpawYiVnDutK4aRpXI8kNer0GwL5+3XiTg9plY6QNo2mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mxf9ldjK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mxf9ldjK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60C3C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767383633;
	bh=0K2+loDVyerMwaalEFQZJguE3ZDYIUCUT5qCOge5lE4=;
	h=To:Subject:From:Date:From;
	b=Mxf9ldjKNwtpKHfLV9MJj6aOxKz6AblbnHzWTIJZjEbsxnxJ+ww90UxfqDKGgQlBZ
	 3dxWsNqUu5jSWDQ5W/VlGIuPcKxxXThzjbhu4Ovqpd6WJf19c9sKQBtzoaP/GZAJ0p
	 6wMp4QUSNvtw1BbO2V/fLZ+vaG6XPamcHYIpzB/bfPBBBUQM950Bn7HMxLIZXiET2p
	 a7b3zOkQY8RI9zw4sdzBqq4cskOvQHDUMXchnDXs4zRemt1QEj/EyJgUUlEmFX8EoI
	 y9miaXmUUVTJlSYjhgvhZwSDierQb/RBLDzLhPmZ96VBp/Qkjk5V7gMMDBArZSXbsl
	 0Y1rPYyHoVKZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D61FA375C
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176738363357.6148.1751123314593595890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4efde1b6532eba4b9450f283192cffc21d600db4f5ca5be12d5f1cb30902ced
Date: Fri, 02 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767383633
