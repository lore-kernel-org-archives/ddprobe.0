Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2251B2F7EFC
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789270234; cv=none; b=MfHLFw1WElP1liej94M4Q3W+pa6ea+16onkNbwCsFydVR1HzwNPr7KV51yc6cLdZFqbWjtbLPc282DZ/7N9aROanUlHV1SIgJFgm35Zpya0sI70w0A37qPn2Vr+T2XblYgL8WmOSz4I+WFh+NIRAiR8qFX7X3ovCbWf2UZHhCdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789270234; c=relaxed/simple;
	bh=y6YOPG7K5OZ1YqqD8B8DEDqGHlCkeqZe9ACuW0HfoX4=;
	h=To:Subject:From:Message-Id:Date; b=UtgHyZ8J/YsHIOwOItvRl3pCsyweR8ztC/9wWe2lFkWOOxqFZWyYS71S/ttmTY1yLAL+ccsQoyBFFSH59WNnwLf+b3pLNaf34a847h2XeuS096G+K+QBSR5lObNM+OJQKu99VoS88uweb1hSbdfzd7NQXMY9E6z5SRel8O/lnj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozAYLmEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozAYLmEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7A1C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789270233;
	bh=y6YOPG7K5OZ1YqqD8B8DEDqGHlCkeqZe9ACuW0HfoX4=;
	h=To:Subject:From:Date:From;
	b=ozAYLmELft0q5Cedm4krvqd2Kr+hUrFgTQU8V6bAATFGYQrOIiu+xMmkobZXnMOC1
	 17sCo0A2i8JkrDiyNcSglWx6qHYcHQUkDalu8wiz4RFv2w+kFEGKYNSJU5gled12pL
	 nsEFGRk6CfXmKxFeRBZm7hZmIZ0qib0VfVyYVSDC2fnfTOPvf/5rraqHY3wYOQ+nUf
	 bArH2gbfc7FJfrKCjVhWt4JvjXYLcBgADC1pVOfWWklVbkNXJt0crjp3/H07NnfIZ5
	 oLnZbsiYNZJzq0rOi8y/mYLMhkBx08rux78dussAlaytYziqXt9c4qiE2Vk5hGgOXT
	 WFGiuANb7x5tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB15FC88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178927023369.24598.16468730867684235491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4768f909c29e703d1f704f95d843d8d72ffb25a052b2bf76b9b78c81e7fc9e17
Date: Sun, 13 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789270233
