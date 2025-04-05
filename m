Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C2D2576
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743863394; cv=none; b=d4f6oBbYj4CM9YOFezFFSsD65mztktbZJQuxKvzB/sk7UnlAhhl5VkbGpDuiCexenMGIXrlspmkQ1g8eR9GMBIVSkmHgbLxRnEau9gIh5eWU4HlxM73Qokw7OEoNoq5mkjffwcgChb3Vd3UO6FIIFT1AZZcNLXxcOF12WbybKkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743863394; c=relaxed/simple;
	bh=AidNZldIFaFLHCkD6v/XEM+s7fjqFgeCjFNUlG/w/HM=;
	h=To:Subject:From:Message-Id:Date; b=QMLUVOj7dObZoVqdInbA57lIyNVlcYC2gpz2SeGpJ9LKMSBHAqIDmYi02kKqBaTYp2/EDqwb2j1KW9LarZi3bNZBTRLThfNNHUf6J8DvLWn3AdK93FArKt0h/mTFA8pxLnEKxIDm28w8eQ0Hq5KP0QvwLr8+epMXsjSMydy+7vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpUf5zLD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpUf5zLD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA82C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743863393;
	bh=AidNZldIFaFLHCkD6v/XEM+s7fjqFgeCjFNUlG/w/HM=;
	h=To:Subject:From:Date:From;
	b=VpUf5zLDVsR4LfSNpyV5uxFMqny39DwGwcGwt1velmZ5D7Q65pai+Ov7fRBu6qi7q
	 JYIw1p8f0DMXxllqIzZQgfbV6h69xcdImNFJ7XveylMSTyW+f1RaC9VhlfEt2xIhvv
	 goFSeV0wdZliYjz/vm9b1wMoIcVGEz28dAhTfcb6IgjUfOh7tUofTT2hdmYBz78S+u
	 vBOG9TukcSS8owhFn5W3XLSh3MCdkaTZwA/g0HGMkZZaS6ISurVVUU9Jl1yV9MiR07
	 PT0CSQZpyXHZzf6ZHGTSbhmaBDHdnkZgQDT2TQemURB0HRi8uv/ySf++YTEj446f+H
	 dVAGSAwsV2XvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3E6C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174386339368.17881.7371155934669724315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3121c86e19d47dcefc7c7e5f0f6e8c0ffc02bd7482527217f0f9e67cab6ddec9
Date: Sat, 05 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743863393
