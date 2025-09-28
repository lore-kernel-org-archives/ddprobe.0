Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D683C38
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759021194; cv=none; b=k+MphvcPqs2ssHoWQT07ap325dwyP5Xcehp2fpi6lzhuGFoCJijii++eA9vn2utxOnaiA/tHz3fE3W62nQG8i0+pLHKqr9WpL40FlawWJJcqF5VhIsjiLq+ybmLXOYzq/AuKZ9eMtKK3G76TPvLB972vENEJNakMLu4i+zRUdO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759021194; c=relaxed/simple;
	bh=u0V2XehsWSEuSUYgY6fssmRfzanMjYWCvhU6waebUq8=;
	h=To:Subject:From:Message-Id:Date; b=Fl12mMd7ZjqqWRyND49wHN9iuiTj7zleh1qSDukKeUhssbP1ItcKgkABmSqvDwMvV34ZGO3pjacdSTTli+s+D8zwtPVG2yTSHy6I5VfO9OFywI45nt8CsuGEPeEICwnWzX/SSczJMFyH9QQJGnf3cnbvjTsRC5REhuSKkH0KegE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fj3yERKh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fj3yERKh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A767CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759021193;
	bh=u0V2XehsWSEuSUYgY6fssmRfzanMjYWCvhU6waebUq8=;
	h=To:Subject:From:Date:From;
	b=Fj3yERKhq3S7bLEctB6P8QpB8u4e1Qcy+e0RZv2wg5VoefQSFy9G2EtWaGjgBpZRj
	 0zOxxaoSd4zlKrvNj5LHlF0HPeeWCq+FTGpri9x8Fm8B1ySQ/l7B0hBfPIzV1Ze8zz
	 HI9OXT/MTW3oM8lzTronO/SYxJw1L+nSI40C6Z1DwYcZmM5Rp2tZ6YX+lnSyks9fiv
	 z23pfcrsqzSSB9aeL4quisKFN2jSxakG5QdoJRMXTa0IXw7GjOxF6BXIbCkdt20WBq
	 3OQQgiavos8NYvfdLUnH8yDy+uHweqPDJe8+CAwQA7R3+DAagILG7dEvI8xpRocWsh
	 0+7S9V8P6DZFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B50CAC5BD
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175902119357.1201.3459407948981878296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6de52f47c2fc6aeadf14e162095571bc766121736ac0b4f3530d4562d3c7f02e
Date: Sun, 28 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759021193
