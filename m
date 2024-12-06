Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DCF3D6B
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733473554; cv=none; b=V0BqkjA5zwiafzg1FULfmrRPVyNBKDlaAceZVLGeFiBBuT5AsP4H/TzudR4JvJgsYWWalMJThkuM4pQuk0RUpdhum1i2G8aKMFJro8nZYU1k2SuaRikyI9WWMNpxC1Ccc642QVJ+7jYj5e0njraGdYj5jjmeYMGBopv5r45pH28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733473554; c=relaxed/simple;
	bh=jcA+/KclXW64AEDOsauQeuF1/JLZIcvaYG+7njQ/J/I=;
	h=To:Subject:From:Message-Id:Date; b=pguYVHlQ3icaJgNcTxK3tgAwLQo8uZ45509lG3TN4MGVrcAmzMg97E3qoRg+WMmc8oTd+1TgTZUybaGYC1ifEcSjuDSi21GjH+jny7L2IVJFjXgDJdrN0dtrShVBGW85uxyccWBzh5U4Y3Wsn9WqSDq6BzWxTC/QaW8XNmT2oo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jql+5cBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jql+5cBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F54C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733473553;
	bh=jcA+/KclXW64AEDOsauQeuF1/JLZIcvaYG+7njQ/J/I=;
	h=To:Subject:From:Date:From;
	b=Jql+5cBdgSmNLtNJfveMeXHHsQkqVGOY6pTaCtbKt7E6V7qpmbwKdPBQbccSsmLwN
	 T6QKxaaeqCFHpj9uYgjA7SgRX3VCLI6JMF+8/QJb3Z0MyjXBbHnKmz2WKZ9rwTsjB6
	 vAX6kO+h6NhMmAxkMr2MaHsUeJVn9VSS+eQLxBFzUPpoznvVt5zO16LYdhVSCHQ1/E
	 6lY/VbhY+/DzAGeRBPhJ1db26hmMo0ZuJwnZmiDOFBjhqRyg4kQ7gmjgNwYNZ5WohO
	 Q+Qm2utDdwjWN1Yrv0dZ8MhQthzpE/Vyvd6X8X3PoIwurL2Ifncg6nK33BTT/x7Iz9
	 2wW/Mem8410cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CCFE77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173347355360.14520.11518342900547460022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18a765dca59595957b31cef2a72ec5bf5447ea9c872afcd1aef744b994eb7b31
Date: Fri, 06 Dec 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733473553
