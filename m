Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3029E1F7580
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748380794; cv=none; b=B0VUxhytvQZchnuWgHv9dehT1JmnxTOyOaOam9EymQJv+ITD+n4E6MAuW0jUjSfVoSjmyGfYyq1fK7ORFvbOYpBbKDgAmwTx8OTu0kG4b3OV/7C8MhTSZvVj1v5XznWa59SVSCMtcbPwWcaiHUnTw8vsFJzHFkRLgslVeTygKrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748380794; c=relaxed/simple;
	bh=rEr6ZfRA6HS0dhdNzyQ1KqLsLCGtjG61Ni6sw1AEh38=;
	h=To:Subject:From:Message-Id:Date; b=FE7lfb86yyE0r92t+39hxCq0i5t8qMyecqYHNlVP5omN7p4nU5vz6pHizNEfI2JY+4nHuAKkV36TBykGA0XT5sEErTvuvHnEwId0ys6Ujldv7FNOZs2T1ZZBRZkvu+8mXUUoHKAwqXGACsO/xln8POiha3m2kUOBS5BRbV7Get8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQQ1NYc6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQQ1NYc6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F358C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748380793;
	bh=rEr6ZfRA6HS0dhdNzyQ1KqLsLCGtjG61Ni6sw1AEh38=;
	h=To:Subject:From:Date:From;
	b=BQQ1NYc6KLjRaqK1QlhY24eviMi9LOVB9w/G6lq2rnd6af4jQeWAhQNoa10NunWke
	 URfwpmOzwEq25HQMZHEP/982olpo4jHVJVe7YO4o8we9hD8M1NpgybvQ5fbyVIRXY+
	 gsgbR5tzLE++Vf87jK0e1VrEdSJEtDO9mQ9NaPBtowrHuzxPcTnqBsh/Y71RZQScYp
	 ZSSackj5g07ladqsuluvwxHyGyYUNgHByuK5CDwAPQCPctJEkaLVDzpRhqnafosfM3
	 YEOM6jhNv+wCuL0ESWxQpuRcXjOMRCdna7W6goNkYtFwO60gfVGc4iGjdoXQ+2dkxs
	 sNSZGLWyu865A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F26BC5B542
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174838079357.2700.9806823494789835088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2019ca99778b74ee2988db273fee50a87b373159b88b1110d03c04d0c9fe3d28
Date: Tue, 27 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748380793
