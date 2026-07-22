Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DA843C07C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 19:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784748575; cv=none; b=ZRAKq2d8GCQA4+CYDXlCC2ky+mtBKHcZnUr+mO/6F4rV02BYg6oujEezuOq15YrmD4LDbBI6pq+1/b/FpDojDNXvDvDOONxMNwIU/3IIHQDuDQf1kfbkaiQrLVqAfWANerHb8RL69PZqZTmrjwsf/a/vSgvocHdlFnGOhRJs060=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784748575; c=relaxed/simple;
	bh=g+d6mAdIfPLWyg5K80gU/pyjU7BU5sffPniZbuFfhmM=;
	h=To:Subject:From:Message-Id:Date; b=AVsCtlNLxXvtmezcbGGfxv7QTUvhiiNW/kus2vlMU2iW2crmv6X/unAHZ1aOHFP91fBALyI8vuI4ME9HbJFW5iFcwxBlvfWtHPWySA8deX+ZEeQHmgwTmf5mbU2ZsM7HW24J2HQfZbBwRO3ZM1XSAiEAadN/OcgZ/hEQl0eB7I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVITnRzK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVITnRzK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E11B8C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 19:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784748573;
	bh=g+d6mAdIfPLWyg5K80gU/pyjU7BU5sffPniZbuFfhmM=;
	h=To:Subject:From:Date:From;
	b=kVITnRzKp3U9R5khn88at19bR7sC0lPyB71NzFAJ1qImWqnWfpK59H+jpYZun80XV
	 QxZlfqtlkGjhbj06NuoFoOxy8fJgci3s5KnQWMqhFXno4kMf4QioQ5CsjKeU1OPAez
	 7LJfBkNBhck9abJZ2+Yi7S1VhldAOTCAXvDNKQnl4rPUXZi0lw4fuVgx3kSMluIFt0
	 ATbNycoA8+JiUVBO/sRdI+w+D1cyDu4hqD+Pg9eJxwdeAoMZOoh7Fx7YXRA0bSZ5Ns
	 2nqCiiFsRibaNH9IJy1AN6b0YorBPaSI14f90FBtx8dx0aPh89KonDpX06/3ZDYoD4
	 N4gXBuQrKdz3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5AFEC4453C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 19:29:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178474857368.14984.6562577065851736570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b195ec9b3815b6b9cbd2c9c17c48f92a01966ac6f11c17f0bd3f60527c9ac4
Date: Wed, 22 Jul 2026 19:29:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784748573
