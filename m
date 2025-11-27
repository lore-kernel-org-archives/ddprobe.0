Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA39278E5D
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 22:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764282173; cv=none; b=nrni0yBfran+FxmwCTDhYRfDrXcTAwqdAQ2KUsbhEY4IIQQV8GPC6TbYku7raHoqm0JxT0AiDEG8p7ZHSJUWOhEdsY2S6LR0Lf2GQS1jVk3kCOInhY2X/A7FPwXgijMPgz8i+LOAfEV10hB6JuTySyALZrCE4JosnahIg8lX8zQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764282173; c=relaxed/simple;
	bh=Wsb9oAgiZBJbgVNZAgnxjtlJUiXKnHvofWO39KnIYHY=;
	h=To:Subject:From:Message-Id:Date; b=hpcJoK2bOoZ5U2hIzuCgM+U3soFbCreSVA3kTv0b2CKQlTDEXvSIZWjtshenqAAiVjTnNQvWLFT4ZLv5Do5HsP1laBliTeHa/s6x8T+zLg8S5TRYjcbHKpBFx+DEz8CSapugaESzgdEldeFgyy38Nd45b6wCaBRyTjfGKP9Wv8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCV0Nld1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCV0Nld1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DC3C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 22:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764282173;
	bh=Wsb9oAgiZBJbgVNZAgnxjtlJUiXKnHvofWO39KnIYHY=;
	h=To:Subject:From:Date:From;
	b=pCV0Nld10ozC/O1S7ZBDRgRi/J0M/vGV9ste8PS+vgi8r6G1xFGrLaYNo3yAJBERJ
	 UoLv/hOguKjFrS5ctHxK0vM/dP+o2m5c1/tyOf4RwQYQcdKdM/MUoFIWWst3wEaEUd
	 YwwlqFQxarh3pWQEuAjoeOY3JQdfiSYNYYN54j1EX06sdrsyASE2smVugGPOBreKX0
	 ket0TriPvbiZAi1V4jXYrhndWfkJLa0JAPwtcuSkUljwDQfFjkI35SmfVzbaqchhWv
	 1UE0II5/dK8V+Bv6r2Fot2HAZr0x4NhjvWDLwqCqSsd44MpPTNL/ZJR9xnoJ7l7FLz
	 3EXpGBraZOlWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9532ECFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 22:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176428217359.24203.14397953448805941072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f09c158260c5be7373caab8e256eef877551ac97edde7c45f2a72bbbae02b5
Date: Thu, 27 Nov 2025 22:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764282173
