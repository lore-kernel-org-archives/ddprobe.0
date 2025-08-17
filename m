Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F26B2FF17A
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755453594; cv=none; b=dNTiVOZ6byzOa6NUdZ3+TqkOneHMoAJzLXO8nRIAKPFrp4zUd3c7lTPk+kwTYHXzN7IKVhXtzKmzO6bWlgcHvCBKt11vVJ13gOGHQ/BT8yZbA0RUAo8O1UdLKQm3iaETByGqsVB1u/X4kHCZn7zqTe0k6jlf8SZ+PMNenrOoDhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755453594; c=relaxed/simple;
	bh=hjBTraJCY25tY1pdb6lAo/3YLuJFQZNdfeFn/J0Doh4=;
	h=To:Subject:From:Message-Id:Date; b=PRRyM76LWkpr21ytA6hbyhpa9wML4VK1Bkz/m1LBAE68y6RJ2nxVPdg5U/PjeT+w7bd9ECmrSJBdBeVLbUjglA38ZtdHr7+plvlFPTvoC+kLVWIBincQ8Kofe4a4LQiHjGGJlXWr0XkCaAvZYS+WqXtufHiHSzy5mepzoFt6sH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgBcj6Hj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgBcj6Hj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A264FC16AAE
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755453593;
	bh=hjBTraJCY25tY1pdb6lAo/3YLuJFQZNdfeFn/J0Doh4=;
	h=To:Subject:From:Date:From;
	b=IgBcj6HjrgwYP8JkDhhFWCaCYxJPy9jPODCmjFpMTqMTdXxCMEHptaIGWfTG8bUyr
	 uPzoa/tCQD4DhVdmFhuvtgeLSKJ1dXpqgSDlgJmwNeeUEdFAlxRwJRUXGdgfxlCCce
	 0qXjlQeZWl/AUoDsJGzfy85uIPrrOvmj7D6obFHhHuUR7Pqh/47IrZPpVrtkslEXMm
	 /fsZsJs7s4QVCyzbI/z9VTaRezzHo9JFw+YPRJ5haB/Odvn5IjTtilNEjr0qzNTr1r
	 IMjD0K5aIzpCvz9EIfEp7eAwZQDdngK86IlrncWSS9xsgoVEpCCKNh+fycBuBa4NSA
	 Q5w4cnXT6TeWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D9FCA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175545359357.28836.3428732342210117722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ba42691b1f58a70af668952a1814a48f803e77d444b7ea5df80806261233c1
Date: Sun, 17 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755453593
