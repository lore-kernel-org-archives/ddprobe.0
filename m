Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432111B85F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785548434; cv=none; b=sBu4S8tazO+ubCWWZvLUUiZ4MZ04pDHmXiCMOMj3qfGAC+OvNSlw+GlxdCOKDD/eDzqHs3jUnZ4vySk4Zv0gil3GbyqHqyBjJ3jcwEeQckhBr5C2IvDKyI4dgD0MJEk/1V6Lo4mItLx+4WTdtvxgWo2edtL0nJJRpE472GcMGGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785548434; c=relaxed/simple;
	bh=H1Wp2QNO/oV1g347452xPuRkq9pmT0zrqplMcghP8wg=;
	h=To:Subject:From:Message-Id:Date; b=JNCWaIMHqXLKdLdes7jJy9EkZwPAasSYmb82yKHyVB0dCT5sWvIc9t3Yxk2Z71MPctnJkkDI0c/TbWjfUjviO51sooej+gANSroZpuRr1LGvdZXtzTUH1r9koxSOxT5lWc3zsc7/zJyMwO2WjsLAzqn0dO9+thrVfU3kkDNBxeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ee0pxJY2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ee0pxJY2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE455C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785548433;
	bh=H1Wp2QNO/oV1g347452xPuRkq9pmT0zrqplMcghP8wg=;
	h=To:Subject:From:Date:From;
	b=Ee0pxJY2PehqYuJhp6ef6XcqplGZajf6ma6Gza6+BeW7lpVzTVyrDk7hx9OPvXJTc
	 vtDeqndze9Pf4jUbnCqJ15Yx/fWj7OKFdMiq5p1T1fAPeWYm+0wD7YouO/8u4iseIh
	 V18OC7R0d8V6BKWIkkQe/bwrfYGYxmr8UntSrMQnAcjBvu9mHwXUdrWot7OhpYyn/8
	 wFVny56yGws91mAb1C0hP5NMAtLlccHDoFG+vHwHZpZ7Rvum8nuMk9+vYRd5RRklji
	 5oUyhKpiEBo9cmAepWONPU9f8pM6lsHFl5tg6GTOcJ4D1OX2w2olbt2Q+Zuy3n9alc
	 BiIrr1gQLvzbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0ADC55171
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178554843369.26491.3006772630096138066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 247f96bebbf44e1f2cc3c3c3df962706e6de04507bac8f825ae658712dfe82e5
Date: Sat, 01 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785548433
