Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533D6481B1
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785075634; cv=none; b=eyN+pmH0sekcSp6OYXyNQBUIa6VmiRsa8LP8nsJL+AeLL2f5hHuzzRBclScLv1ZomS0zo335WcImpNj+54cw0QZAnSs0w1hGnIsgnNNnm3A2UZ5Nwbt1om6nLgwocZmc8W0q0PFi0ziHLnIv9Po8UoNjHuXVAJxqxFxC9H7Ma4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785075634; c=relaxed/simple;
	bh=PfLgob7nlbzTvR0R8ybFZTWFl9Ft3UeZkxPrZu1fb+Q=;
	h=To:Subject:From:Message-Id:Date; b=Scn606wmLKuCeHrBow7rm9YOF7zHWB3ifRKPL0vu/AauJQD/P7+Ql6tZqiehucAeFl4nIdoT6eKggwdiIBTlyaxazL6yknvLS6r0qdUWTLcgYuS/zBwu97RSDJYOKjd37ttaAxATUVgbWguBH9duxouRGmEmBut5/j/IbJZtFNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2vnwkhW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2vnwkhW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5154C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785075633;
	bh=PfLgob7nlbzTvR0R8ybFZTWFl9Ft3UeZkxPrZu1fb+Q=;
	h=To:Subject:From:Date:From;
	b=U2vnwkhW3f5uSUNGFyNBcFbtQbl75Q7AD3bsa/Nvx/UJOVl2CdTXFJmGIzJ2Qvnbs
	 4d3yb16kPMI2OiI41lkfSyZbToCJaAUVgM6ZqU1LE+O9I1bOoAzlxQ/kaBRCoa8J0D
	 dqQhfbjmlr28NMIJFahcP+hzI2Q8B64BPf3n2I28T9UvdzkXTcj37jsNTqrt0bHKvZ
	 Ppub+qg1QxKV4mwxYx7dKQfOe9LlLrHGJSbvlffvWHc7RBjPNpsZYPku3BttQx/IU4
	 dxkYj50M/I8GeCSlj8o1jRUo+cP9hcjHF9Y9z5agGqTbvQdtdT/CludoCzuq98NgC+
	 4SegaiDLazA9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3F3C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178507563369.28120.12223386753431942284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4358de47b06d14a8f0af801f6e1b42c1cdde4e0524a97dbe74d8321b6cebfef4
Date: Sun, 26 Jul 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785075633
