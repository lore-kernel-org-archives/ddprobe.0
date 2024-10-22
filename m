Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FC651C45
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729568154; cv=none; b=RMHIkBN77lfuTtH/G8Iib3A2iQNu91IXp2k5Jn9BKacfrrPsseUZwbZpUXk4kjTRWH/pIQdQpENK2WVLDKnDUkShsZgTmVribD0KLs74XAY+Lad6nwkQf/bbuiCvPbqSeuf4W6UPMjuHFxjvofznuQBTubtzoFCZfhpT5/SI5Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729568154; c=relaxed/simple;
	bh=ZgTbL0z1mZ3nzH5QgR4UVagr4xaDyK4fUv5FBl5Q+po=;
	h=To:Subject:From:Message-Id:Date; b=JCbivllClRKdvJvFI5HulCfAyiQaiBKbQjMaWMORHBX5tUbpDeCH5O30Z1/D1ps4xhxexCXwYQ92Z6EEPiJQou2qOS927RjrE0N1t0+torVz8P9Gobif1/9SdIBp1HhYQnyEkm2OZqid1V4xPAVc+i23wALODF01tPa17os0hbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oeduj9A4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oeduj9A4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7002C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729568153;
	bh=ZgTbL0z1mZ3nzH5QgR4UVagr4xaDyK4fUv5FBl5Q+po=;
	h=To:Subject:From:Date:From;
	b=Oeduj9A49Ah0B7lKdpf/bWg/Yvd/RCEc9N3R1USODr3SyFRdvZd/OiDjq8U3SlojB
	 R7IhW8HVF7jL3VT8edFWyLwPqXPrRAv+BkFtRWxvBUdRWFC/0Obh53pc5RAOZmZXk8
	 KjVd1yOau7E7tQQ0yyhCB/4vLtnKWXEpV/2eWHyZZg+KvqmE6+ek+gOs4Tovnsi1cS
	 wLE98D5+rJh1VsBJo1IUa8N3XVpN0RNpBayx7+p4KQFdTZBiXZNFFYM+58dPkIjC/U
	 p4QsCDUd7OJq81RmmtSs7aQoSO8Hhh8kHSMrdd4Mf3YXCOdZ69RsZOqRrgw0E6cgN3
	 UcU+tWFnlJguQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9395DD1715C
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172956815359.7965.11843483905914616340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 319141d20dc46205628e0c4a3a7a7fc7a2cd3f6247dd69b0449e729c5ba908ff
Date: Tue, 22 Oct 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729568153
