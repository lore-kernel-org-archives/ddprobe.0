Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428F42F43
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 00:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741741134; cv=none; b=upFeekdBdVXrSDb1jtR3aAjAPRiavudO3Ljk+h9B07xaKQPfvUJSCFrRZTV0j04ic8PPsQ8xoy9YkxQtEofkjL/HOC+LBfVgAivTtP3PGxdmaJ2E0WR8XHpNsDxSInG4uW3vSKXvLl57M3qSS/16DmpqqiaS5/l8Nq7XAV6mUGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741741134; c=relaxed/simple;
	bh=iih8UY2J2C8JStU3TQbmDjzCmrV+C2ogKGq0NJpMrNY=;
	h=To:Subject:From:Message-Id:Date; b=Ub+sZw26dnw0l8slZwE7NIO504D0nTY6DivTWy2lk7LwqvlUy7gn/4ONKehQ5ysTQnMPgTVEmStnK5PcsaSteeAeJY/bnPGoWbjOy8WxIPJuD/gZSgDjYxa2bNga3QyH4JwD6Jk69BrX9AAR124uWbAYUAP5qdxrhpttD6+Bs2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9zzib+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9zzib+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB11C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 00:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741741133;
	bh=iih8UY2J2C8JStU3TQbmDjzCmrV+C2ogKGq0NJpMrNY=;
	h=To:Subject:From:Date:From;
	b=d9zzib+xCCjfUdMK9UAhlXgMg5GV1Dgd8clSsf08Nz3C8+xGpOCkC61e5g6bXNNjN
	 0L9v+8TNmsIsXdi1WFhz1PjXSU1uJ5ZxlhxmJyzI9QEZ/bLQBYaMc7BYemAIusQqFu
	 2j1DhAHVRv+/f57Qggak3dlx9QMJeSF+Mxu0Z0GqXyaCo8buM3EFRwULLgzijBjF1a
	 TKKZ9qLf4oRvs1rLcvkYhQpO6ADiDZwyl2W7k0g3AuVZqA+F9GQeARVvwecjKSuwZZ
	 XYo/sBw6YOVVKsuAmWIqg2rnmlMoPmK3zJShqeIlXUjLMtBmVM2hPCniCAKk544ZEM
	 WxnCVOnNcKXhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942F3C282EC
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 00:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174174113358.13891.15515357363826770124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734f89c1bc52fd11d8d73e1d27fec7babfd009cd903ee67e7b45bf734f1384e9
Date: Wed, 12 Mar 2025 00:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741741133
