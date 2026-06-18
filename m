Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C8A18027
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 23:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781825194; cv=none; b=SpLHQ88ysKvxxDkM6wFqtpt+uknYfSZb+rdEObqfKiNUy3r6FRngnUmpeVmR3Bk96XiZVk70Zior2IBz/g1nHzigIeMS1g5LyeRMReT+Ne+sh0GYn4vOX5dSnh2jIoWWQp+rnhhIzBIM2Y5Yr+XPuElPhw8JUIF4u0iqpck4zyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781825194; c=relaxed/simple;
	bh=TGQVA76aQvrisDRI83EqIigpTbDSwmtZwBptser+jwE=;
	h=To:Subject:From:Message-Id:Date; b=bsDeyQEg3hkV0YQQOUaixXsYzHILVXz4d83mysGA9uDwzywTXCkaBwbeu1ejuehroJNPU5EW6+eEvBFst31Uv5fc9VKXg+h0nAz136pJ2T5wNeKx3uKFc4JN5gKj2gwVpa/xdtXJWqVgIwOo3coLSGW2JX2f8C6pe9/MgxLsr0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2XxxIAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2XxxIAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5340C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 23:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781825193;
	bh=TGQVA76aQvrisDRI83EqIigpTbDSwmtZwBptser+jwE=;
	h=To:Subject:From:Date:From;
	b=l2XxxIAshiFh4xGgkyScCYTeOrw+OqY50mZMo8qDD0/5cDd7hML5tR0l1JdKoLzXu
	 OrJvEnln4V5STloSJniaguSNEUzNL3hNuz44J+sViSZh8pxsVluciYc60nBj/73ukv
	 BPZ2WtBBUZjpDtGINUMYK7UGdVQOPNY/xne2LPLSNHgMKVH5HpqLBIWuPInj7FJkaY
	 cNkzv9iwv76gY2DLW+gwcFu0WCSoZEbifuo6HsqHSyTa9DDvWYLQzGOMg6u4r/V7yx
	 2S+/q83tatZ0Kv3lIvSmqW5QwYuEeV6Pb5Uesu+ymPrS8ABZSbhyZxlXKjAR1XcLBL
	 LIPVyviJvwBIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DE7CD98F0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 23:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178182519368.30430.6797036802696223438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d736f5c1e36e85df4bed3d01ea540b10f2ff40a9447799fba078362c13c3da
Date: Thu, 18 Jun 2026 23:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781825193
