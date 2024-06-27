Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF7119EEA9
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 22:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719528263; cv=none; b=Lx3YnR6AYA2XeEIOH7/ko0J7YlQpZ8qBNR1Hr1FT6YTRXzM048YkqV1obcUPCY5AQ/3CddLq7+ui7tEpgQkZiRUjaqJecq5aUaaaOa8AqmaUUUdp2+KRNWzbS5N/UPELmSR3SsOP5JxpmMZ2FwlR8hQy7EhNi1qg4Ile2XEDB5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719528263; c=relaxed/simple;
	bh=uKlyF2TzBCBb4PaGE3HQuON3CIEIhUaWNvbGfrf/5+Y=;
	h=To:Subject:From:Message-Id:Date; b=qsbEX66bqVi3F8+mAylXLC6vYGThvJ3SWTC5PWK4Gg65etbk+jnhAvW0f8CY7jT8mrtNOAe+xir9A2b4rUQ4EiNLGktQYETqWDLoTH7z3Q77e0vlsF6BSWVdDj4YcID3jkaGnrCdTYd23l5oKnlYXR/jMQQ6Pa+tC4jF1S11794=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uhi1zeY3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uhi1zeY3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7F9BC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 22:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719528262;
	bh=uKlyF2TzBCBb4PaGE3HQuON3CIEIhUaWNvbGfrf/5+Y=;
	h=To:Subject:From:Date:From;
	b=Uhi1zeY3G2l2ceGn4LJoWVtqTj2OAyrACGS5lBMNunxPCL4JztODEgJ8/4BZcje+q
	 lky1JQuyMSB9232q5VAgnUMZA4YI6alq6PWYMTjiK/8XaWzM9jkBt3gAHg7UPj88bi
	 gW5OwbnzjU8g2CPvRw/YrTAnCHFl0MfQY88ma25ROUIxsixGKV8VYKaKBC/5SYDIgF
	 PsvaFIFGFfxEvNa+MCz5t+erWXpl5QNsyVKP5TS70rvWXu31jLUpJgEuZqjlK4Irj9
	 t0PAS8LBgVZXQzRo2xVHwsWO4DJfZNmjKVAlFUPQkfMBbxyduzX1CP26WwEjb3fuuX
	 HgsCJ44LWMkaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3060C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 22:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171952826283.8456.6633456773368501929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05055534f4be48b48b68c5517ef06d78e5d3dbccefaed47d66f703ceafbc0957
Date: Thu, 27 Jun 2024 22:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719528262
