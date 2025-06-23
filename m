Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E59A5219E0
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750718994; cv=none; b=megl3/vd9IpBD06oIIJFFUqaaR6dgR7Algaln7r50+dYt5+FM8ydlIUYU0cL6e6Glf5qVYOSRTyWqUNMYHoFgQS6ZBo/AQBua33Bt1qxDh3+of4JBSG9vMHi+9Htr+cS9sXzm4QuKYije/bZ3M0ZQGAvAU9p5eX68iO595xbsDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750718994; c=relaxed/simple;
	bh=TzwAsEJpavXzzzY2gVWOuAzM2xhLgBg+TW3sT/3GDds=;
	h=To:Subject:From:Message-Id:Date; b=tfmVI9/SBEemqoZ3AcoaXmmWwwWom+cF7ml/inZ2/lGRCpztozPxt+jD8zh44dViJeTNq988Q/5ZqjvfZMtYwS/99epzXOTXx4ZFQrV+kElhaUFdAIsp32P5IttxD05Thvr87e2mP3/dJ+pTmy2znV9iMlcgvcejF8C1rqT9yck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qk8dBN57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qk8dBN57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A531BC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750718993;
	bh=TzwAsEJpavXzzzY2gVWOuAzM2xhLgBg+TW3sT/3GDds=;
	h=To:Subject:From:Date:From;
	b=qk8dBN57+OnrmvMvoGr0cQRPlHaHMOfflP6gwCZIb1bklQkwOB2ZRioJ8l1kiif/b
	 icyBG/8pHmwz/r/k9J/Rvg8DMG987vDdeRCfrtvYRnPsa53bPRs2Wq5X5Ua0Xz82je
	 Jj53x2eobZ1NZ1Q16cNXzeSLr+nNvhZfWdBWQKxdlu/RSezMeM572O/MUDnJJ/JORV
	 /PJ4kuCgwUISwgC+HnX+vrIKFEfWcW8mNXOrIbkWnG4VY7pv7A6CkoOF6qbjm2KFtR
	 yA934ekxIh6Eui9ShebnLswrYDPSifwccwHrHGcnJQJx19SXsehz38iUtZSepE4vAU
	 4q3I/rx40Y7eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92013C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175071899357.19564.18205000345179608497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1784d798ecba3a8cfa8f9d9b23da6b1eb0b1eddfaedb3d91c07a04706b0d3e77
Date: Mon, 23 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750718993
