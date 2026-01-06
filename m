Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2645D335BA
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767672234; cv=none; b=an+g/ItmjnKWn8jaqV6MFhsSW0AuTQCELidhCOvNbtznNMDmbaKZhgxq06wluopPiupPOv0KggEORTUSIhzdzGpYXeApT5ksrw7oL++ga9n/kzpAism4bVxEx2bqgY9QKk1YT1NN3E8cqf1m1is4dC6QnAJr8tIg7bkXq9j4k4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767672234; c=relaxed/simple;
	bh=2hecs1O/bjO9EimKiq3c0pvj4vnFchH8xg1ipJkI7IE=;
	h=To:Subject:From:Message-Id:Date; b=dxIi9ILuY6CbzDC4t+0n9MIGcMvx7n8niwlwMCQrRoYxSj5frlK74yGHYV0A39Wo1BplxgFdsyN+775NjzqC0IY3kJ9JA5vmu6kMJQXj0ApHwVAuRU6L907Pof/TL918A1UaUlgWXASe6W/bT3C07E/kasmR2qKKdJsYTxGOooE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmIC+v8J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmIC+v8J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67DCC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767672233;
	bh=2hecs1O/bjO9EimKiq3c0pvj4vnFchH8xg1ipJkI7IE=;
	h=To:Subject:From:Date:From;
	b=ZmIC+v8JOyXh/MnNlQtE9tk38ymmXKjnUWzOITuUD7+Ojod3Vvs/fe+xA2yCb0rl/
	 81GK19K6Zizm0Vt15XX1g0Bth6vIeR03S9kdTnJaYrNjvX4yQPOgLsminereuHYeQ0
	 5pGFO314ITvSCmZjxbKzG7LCl0rY2gtKUC3c5c8K01yL408GW1OFK/L4OzR2gqWzHE
	 yxicUOlvQgMfkqGIIyvLl3hVF6BfgZPws/B0Hu4b74+Bmq1tR+du0ZbrhJyt28TL2I
	 hy+ZbG2kSArQYUK8HDZHl0Fw8c1eRNAth9sjlPj6WQAIdi+V5tIgNFnXtvFgf4/8eR
	 qnKo30aaAtB7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9582FCD0430
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176767223358.15952.13838879773960660820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de850b39aef20d615e4559f74314ed05c92080aef8a6623ab0ffb82dabcd9dda
Date: Tue, 06 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767672233
