Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C0622157B
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789810234; cv=none; b=nZxxPxNkCsykn8C+uFWYfRyv1oIySey/ViBgAFkcheOhLVM7HfhnQNc891AC3w89QrzrKkFZ9yi1oxtEu18x9NUhokq1ODH4arRtrpfEvWW0BQ25RSI+7Uy6RZEz0P+LIAz5/17QKpquAUGD0ZilSx473xniVkzMohpTuUiaHas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789810234; c=relaxed/simple;
	bh=BTfYwuj7zbRij/XONkGHOxGmqtLAuxENNTHQwuNtLi0=;
	h=To:Subject:From:Message-Id:Date; b=u1ngWbYGr/0T1u3eGsrAuqzo3DFtUgRdv+0MgQm+oKAkGlXJw/LuLxsLU8iQrhqzGYHM+WDgX9SBg1tvdtSLDeqTNNfE72PZeA5Qoc/JfqX/hl02f2+hhj84Zr56taxsl0hAgKnzUnfLa9HwMxMiNCcA24aiBoCz1OxYXJjR6eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXgbGKOM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXgbGKOM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE9DAC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789810233;
	bh=BTfYwuj7zbRij/XONkGHOxGmqtLAuxENNTHQwuNtLi0=;
	h=To:Subject:From:Date:From;
	b=UXgbGKOMvw3GD1h+J7qfTAvom2cj0z+L4kK+MbaerbrAd13N7uX+4P8E4wbWVe4DL
	 9OkuOBQSG20zKjBFTiLrh0v5B5iy2tVChQ+V8D/lXRzInA9Sqscq+ggfbs+HV7LE9c
	 VZrOy+iu0ybsd4UlYXH7ZXvqFC6KTPkf/cX0N7K05eW+55tRR6vnAklUuKKeokg9IM
	 inL0BzdObMt2FzILFKulqeo6uwbUA//SiITqjHkI/EE9OG0g8NBFeFRTGKU1OQ+VwM
	 8kZo4rPCTNtHRrbN9UM3/rW2xVLkkuCAGiQ955nUuSSqVwZt+/AxBoAIRc21xPVRni
	 Nd3b0QAX+dGiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5032C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178981023368.5766.10886587317682925432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5428ed67d42d9b1d6096cb19cb8a01b4a89960a417654a774ce76391b7ae50
Date: Sat, 19 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789810233
