Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87956392837
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 17:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780077154; cv=none; b=mHZibajPX/o04wflyAnuqW9B2H4oubzehl63ttTBZYO7yJhWjfWq5n9ALMpxGCOQaOgp0OxGMq/Koj+tyEhEXr9ua/vfJxf+WDGBxInTp9z7AhQOnQ3rWrS0HPYtxM2S8D2JipwSzqNvfGFNE+yvkqjSR1H+vKtsEaWQWMHqkrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780077154; c=relaxed/simple;
	bh=kBxJxInJW6q1neMnWIxmTgZFgX0EzOvSvPz+md2nsWw=;
	h=To:Subject:From:Message-Id:Date; b=cIIfan+Ld+Fbfpf9pGZT4hEV8/ywzDLHpHu/0iPiIczAKrG3QG+9FQs4+OfIfCTakzuPz+KgBfWZp3ttOXRestrDj6P6yym4IPOHO9ewbKU3JUcdzFidsyDOsyV3a2A+oqkTzIrOoFCSSZBCpwKNNjtiQeqGnjiuayKKg0UXyew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6QSDm31; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6QSDm31"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17F4DC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 17:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780077154;
	bh=kBxJxInJW6q1neMnWIxmTgZFgX0EzOvSvPz+md2nsWw=;
	h=To:Subject:From:Date:From;
	b=I6QSDm31ywat0idbGXk7uUBMih6FB8NGQacni2Ryz7Q5tgu6hw+dTA6QEUKHGKl2O
	 qer4pA4Z+Lxor41mNCpTLsaov1V9LsXOI4AICF2YY1YGQU3TDuE7W9Jl5vmAjRklbd
	 FnG0hNSx+UiR9tCYjGCgX0SdLZzwlfAN/iqSoWTdJjxW+X5D41PMqNASL+2WkyocI1
	 BbWX4h3gkkiqtCF0KLx6Y81+ppsYv3Dqr6b5rbzMCpyt/yxDKLL0dI9gAXYQhMIxwB
	 HRi7aQylH0O+cSNL3kR2Ice12B0MrFnDeDMfPyGTTdK84dQTS7sB1CrO0sz2El9a4c
	 d95DCAZ+o4IEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0AAFCD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 17:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178007715388.22641.16983305058585207976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab68b135f99d5f4ef7f9b8cfb9feb103ad5c74801b619ef7cf279532b43b7f2
Date: Fri, 29 May 2026 17:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780077153
