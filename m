Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB9C4C9A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736661954; cv=none; b=h1S49MciEtcDH2aKeorX4DKJW3drb7d4UPS5SlPpVu34yh20TSyUh2euzaMDBWGohLwz9kS3HKVUuMK+3LOegOj+esjfxS/UCNQa2gLgti3EVKUSgxCGkMZV3ZRWhF8O6ZeGVaVvKZKyzv6iL9DfxF/JH8Gexw2qNRHxgZJ0I3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736661954; c=relaxed/simple;
	bh=vPJKGh0XvJAYDvWVyQ05BPrXAB/lt2vXZ9KWJk3BuaU=;
	h=To:Subject:From:Message-Id:Date; b=YdNaElEjdFHnfo9t9siRqGanoJNoJfefDpdLMM2oxzYldncVVgswuSArPgJJIKTQF9C7aopRTPss7cJCDjajCShoq1LHJjemzqb9w/Cm0jhKJJhzgRZML+PfFQM5/qX5/E16JjFDkof6yH+17/g2te5Y0mdzyfFhfue8c9Br948=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSRen8wK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSRen8wK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2784C4CEE0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736661953;
	bh=vPJKGh0XvJAYDvWVyQ05BPrXAB/lt2vXZ9KWJk3BuaU=;
	h=To:Subject:From:Date:From;
	b=pSRen8wKNJyfbbbbBpE4S/X5+p68s9No5MSE7qk70UC01GXzRiad3AxkWpgRG22DE
	 anJiTn9VAe/TBQdOnnj5SxgBjstbFLG7GSvukLP5EmfUbxvY+HUBQsTGoMvFxSXGD7
	 jQrVXIdnQni32mPNd4QsfWXMXtZMGJltgET0rA5WnmZQQ+81gOG8zxdmaP0/ExHLzA
	 sTWt1vGD/XCjmXw+YsUYr5t8MV/APLhxJ62tWJha3QmbgNNEVX8JMrfAzZku56IivG
	 4jvKYPPcQwpoKMN+0Pdc1WWA43/koiQhOTC/wNLW92ZfcjwFr9CZzxyBkgzkFzk4Dv
	 n+AA/Jor3IDEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E622E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173666195358.16186.13810563433208499358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db92ac9aaccd10e33862117eece22ac528d636873d6641b3ed21049919797ded
Date: Sun, 12 Jan 2025 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736661953
