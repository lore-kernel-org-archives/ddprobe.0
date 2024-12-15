Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC1645BE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734249354; cv=none; b=XtzxR0UU2Rguk/zIOL/e2OY+9YdXoxM1HVGLFgeJ9Mhe7wn108IEsjorsBlyiNkDjlIa4QVSRaJNYTbf1vVcWWHldVRqv0vY27uAkanZEE4Po5QkczeuKNmC3f8svbCoO94kR2EL4Kv/JvqetfOCAgaXsFm9GDGBlQpZxAiRV3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734249354; c=relaxed/simple;
	bh=3fbJuESdGHSyhLST9xMMuTImXLjojHxtwMv6UDMdnbw=;
	h=To:Subject:From:Message-Id:Date; b=VU+1Kg+ujNF2Mq4P0Du6VkQM4VHvRLitjId1N0u4lBErvcfnCo81kyKB5RE6nNpOOn5ueh6iYu6aBdxiVRKCRQYTZlZM5Tx0hTXJNYOZ1zdVtve8prkG1FZoGjB493mVS9XJvjOQkVFdrzl2U2qZoXcqZCa3fhozzaePpLMPj54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UalO2NRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UalO2NRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A759FC4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734249353;
	bh=3fbJuESdGHSyhLST9xMMuTImXLjojHxtwMv6UDMdnbw=;
	h=To:Subject:From:Date:From;
	b=UalO2NRyByTV3/cGfT2zD6OWIYHY+0Uft0k6bPKHFVyfZkH/S0E1VP4GO5KqDxkdx
	 u6jPTgpwwiBUDMUaoSEp3Xq5nHU2ts6GOoB1uK0CetQZ7ioMsNG3TWSNqo+Ks1h+Nx
	 xu9Ek3l8sOqvp1tCmBzojt2YXB43hvoraNv1QuXOOxJaKxpkM0knG10GAgsXbNZiuI
	 r/krz2fZSnjGvdWYZINGqbgAa35/mX2AiNWSV9tgYTh8nkmpTvgo7LYHOuQCJJ6DTq
	 +78yEu5ajI+JqH502/BbYhmQfbOFQ/w1VYAfjkiHmHI4YsBtRaQ21oRILnmneH7qH0
	 I2YfERKX6KyRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98760E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173424935359.2137.7096874638246362785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61c5a7b4cba3bfc9df4940035118163e077e78539ab5a0c73355fdbac6ec6f1c
Date: Sun, 15 Dec 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734249353
