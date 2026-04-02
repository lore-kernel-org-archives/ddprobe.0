Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642E7235C01
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 20:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775162134; cv=none; b=D56ewZbdfjH0hGijDxXjArNXajoRW280p6tYsFOPrug0oRv01M8y6Yh0aBL9qR1EDBbJFdfMUitCvpyxgnN18I0YxNaLUv2OQmz35Jc6fDU4hMZfgLzTue9QNI+IGSp9TmXhzJnRvZf6taav+2WnhQmibx2RT79L//DoLjXjHTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775162134; c=relaxed/simple;
	bh=eruC+nbuAxWFQeABTMr7Gk5IxryACn4dusGbEYVn1gA=;
	h=To:Subject:From:Message-Id:Date; b=rgAdNOaJF4GWAeT5BZhMX4FaS8aSQOR6qqITFU3g5NT6DfpzHUyOJQnG3TFvNC7f8umvbZqW5TJmOrij+J4RFpzM50A8InmdBZ6e8i0hyajKZM6sOzqgHG3u77jPSdi99aDxc4AlWnuJvtFyIxMHY1swcIlJZJRuAEZSjvz7+go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gn9PQZHw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gn9PQZHw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3436C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 20:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775162133;
	bh=eruC+nbuAxWFQeABTMr7Gk5IxryACn4dusGbEYVn1gA=;
	h=To:Subject:From:Date:From;
	b=gn9PQZHw7AGDivDE7UcMYM7hZixMniuZiojc5XTJhcdRLukek7wLNceTaWWV9j+wW
	 Y4JLxBzdwTYp2T7khWiEiDY4YskVu+CtVG0ET1z1z8vOC1pP5UuLB0b5GDqECM8Ryo
	 a/BqoSiiwpbInhmjxU+tYyJDa0FZz/GpsHOUmLFHUvgVbOHaSdZZs9vhiKYO792RD7
	 0y/u59qcuk7H45MyLUay/2CmwJ3mj4l4FyhSExl8KtbeOpO5w7hNlmEvGc1bTLQqXp
	 TJ1+fruHufK2A5C7qYar77CKZP5M+A32fB87yKV5Hv99iiCy8lEUvI3+e65PUpLFkP
	 yN0TQj1aAP9cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E57D6AB0A
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 20:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177516213373.19434.2762343041067443499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fefbd2b850a969ab33e756946375f902d9912bc7ae8763008f7ea2a9d3d6e21f
Date: Thu, 02 Apr 2026 20:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775162133
