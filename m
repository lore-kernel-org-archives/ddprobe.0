Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B5B251DDFB
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789756234; cv=none; b=GIbD4Q/nOhRwMVujww9rYJzvV4/yyKiNH4ZsGV+/RGA4wIrw8o5vaF7MnQfIXYBgVULFvhdWYCHzMRFLSlIFZpyfjIPs4wkqWxJeaERHNQTOCbCPw4pF2S23v5v9PBNNaLILbN/y3vNc+QLO92NveaJ55VFuGur3yisiVhTzxV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789756234; c=relaxed/simple;
	bh=BacomUz0PWwGuNf74N32QF5wfRkBd6QE/U5hrAdrY9Y=;
	h=To:Subject:From:Message-Id:Date; b=QPD+VH2k2AIWkvQo4mvLNUuV5oCvx+29Sa8r4D9Kt0YiUzy50H/ExX/miFAsKy3jhjDjI+hSa0IL4amKjHWBfr0pTnl71WWZIavxVBrJbm/67A9OeSS5s1c/8PhtWuID2yWMv5a4ZwQanLt38+C3OfZLQoBD0GuRWn1T0eQJD8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2kgUlJP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2kgUlJP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE68FC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789756233;
	bh=BacomUz0PWwGuNf74N32QF5wfRkBd6QE/U5hrAdrY9Y=;
	h=To:Subject:From:Date:From;
	b=n2kgUlJPGh9b6N7QyidjeUjHN13YYpCVMft1syS1qoVZBCi4nVnsPf5c7fVk+Gnkw
	 lYTMfH1NDFMU85ucHsKvOC/IebCD/I6hPGHFPcVbvfnrZJF6AKhLqYoZmemAKfql7q
	 +mrOedRpNw7awTIJIJpCa9QiPZxDZXN1rtgkhlx4HWbsjj/9zOnakh0Vz1QZpIcydF
	 qgb46fo3LZvhX8F4C6F98NpjBkVriFEH6lpA7KTlijAES+5mgj5XX1sv+MEvFCvfTh
	 Su08L7K9KkKc0Ed3q/+jzbAuSaQVSa5oKMeRaz2k7Vwz7NdOvmB8HPnZ1trYovTZns
	 yYJrqbsN02xgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB838C982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178975623369.17223.12821768397664192646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c1cb2cb8186a143034a4bd2ce2a300cf4ede0faf8015eed050d0297b65627f5
Date: Fri, 18 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789756233
