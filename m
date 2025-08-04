Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D7323B62A
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754304593; cv=none; b=cTv+cvIP2sFiq1rrSdI9B5ch9CNvlb1T3djhPMYLrbU5M8TpVhi8eJ5zj3jN6Gh6P7V8dAeIprBWe7BbywBSsojg+HURFPn31iqcE3b2i/fvmYuLvHKbO0EQsyVJpuojaqDlZ2MZ/rX3mhTPuvJzVO9HiaicyVMC16F8BZUgmtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754304593; c=relaxed/simple;
	bh=XvMenE6ukrzAbz94h2yMPRR7wGAXZbTYkQv8WmlvjTI=;
	h=To:Subject:From:Message-Id:Date; b=lqiExHE5lp4z/SjKhBsIvfUNjSKYpwyLrBjAhqjc1mGSM5djHpCgXYJUbnNdFOiLm5zA4pjcvU3u8S6x5xk3Mmjpsh0G3zK/5kO5GtHTcuCdBYQs4tNwnr+t25b+HCaPGLslNXC9S4CRPxMUcceg4nkzgB2eK0N4zqnpsQCWOmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcsJW8Se; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VcsJW8Se"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4D3C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754304593;
	bh=XvMenE6ukrzAbz94h2yMPRR7wGAXZbTYkQv8WmlvjTI=;
	h=To:Subject:From:Date:From;
	b=VcsJW8SeItJXGimH07Wn2SKJKKQr96V6ht/2Bs6wax4Vj7Ox/h2CQNZFRY4MtFmWZ
	 Py5JQMbAClJLu+MW+L4UfDVrvzVpuPYi+MQBioQVBWX0hBhJ4wxgf7XZG96TpnGQH2
	 RkaukSfCortx+tUu91oJl1rOVRe+SBPilJuOjFJfqnl8ptfHIC7cyjPDkPgzYQEM61
	 TB6iek4zVho5g2Z0TlCdfYVcj5Kp844ecnZMoouMC8qNND5d2eiry2jTfGPjqG0hYm
	 bmXyuinZUw7nONpZ4iYhNvMt57xba/uhjgjzlnpBodYYbf1nc5m2yXYTOiUTmZeL9d
	 0jFgiIkwmk1jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9018BC87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175430459358.6121.11530652913676419901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f676d5e926103f3aa74fb9437d800a9ad293e14127b8de75d3962c58f2932f64
Date: Mon, 04 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754304593
