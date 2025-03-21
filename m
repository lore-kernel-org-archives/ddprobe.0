Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519031E9906
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742543394; cv=none; b=sRdTL4h7rMPETJoQbhq7Z9BYnTqw5liPnDSXmvm5FvfAkutqZpt4VQXIJtHRuaDA1XMc37Dp9SJkB9Jren0YkJrfHPnOR0OKVzgBpk6R4jtWaAdK1KpavMxHW8nCBrouoWI5YHRbLCz69O2hDy3G8cl1EI0h1eTrG4vOf/0sYv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742543394; c=relaxed/simple;
	bh=zyxKyTjJ7DTkzeoEA5Reyd1rHiOEVZAI7fFBotLtR5o=;
	h=To:Subject:From:Message-Id:Date; b=srpWAdwGYtHBzQznD+8ukkLyqp3b3BSzbzu9T93VkJTX+TTz5G50n+ZEL/39hDFv35LQagVWY2CF/IhEF8QRi00xsKtyiwBqaLk+6S6lrah4et98NVMhJRReeVa2xMVBaDeH89/UR7iMt8trOIPFfOjLMnlRCuXg3XuycHl5Sa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNHQRewq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNHQRewq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF076C4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742543393;
	bh=zyxKyTjJ7DTkzeoEA5Reyd1rHiOEVZAI7fFBotLtR5o=;
	h=To:Subject:From:Date:From;
	b=lNHQRewqD+kKnQUwvn10kSk1l/QqoXbOZ12UH6KpxJj0QVS2U/LK1toGw4p6JFJws
	 L7JWjWCR9KlNvB3sP6MVNJs4iDjpdSU0qHbuxBOiySmsYXy7XuEqbrY/nVpGY8EQu2
	 BsvxQ6QeHfGJNUU0w32jLP4Y+J+xrg2jl8rWUES1tDcBX19sCJYrL0Pvzj70pz9WoC
	 4JNVXMCK0/+3wco0rZS7B2svf6Zb8yIqFs4P4eo1jA9iWCZ3EQLx++dZ/GsATIteAQ
	 oETz5ATgike2tOzBGQBpi46/k7xiHp0ZezP/3lohQkERc0VMCop/0vZ2KOGHXSz1Pb
	 QCXl9pT56Mwdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE48C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174254339368.13616.455995417527390529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aade7f1fb1c0527f23021a7b6dc2c32346ec028c7d3c3eb43b4b1a2e11ccac23
Date: Fri, 21 Mar 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742543393
