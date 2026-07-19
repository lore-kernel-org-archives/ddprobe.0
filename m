Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD791F936
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 08:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784449114; cv=none; b=WZffIBE9BPuV/uUKEpLOyYgtjQNhvslpLa9E0UJG2wak5A9j1G74Aeob8v8RRKiF8ser++6/pIHpRZCXC+7psq4j5raalEld9bD9hdRpSqIIc51PhqZuQtMPAHGJY12aWeigcKwvu1R//At9jCL+nUnBcDPYd16hfitLpa1uP2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784449114; c=relaxed/simple;
	bh=Ydq8W2zE45MMsPajco2B1fbzWLGp7HcmGw6/XlY1nOk=;
	h=To:Subject:From:Message-Id:Date; b=aitTqudzrKfmJJeOU7v6Ix4dtXT3mtq777yBf6yo2CeXSV0IqO/mp/dBb7S1GgQDLnlELKzujT2vL08yFz9Bn4SLnT/ech6+HPbuubN5znNVGB7L+Z0uats2r7ribOWh9eL6hgmo+xe+Jo0scGi/bEA4csKBFMWFYjbgrKTLlDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/t+jKHY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/t+jKHY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA75EC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784449113;
	bh=Ydq8W2zE45MMsPajco2B1fbzWLGp7HcmGw6/XlY1nOk=;
	h=To:Subject:From:Date:From;
	b=S/t+jKHYlIUd2iJukaXvo4AM/2E8IdavjSgxXtVPURSO12Om4qj5LbpfgKq7X6zIo
	 /R3UJoXZi6JjRQNHBZrJLF+N1u8Gfxp2FqFSDXc+GE4hBtvYCZouKM6UMHETrJQnmY
	 0uwF1j6uccMI3cWXJKz20ByhERd7vvEl2EdNmJd4GksJYQ3/SGHob6CSuI3WDAmqt0
	 vHneAigLKENPQ4zMtl/48XhBkiNviJpd6ISSvkpe4fYY1GdwHJjdE/sx7GBRlTFtlU
	 ID0QhCcgb2ggwBbDJOjDXAJ6Vni8cjqlra9bJwCLpXHR+B9rF9P5Iij/g2QMw9ja6d
	 6Jqh7RLWM7M8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95BEC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178444911368.16731.12331082308767163748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 554f44e5c60f674c4c2b667a9171b8f029a86d70b99d8eacc0417adf5a325d95
Date: Sun, 19 Jul 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784449113
