Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EA4348866
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 09:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775727934; cv=none; b=PY5eLj+QxHk6VGFx1KozIvWOVUf/UK3+UMm7VOpPUVtA2F3fMlAVBfQa4QkIV6+WOvcly05fe5E+FgFCakPbZVsATlEc51b04YJdTLYp3kh2WXXLL2Y/Y5QKt/ItlCUtYKNMbFbS8EurPOP7ARi4WVzvDQjtsxjaNkXcngEyZiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775727934; c=relaxed/simple;
	bh=aQJ2D9eS+zYI6TXv0ebv8D2Y9hYt5H9Ym0LTfUktDLM=;
	h=To:Subject:From:Message-Id:Date; b=j0UfXN88uHBMBYWzthO/rRDg2bB/2eHc4NdroRD5QRP1gKEczrwRm3u39Tyk6ReqF3cDB9Do5vozsNw+ECB7kZXhfusBKIsgAAIOB/tMAaJtyrSoX7IF/BgwHTs8aQjkysHwetROWcenKBgZL9NWxnlc5GhJ/aT/WbvaGTWpbX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEG3z4r+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEG3z4r+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2FCFC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 09:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775727933;
	bh=aQJ2D9eS+zYI6TXv0ebv8D2Y9hYt5H9Ym0LTfUktDLM=;
	h=To:Subject:From:Date:From;
	b=cEG3z4r+FMqx+G+Jp/yds5gGrkfrJd04NWuLpmfggIDXZ4Ctd3N9MYG0qK0RtS0tl
	 Xh8dqA5+T/nAM6YriV12JDv2/0F15TOBmYg7TRkcVa5sCoNgIl5AiQVNxxMCdMOGHZ
	 yVpy2ZFIFqpJcXtWSn9sdsWlnvO4NMOcLmi2hCFf5SJu3hDzRbofD+wddcXw2ZYoZg
	 +HAzCmKaYfMRsXqeFv3S5JvUGIcVy9WWNqNxVx6v9YI0wa/MuuHvYOJqj7kMwnn5x0
	 u0CaPVgfXfKAV5NDmQ1Jz4maQdFHs15I3qKvcpcMtL9OnpeGTReMGhlT4SrJCkRy96
	 kjvKvBfbssbLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED7AE98FD2
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 09:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177572793370.10450.2359316088746754997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77c57948625b64a53c75d1b8611d78e95fc3284bec4a7e62aa8dc1c89bbb942f
Date: Thu, 09 Apr 2026 09:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775727933
