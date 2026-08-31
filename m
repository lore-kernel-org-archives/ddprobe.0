Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4268B28C2A1
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788196234; cv=none; b=PcW21Htvjn2i5eigk2e+sIdo0UELtRB7C41tgZRsnaGiyAmIwJr2n9h8YoIL8K3avXRi4/buoExaylTUNFZZY3/Np5GypduBp1y6KgiKt5xc2g0XO8QUjrhdVW0yoeSVJuGKzgkJDot8dX3wBgvawLl9wzTaw7bv8ofNGszuClQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788196234; c=relaxed/simple;
	bh=KnYzr+KTZBAnozZxOKpOnUmXU1k7gTJOjhaFlWaTCvo=;
	h=To:Subject:From:Message-Id:Date; b=j4gzHqGGRSLcHKceJHE1YJhrOU4vcCsERAjIu0xpUFkWR4f2hQlTQGyXO+9j4szgXL39N74p3M+prpm+ap829k+12IKfD193vfp3HF5NtESlcktMoXBJ3NSkNxv15oMM7LJM6FnVxbWV3VYIf3V8RGSglQFbjrTRR878kMOKggo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SvV/nW85; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SvV/nW85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06A8C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788196233;
	bh=KnYzr+KTZBAnozZxOKpOnUmXU1k7gTJOjhaFlWaTCvo=;
	h=To:Subject:From:Date:From;
	b=SvV/nW85dQsh9c+94Qxaahicze4nC4OeHKHNqND+N2nNsNUxOxaKDBMbrnnRl97ag
	 qKGCB3qSZ1RDoVbGpmjukY7NlV50fSYbtiM3Fz3VYT/4vEEflEFDUIQI11Ws/8c02Q
	 A8v3lfxVwiFXU1wb192+hWG2BoqWSm7Qt2PISp9xLp5NBWEeVcy4bZ/SJgNPTptEUC
	 qobl6stXX0Lxzn+XOdskMT/XzDloFWHbb1llGiDepuoLVL4gz7C65tYRB31vEyXhOz
	 lacySa3wDlrC0Tz2/fl/fX9wLXySDArFN25T0nxt137zlWPcGqUxQbIjZbwqE9Vvy6
	 SsJ2zl8vf8EYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA662C624A4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178819623368.5672.4208237455754415798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d98306843f6093ac3bf96e9bf90aed8c00d5b68c9408d91bd9ab66f4a1d8f612
Date: Mon, 31 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788196233
