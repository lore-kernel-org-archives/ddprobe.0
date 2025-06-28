Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD06184F
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751134794; cv=none; b=H1qYRGhhzAmxOLlcm/yXAloCC5Txuw3iA+m+5oT68DxFaCTGHfavGWfEOnsHiRlkw4Fq3B8/KJVnLoOdyxaWSsAyUxuFz6UCq8+2JmbdFi5cTlQt3D9guFRMVYh5YhopOlluvUT6KQvmLESkAoJUrv4rH0wXSqSrj/l1hKjgqDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751134794; c=relaxed/simple;
	bh=CHYScz9L6BEdVhxaR3KV++Sw+KdjgPMTQ4tCZ/6y1Q4=;
	h=To:Subject:From:Message-Id:Date; b=HWm+grgsUzWRLBxnZJ4pYAZCwctqUP/b0Ry3mXYYwSVC3UVqc519m1yM2CNeLzecQJezeqaqn7Wk1zs/TlEdSEEmRsZNBc1SPOE+ofNoInm2c0NUEeh+OZkZSLFpXYHXdWf7GwTfvgFi/EUJxybK809qcnKVUrHsxUWqmZh/Has=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtCN4Lan; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtCN4Lan"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FC6C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751134793;
	bh=CHYScz9L6BEdVhxaR3KV++Sw+KdjgPMTQ4tCZ/6y1Q4=;
	h=To:Subject:From:Date:From;
	b=mtCN4LanHnOPuLmQrbrmFH2YpL5Lr0YUZ+Utf/8xRYyK3YlHYZspqBpuwhXHONd3W
	 i3vKnknZgJQg1fmV13kezbhDSWM3xfadwnQKtcVb5tS4iHXRT6DGYlgHsqlL+hbLsV
	 UuUjRiUD2gpB2LKLGoMA3gvCWjPjZdwkzeObapg3W+fuQSMMOmvi98CKLuSZAthWWT
	 8C8gELYomtuB9DtgEnEwmbQbZ3cb+w4LlMq2pxXQxvrLJA4PmH3lNh9K0A6RatXJSA
	 VbaHTB3RyYRrnY44MZYC6q4NtOjjhL78X8P9iBwo6XCGOtV7gags6/aPFLa7XuNDct
	 Rw0wkiJRx6rDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93757C7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175113479357.22047.4147511850817858470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da938b73d8eddef3876213665b2f75454e33164275afc8d0474d4761c78c713
Date: Sat, 28 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751134793
