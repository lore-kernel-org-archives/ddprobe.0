Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB32F2C6BA
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706451496; cv=none; b=c8arWgEgpsPRSlEsdEc7Xo8pSvadDcj5UgJfccokFgoadbTL0j4Tm2WlqqyHn1EwBIb1Qhs/z7K7/SYaqS41cW7gyNhEQ8jpelRTg8wvw3CFLFhjyprKOqcxnL+LY14DeR1TfknOyRaFzr8DSn8DZ1q8DCuDhTTW6NGv+QVuazw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706451496; c=relaxed/simple;
	bh=bd/e0Qak1pxtIyQcmTVpk+viGZE/spollnnw+SpYmd8=;
	h=To:Subject:From:Message-Id:Date; b=N0CIJWcUiq8UFIsFTnJ+kocPwQckBzFUsSufkujcUox/s4ZAXt3SlMM98cEQEJqdcAqAXjwjGxixFaidpuBRUjWV7hST5wqudpmBt6s808aK2jYq//cYpdRneijLWVx9SDI0sylDuf6w/tiYPAwD9KLCcGJhyWWxyckEnqvq3Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QeBSm3wg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QeBSm3wg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79581C433C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706451496;
	bh=bd/e0Qak1pxtIyQcmTVpk+viGZE/spollnnw+SpYmd8=;
	h=To:Subject:From:Date:From;
	b=QeBSm3wgsu6vcWIWPC1jHxZ3ww+cksGUI5HNvvkzi2+9qgW6IHPQMUOOTzRiLA76M
	 NETQ+tiobaUv1DW1VKgL8xPUW1Pv4V0phdQ/qmZ6rel790+qQ94WUvwNS5OTC7Jllw
	 tz9nUg0MgmYmB2zwjLMOkzPMa90guUKQmUlto26kTbYZI6L/S6lOyEeehmqjtz9OxQ
	 K6gNFiyij0uCpKw7R4aDesc3FQyrhi/wXqsfNIYAPJcj2wULWlPNWO9UuAhNRH4E4H
	 BKx5tvgi6uMvjhAAP7Ng1o13t7dOYyNYhRaA2zBAB7Ek9uzsg54JLJc9PN7R8IZKGh
	 /lLtnLVvJpvEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64862C47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170645149640.1842.12813219769528822599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a66434ddc5b01cbd7d5fc588700187f060f8dfd4b6d9b646ef7d822f3852cd7d
Date: Sun, 28 Jan 2024 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706451496
