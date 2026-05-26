Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF2E3D890D
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 10:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779792154; cv=none; b=aJ3Ur5MGMEKhVfeCbznZ+mJOvFU5KlydY90q6KyZZng37L1xRshZfG+x/8dC3ua68/42g3RSOW+jgj6JRsIvew2rSqOJedhu4+8XP1N/3c4G4xoqqee5OX/fy2wf9hWiNFV+8Tfwm5hie1Ef7ZP1gyZW//wcBYR+BQGrmLvxRAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779792154; c=relaxed/simple;
	bh=+xYGEiEbBzpuZiG+eZDVVcQ3WmElnZ0WbMKJOnRFoKU=;
	h=To:Subject:From:Message-Id:Date; b=EsXuinnswgm3/b//jmhBmyEgsu4z7qCfxFX6sHt6v+R19pj4/CIroLNOkiJpAd02c57tHqPCvWsSzsK5ZuYdyKvn+CQIG7z6shC8EJEt8AZyAlgopCbK2rUNXJijKUh0ZJ6DUt+5DfTM29TnFv4hT/ewOhilDZEgDg7uYoJKz7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HoGr7IrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HoGr7IrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9B2C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 10:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779792153;
	bh=+xYGEiEbBzpuZiG+eZDVVcQ3WmElnZ0WbMKJOnRFoKU=;
	h=To:Subject:From:Date:From;
	b=HoGr7IrXyxwjj9dpHPSClivUmL9PpGmP/0PcsKj7ThUZ4gQVlbG59Z14GpRR04oSx
	 OyzghJTWKaTzdcZ22Vzaoq9oKolDu35TQorHjjWsXjDsiNqyY/icbFWQ9sou+KQN5S
	 7rMmZSXhne/mhZJcQXZe1S8v9aEhKZOv+OxiskdKa3EYZn4PIijjXvG7hknLr/qfbU
	 z9XuX8qVNaoPMOP4S8mnf28sAjVp7ldPXGJHRxkzYqESDdno2i0WTTG2mrKYgsW/p1
	 CbwOHddXU791BzYzkYqoJutizGqd/Z687qeKELGr5mamLTEwidr3t6ManiIk2swhdj
	 QDj/uAQKz2cLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2205CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 10:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177979215371.2902.12837587803535724428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b35abe1efa55e855b960936f1b271b70f5741fbaa5e7258e34d7ba87cc3be5b
Date: Tue, 26 May 2026 10:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779792153
