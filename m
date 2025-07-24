Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83CC186E2E
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753340393; cv=none; b=R126N8zFkRlbZS0vKyklbjGnnc5hW2702Hd0msSgScq9rTkdv2wfBtuWSZ+GCkiXMLPd0tqZme2jQUJSAwcLvk3Uq2f8vF8v4BHMeyq/ZIrYpPHFfJDw8esOhxpd9Hu7ksFPOQVERxKLqMIvCOS9mpVHciNZ/mII5dWOF/0qrzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753340393; c=relaxed/simple;
	bh=9c8UjVZ60KVeWCUeJyfQvAEq2rxbQgHTilhJd18Qdn0=;
	h=To:Subject:From:Message-Id:Date; b=Zna/XyQQOLBBmk3bKV0ecKA5GNxKvUyxQyUpWLfbrHf1iDoZE5W/wQ+MJKKzlfx3kiaNeL5HwVWD6y5pP5bKsxuKeH8YtkeYG4fV+C2kl4tcCZdXsnEAEVrwVr0QmWaT//ch5Glg9kaC1fC8PS0yErEx4jugOxiOpiRx1S9cDk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAa1r52K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAa1r52K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFB7C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753340393;
	bh=9c8UjVZ60KVeWCUeJyfQvAEq2rxbQgHTilhJd18Qdn0=;
	h=To:Subject:From:Date:From;
	b=LAa1r52KlrSnQkZBVGhQl/xNzIKex35mXkad5xul7doXIph5MUD0uX57KJEN7tS6m
	 fDIjW2Ck/DFthLdFPkIrfsl2+IyJ/s2oQoc/Q2Baxyar/PDgqIXHuuyAeKw51u17xo
	 HyKbnrufnTc8a6bvFq+eMBophzM4kka1jt3DhKgIPgQyoTyA5YIJm6bSZ4Z3VGjQ8Q
	 MDUK+InC93z1S+55+RLTLZkP8bG9mKZJxXEODZlK8bIDNcQNQ5CVMHhgJen8EonJhf
	 pGMnm0RqY+BRAsVu2wguQWaZGYZxc2CTPnGJ3EyYUdQU/c8ykIEvaZZ3+c6x6yoGK0
	 Y3HaSVnEXu07Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEC3C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175334039357.26712.17594449976671615803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db6fb540813bc0f9651f6950d032eb4781d5c8d78d71db65f45bb92ab21301a1
Date: Thu, 24 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753340393
