Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489F3331ED0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 20:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781036734; cv=none; b=FqxFK82+bR+2BUhVyzhFu3W8OSBSBZ0zfbDUM+JWoBMicjsyeT/SyWN79nfVa+uviPh86yVDVw2HysQktTYkEGRua2iGrLhAHuSjMB1mJZZ3a+b494hOu+eD94c9Bi+4z1iDGvXe0VEdXSUGTHouY2z3ovIHZZilUjBWdZ/oOrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781036734; c=relaxed/simple;
	bh=KpFsG6zQK+XapWaAAOrBrSOBbh6n7bKp8ruR4yFhxLY=;
	h=To:Subject:From:Message-Id:Date; b=GV4c4n1sUkbvWKMm2e8s6Jp9mMeptucdDVNMjt4LWPFgt/Omj2jK24Z9U0dqtne2h/Qw+5awauIy7Ghw0edppQpGhQKfhkSonF7HZsHmRiIGzk9NSqZw1kw42lBBkvkbhBS3laYF25GYRgq8yEMPeJ1zVLZqU/VePsdgg3NQZuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6P2yzJC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6P2yzJC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8311C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 20:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781036733;
	bh=KpFsG6zQK+XapWaAAOrBrSOBbh6n7bKp8ruR4yFhxLY=;
	h=To:Subject:From:Date:From;
	b=o6P2yzJCitmPOTKgMG2lmc64UtqC9y4oio99CPPcULrltKCSMi98clDJ45WclWgvv
	 wky0BGUBa9gTz+66ElocaDzDPYU458pReslKOANRqmh9gu510G2kavp6SP6J6YWDNp
	 8T0bK5cva/omVQouGsYzeGMiZIxsTx2uJXv7q+keXzeL90MDmBfwd21u4b//PO1mAC
	 NnUskBygcPkeYmmiBGnRtfvgtbyQUAPTRh8U3BRgtlEAdw6m9kQDTUBhxLqsmicX+Z
	 WIVXqgj0puytBNzYnr7F1CjB98qwhIPiQbqQjz6ACKH4dmBvbM1t+uK8Dh7l5DWfxS
	 y4qU/C/kMFmmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCC1CD8CA8
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 20:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178103673369.25056.4450604026508650397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa50728d81bd2dbf8f97ff2634128a1147252f5bac904a5fa5de4b2652a54822
Date: Tue, 09 Jun 2026 20:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781036733
