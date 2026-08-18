Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D2036E466
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787083834; cv=none; b=eTJZTsgVY4REyeWY3yXvihHgv0WEMMda1uD12NDZZTwyPOFY69cGPf0xbLR/f8zgwS8yhzXIASbvx2SX4iH7GWzJzrc8D1WhLZg2GjN1F3BG+BIbgo5TgqqzHvxcRNrthFepSlnwweZ66LoekQWmt4EY2OoFxmw7PPm1zTQ/uaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787083834; c=relaxed/simple;
	bh=lEyBmO1BPETIYbc6aK2+vUgRVcRR0FQweCkFsgerzfc=;
	h=To:Subject:From:Message-Id:Date; b=uWgAgqdCIElRsoiF6LYq4qrDYMRwTaeg31wkVcgXwPVu940ISmAO59yxNvWQk9ssy9KJjGsO/WN6OSHQLQ71TOqplcgkYaP2HJFNcEN1txC/p6EiUzLVOUf39c1DLlqlrL6pZZGsgRQF8v/W3xejx9Px2+GWFIxv7jYelJziuJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8j4r/9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8j4r/9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07F2C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787083833;
	bh=lEyBmO1BPETIYbc6aK2+vUgRVcRR0FQweCkFsgerzfc=;
	h=To:Subject:From:Date:From;
	b=V8j4r/9xbBsjZOIcQw9BGueAwuKNnrTzHUNm7o61vBTgO8vcGtGz37FHi13dbbv0w
	 Iqozx1ZTrcpt1yq5GP6SkDuRT8lHk7d+K3aJb0LH/Ohlp9a6z2krPpV+hRVYDyG4y+
	 IWPfOxzYWYa+5pYIWYK3Vp2iquQQtcL30k2zR6FGU7nEMDhHmxykctsD86DPQN+tQr
	 wr6bjFf54IwX+bveTEmhToeZMGpTLNZxtCG8KdVzINCuQGzRjNJuDcN6nDbrO3Of9G
	 b6gEoxNIEDHgHQUn5cw2N+xgAsJQYR5ep0Hqemb4BnCYSk9pz4YrrvSIQY9eqT9aWu
	 eBbfycen04KZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF05C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178708383369.17671.9957485245926029392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99045d844229bd5a7bc56df522f2ad9737f0e12482d6a3f5225c39998fd3b2a3
Date: Tue, 18 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787083833
