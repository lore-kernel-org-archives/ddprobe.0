Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5E834B1A6
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 01:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780017154; cv=none; b=XXOxRMWl/4l0y9eVUoONJQZb9165TCg+6poeu5kS/ojnHYEcAF6duu0vHWZ8IT62Fjj0P5YlHjTTe2ZP5llioQQ/XhBIsI2C6aqzppwgurYny+R81/nrkT6vlW1ZjKfQsUOoXN8mwL3FwAo2naBuxrF+m193frtjK6uhgScRT9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780017154; c=relaxed/simple;
	bh=0tye4Qz05Ms/WxS7aZcwvi+6UNN8peZxmgIleMa/Ro4=;
	h=To:Subject:From:Message-Id:Date; b=IcODFfJ4zMB7G2d8EVqN2aam9kJE6vg60nQVXiSzmsNHtbeA+O/hSvhg/r5Hs0YbDK1JUaDtXlfNQ1g/EXeAGxVPUZ+WhoEMHw8tZohkPFBDdcR+K0LGy4fmirCGe9OIG5oARz5eQ6NZH8xilJOH8bM8qwORsry0K2mdSxkTx3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BS4Rcvxi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BS4Rcvxi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C11FBC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 01:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780017153;
	bh=0tye4Qz05Ms/WxS7aZcwvi+6UNN8peZxmgIleMa/Ro4=;
	h=To:Subject:From:Date:From;
	b=BS4RcvxiL885b3UO6pQwnYSwSwK/Zylo4HEZMfOUxD5cCIu8eX8pDx9P8M1PV/hQf
	 GOo+SOPORKIqyaPMWXGRjrmQxY6MO5rOTQ+eW7d4RnfAyoG/oJizVD/uzNgRppx7kA
	 cwyeeOFDRzIy1qV4yWnozeDvjQBSnz0cGhRLE8Z8FYaBL57sNsUbi/dnN1bAVELuCU
	 clOOROYXtLBG0wKW3i6MbVnJ3MtFbWSOt4yd1rX4718Zjckm7+d1P9A+nhR5vXmIpw
	 KCknggCBh8auo2eLOxShHYrfC052VssBPRYL5OuxU8IvIzmnF0ZdbcpKHH3Dw0CMoC
	 sQP0wGOwgYdug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95B6CD5BD1
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 01:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178001715368.12311.10479517472448520944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e82e6062376796d70d1b714846a12006743febdcb985b0a972f313d08c90530
Date: Fri, 29 May 2026 01:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780017153
