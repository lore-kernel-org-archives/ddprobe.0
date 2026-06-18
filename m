Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586443F1AC5
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 12:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781784394; cv=none; b=uQWZbptIqezmiF5vztKWsiWlzmTZp6RpFMtUryoYKcRbQatdZkE9sOXGzcLrjxOMarTiBf5Gui9SXMKDqNNa8enrMTwskvv6K2Bh8pWTuZk9UQ6zuCw3X9islOfoI/ck4FuUFjsJOH8yuL6TLf/QEszs78xBI0ncdd4kvE4L5K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781784394; c=relaxed/simple;
	bh=edsCu3O/NoupCClhwYZ/kwxRufsV/wlkYaCC0hr6cBE=;
	h=To:Subject:From:Message-Id:Date; b=Z4OFo53m9oZc/ex54NhOWhB1WPXJAP7tbzXHmYBCbjGIjOV8DFeMW/7gCLMeWVHcPbf6pCEXUVqdhjkMCvXEmhVXsr4ro46mv5fC9cnp7MUqV0PY0kqG+Cf/2LmN1SPF2yKu/VHPThNU9ZEnQiAZnvtGOnKbXEOFdBSDjjhVdMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=arWiWYsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arWiWYsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6B8C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 12:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781784393;
	bh=edsCu3O/NoupCClhwYZ/kwxRufsV/wlkYaCC0hr6cBE=;
	h=To:Subject:From:Date:From;
	b=arWiWYsp6pCz6fFcUGUHMdxTNwAXeico6JSMXSVzPdfu9TSZa0zY5jzpIslSJi2t1
	 RXqgxzrmrHevSUb8F6RKjsuvePkFu39v/lAkFSS7imrqVEGS9OMRAtXRWy28o+PPz5
	 7ba0qCoqqLazgogFwXMHcRQFwrYUNQgTDr0zRKfGkKQDhuQVdNSC5YGE8OxHU3Mv3h
	 8tktCeL0NFy8hqK0vxWKAp5ej4aERhUzYHNTgZQmWS8OH+3M8Q4obhnSFj4jhU5kKf
	 Kv5LK5NyLG1aUKr7u8w4/uFOsR0iEM4VNFatjj2aSquQxTgAjQYj3ubDFixMdQ6P84
	 6ZOmM35PsVW7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5744CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 12:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178178439372.3586.12574980509457204544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71e2e299ea0d648f8d6bf1cbea38d1b34105fe7b8371961f294688be6cdcec8e
Date: Thu, 18 Jun 2026 12:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781784393
