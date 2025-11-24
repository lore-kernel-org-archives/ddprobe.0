Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D042BEC26
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 05:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763961114; cv=none; b=BGlBiVbc4dpEBDjueZMg4NHxD48cUxi2eY0MckLR1dom2P+5xKsdvOZ5ipokzovrmssSVxzv6VzdqbTFkNZXwk0lxJIDKHkL3TvoP2tcA250HvRqVEmVwRFmb8GNwgRMKaJj9/E1/CVI8pxEfiyCbcXmfucqLdnEo35W08fLgT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763961114; c=relaxed/simple;
	bh=jkq2IloCM8q+08Sss7p/1KmNRxN2x+teEPXJ8Jo2oTs=;
	h=To:Subject:From:Message-Id:Date; b=S3eEwwqmQvPOqAUoMo9Xwx39UOVtYnnJAw+0KErjf1aX2zaFD6bYvZ6/GPXNzpylrt45QUUcm+nlxuEJZrDs2HlsIUrhD/kMLR6ts4iz0honnVZV/mJRt9vAheWjRl0iDVDD3S1pkMmJNVUdj5nr9+nUA16IrTHVwQXRl2h1IfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VlSyYzDV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VlSyYzDV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC28EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 05:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763961113;
	bh=jkq2IloCM8q+08Sss7p/1KmNRxN2x+teEPXJ8Jo2oTs=;
	h=To:Subject:From:Date:From;
	b=VlSyYzDVzNaUylwKZzVCPaimlYk+08yXPBcfh9zuvhEsTFgE4ZlSvylMizP63TnCY
	 V+43OY+G7+xcxdAH7lrKx6/srwsLjrdXxlKkxJMdL6kfs8dq0jBqU0r24mXHaW1GGg
	 kec9t3wU9Mace0YGAuU3amlW9JShRRUuDXq6m3DrpbS8pMpUiKc+zIvYVvjsrbHMNs
	 eQKZxO14/BNNawuUhERl6BFn00khGXkIiKV+v0vGEu19GJNyQB+AxLTDfe8i+oyJNJ
	 DVBvNro/eiIHjAOdEGvfVaZjA8dDvhW2InuZtEGNfh8HwRLE/5L0+VQy9GMc1b1G54
	 WkIaWIs92uyQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967E9CFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 05:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176396111359.10838.15591992461832917961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639bd222f5f7285681836e2d402ccdaa336f1980de0c04e1b7465adb48a835dd
Date: Mon, 24 Nov 2025 05:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763961113
