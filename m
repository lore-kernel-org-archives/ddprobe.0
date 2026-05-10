Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3669522A817
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 23:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778455234; cv=none; b=jWUdFQeUNnUSxGj6avFEVaznYCaJj5Pwe7k4fmVM6A7B47F80+AapxQKn/bQ5XDjUKn8RK8iWBj3X6cPKmIbX2qLlB0zBl2Yj32rFCBKfFRI0w5nWTcFmpu/8VrRXMcUkii2cKCUaCjUsOWIf0nQx3cKzxeCQosqcXusx7dMRWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778455234; c=relaxed/simple;
	bh=IJANoLszKKNNM1NwgblBHjZnijsRsngqTu0yeUB1OLU=;
	h=To:Subject:From:Message-Id:Date; b=prD9nl9CV/+e4mAxk4awDvMLT3iLuSIUlPcUwnaIC+qeCRBIaRDQM4we7a6aSqwAnmBac4tGuIscvD+ti2RiRN6uIbHLkSvyfDaIOW5msMW1fPnXhuXboaIvjtjuCXWfoOCLJWCbMnHaIihsS+OGCLV3MW4CeAq0eOqi17cHDFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYlxZOmu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYlxZOmu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15EEC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778455233;
	bh=IJANoLszKKNNM1NwgblBHjZnijsRsngqTu0yeUB1OLU=;
	h=To:Subject:From:Date:From;
	b=iYlxZOmuQyEDbpCxek2Nswt56B7yDZn19Hbtv1aXAZHuW55DWc2KT2Qh3pN3+5ha4
	 d4opItzMupiLduxzHH1N6o1US9/Zv3obXVG9r45zEneZ+/oTjqBIwQm4/mYLWWxZZO
	 88xIWQ4Co0Nz0TvhZ8ySZaAJ4VT3r4u9m5WDshdlnDzBfqagx2NpWy/IZwBsi2SLXu
	 9/OL9yXOqDuCfwsMaBTvPj/g9GDQE6F8NEk3p5eiNr8QmQmkrzoCwRqqV6tA+MeXJQ
	 PLnj6kakI0qtfNXPp7LAEwJAKWqClanEWTNYN4yKl5ffZYgv+9lISmHnlVy0SUmHzH
	 /Qw2slW4bMd7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1ADCD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177845523369.29990.17500553811125583133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b548608eb25dd6649bd573e2fe3e68143c2b099aae10525e9f58d9f8f64e853e
Date: Sun, 10 May 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778455233
