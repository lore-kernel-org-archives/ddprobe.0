Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F0E14AD0D
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 02:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779502354; cv=none; b=NnBdwvhtc87C135FXXvSKYYyd9XGNnnFd2To9AjRHOEyXW3JvJrdg8jbsVswOEcC3wovvvNp3W1nNP8ZrNk/a+HnXzvSVQxqyNaR9hCfxfGVAVKzVkZgZkocXPJDkr/22KhOyvM0Jfxav0cUuZKvwbf4rC49wL0JhFsW8C95uRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779502354; c=relaxed/simple;
	bh=EuTX9uxl0F/D1lLnU1xLo4X9RL3gxlIbhYw28SntrYg=;
	h=To:Subject:From:Message-Id:Date; b=CRZJmrjToBN1qzZEidp1bI+z439xoK+xmmhBP/MiEzn/pagMCcpTwI6YmWJBln7muheHkB08dCBD5QSNwgqrTETPvblnpScMI5gwUO/PI/Vo8G1UhZvSas4s6FrjzJMtkXiafWDrcXHl3tfcchBaGtukDalQJKxh/bnpqCnDJRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gi7J8S5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gi7J8S5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C51E0C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 02:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779502353;
	bh=EuTX9uxl0F/D1lLnU1xLo4X9RL3gxlIbhYw28SntrYg=;
	h=To:Subject:From:Date:From;
	b=Gi7J8S5i1nzXDXqMj0+vK3l2xaOSZdERVFKQJL3TJSpKto9MPkq+kOv+m81/1oVXM
	 iUIAzdz9TuGjSFQRQ+HrBoHiXOTiQsIidq68iUt8yqK23oIStRkLo2g5HjXnvPZjeN
	 GybkeZPbUYQJ/n5PCHRJKQRRaD/GN33B9z0fDp9/Xkb7LBlTOW8PjqBn7xHIjr6e/y
	 hF6oOtGOMINpUTS/tcdMjxIDDK8Be+EXpqWEfApRCB9CAv01P7eensih71s5D+AA2I
	 BmbJ8ezkvr3sInhtoVXw9XgbuPaCYMzAgKwktvFAeZ5CqE4kmod7LFQ/P4opfYWoS1
	 NRoBdGmyo7Fsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BCACD5BB4
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 02:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177950235368.7964.17352347623563986617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee6fb328acaa039509ac9ea26ac9aa1fdf7f7b60e55c99dca5a09d74cf15b6d7
Date: Sat, 23 May 2026 02:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779502353
