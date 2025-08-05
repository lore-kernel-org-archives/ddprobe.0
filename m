Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA0C29AB1A
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754420994; cv=none; b=Y4a2JiBATlYpxTa9RpVtwC3m3HH6MnvVPwZ0moL7OC1jmifomhuIV/uNTWk1ZSPHi+rye3HILQ3R+45oBDML+6v2cXxlofrnkoBO3AsMTkFqmJl2NMm6zwnuhegT8I0qiuoIGwMQSDZZEHMjEhJRCyQERFUXA8H9fAeYU+EYZ4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754420994; c=relaxed/simple;
	bh=sfBsxCFYXTWLT4FrPoEWt8VB0Fm1eQFfyWKTVlpj79M=;
	h=To:Subject:From:Message-Id:Date; b=gJvewHMgx+45YUNGmP2MVVafHfvVoxu9aJs5xpK3JCJ+FDt8IAC0CDAECplLo5fhMF6dVvg9TIECdN8AI2rrEPaf1uDwd3fI3wwV7MoJ1lwIvp/105XOfQKVP4xWlLPiU5uqRbe5nlT2DBDihX6uI7FReeIHnZhHp51Bg6X3Dwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xt/C4E8t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xt/C4E8t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CC7C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754420993;
	bh=sfBsxCFYXTWLT4FrPoEWt8VB0Fm1eQFfyWKTVlpj79M=;
	h=To:Subject:From:Date:From;
	b=Xt/C4E8teFWwL9hl5HA0plJaF8F0yyQ2dzGNunRpNRa5ejtpUWox2z/JTmptIU268
	 dfZ1tSlvGknlwyyBWdyiExeqG4/hpIdnMrFtiCOM1dvSmyEeHg0lZX5lPgf2QBJ26U
	 mn6M/oKLL7rYuO+pHYVOgkExMZHEaWNvJTAJQCN42NsSyVuxUzlCkKbVHXQVn/shkZ
	 e8nTYfvPaZ5iAJYnZCZWEvjrRkP6CMvsF/yueedRZzzHJgqxzHJBhUFcStnFK22lEz
	 jx7qEwcNbH/z7j3L3Zf9E60v30lzzvrlq0Lzq5TRrdoQGTLz2Ho51vKzJ3YaJyXEhg
	 osY1Bm5//biVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD55C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175442099358.17510.5025373703213090614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ef2461fed5b25b35ecc2af2c5caf59cb7023c18d119f42c8b2b2197ecde1495
Date: Tue, 05 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754420993
