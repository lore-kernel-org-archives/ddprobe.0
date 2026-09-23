Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C78D35F602
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790133034; cv=none; b=u5J2n9Jej83nxg3Dp9LaAlDb4L+LDntWZEFrDnXs/dwPeLFA8/3grDD616iZ2ORJKTEWhtO53mKiuoQCAsOhJzMVD/R1gaHKJtRF+3wNFNIxhKKiJ6It0kAxbW4SyVAh2cFFFByoWfHWenOiLC8AL5rH+lozQ6v1Rv1Kcxzo+XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790133034; c=relaxed/simple;
	bh=yMgprnwm6kPqr/GOJ9Qs/mPCyj/yx/zCV2huz1pQFGg=;
	h=To:Subject:From:Message-Id:Date; b=GvYz/iu3mdG0ffNulnlRHpBoPPBjVEdCKnkFd7wRykoRVos4Z6ToudpjQNHP6OIBL3w29lGrkDcQZydvbQ32oS6ogieJQjPGYsKJMldR60cNBEi4TxrD/gc9n5juLJXkdTKMN/PW/3396Aup6QFS6Ka7dK3VQJbKbg+Vl4V++5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukXqhciZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukXqhciZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0621C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790133033;
	bh=yMgprnwm6kPqr/GOJ9Qs/mPCyj/yx/zCV2huz1pQFGg=;
	h=To:Subject:From:Date:From;
	b=ukXqhciZt9CMuT9G65VUEf2BGRvwZ5V3/tqBd0LPZGs/z5gR0LidmX6wwGolVjmAP
	 vekZb9Q1OQcfWm1j+HBvQjj8yFu/FE7suCx8cPLEj5463Qslr/EoeHcR4WZAtrndov
	 xwjaIXDIPfHFUiN8L2kHrNMSg84APUBa8qdpvXlmBWUrf56uEEpIwNmnDJ/C+/V9mf
	 QxO+3cI9SBPGJ+IqF1p8pFRhMKfeKwSw7D4+9apVK+TJ+C+AvDhLS+H9n8Otoly1Nr
	 6o84Ptbf5zqu4EdE3dUFL3kdf3oJYEhIgkaBELgap1HJNZmvLZ5sdOCG6XQ564cNfW
	 7BMF4ycXKRuNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B885CC98302
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179013303373.32139.10255313750273167352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1829c4e25c0f665a937a422a37f64855d681ce5ed77af66890b7a97f19762cb1
Date: Wed, 23 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790133033
