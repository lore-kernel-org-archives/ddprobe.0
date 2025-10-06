Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33629347DD
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759736994; cv=none; b=eWq5Y76lK0u1s/btAI/6aE3MsmjY2f334rOLGa3Pq4xVKPMuwIks7qh2Iqird66AjVmtBcsqen/GhHegk8wed92Izn8K8VJzCGJIsSz0qfzy1IgkvpaNmTvG4su+v9NmHDyzQEODQrc0RltILyKY3ylJU008NdaCrWYzP1DrkpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759736994; c=relaxed/simple;
	bh=7ljkHBYlh7T0b8Z3A2wc647ZQ1t0fUHmu200M8fAKU4=;
	h=To:Subject:From:Message-Id:Date; b=IhYkJfUMjU1C6PVoJM8ednas/W13i5HYVHbOH8ySKYcP4vwGT/kMnAC0RFWqBhzj17OYh8malTr1pVuPHTzZql6RiorFJnxkS+yaYEOSG26J7k5OMihyCSdpzmuW7vVuSqXwd8ktN0LmuW1dM1wVCQIL4l4nfZbLqqkDUseTGbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5hSTdtP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5hSTdtP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDD6C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759736993;
	bh=7ljkHBYlh7T0b8Z3A2wc647ZQ1t0fUHmu200M8fAKU4=;
	h=To:Subject:From:Date:From;
	b=J5hSTdtPyBgYrG38QxyNX7g5diO6D/jtqLaSFzu7gi4k9NJeNsX4NDtIcLFffbuZR
	 V3KGv6fy9qkIeRqImuox2w8Bh/VsIsjzGYR6F6RtJfyS5HsGlVrMad9HgqNUAab4l2
	 RlAl4dmE9a60Z42ojcZuPdUAKyMtkCtyuhbrxRFrEiZ+t3VUfabhoIb4FC68D1vJ5O
	 VVIB8PDLihMU4jCuVGBISR3Wrwp4npq9TnZzfMXVYNgpYVID9Js5ge/6OlGjrVTNos
	 KnkUAmzXincZmpPpndNy0sGdEGnbsUUBpvzrKqMWjtlFV7nH7aE1qIlgzOnQHURni8
	 A+4XDztDg+oaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E9CCCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175973699357.13853.12921804715145473837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c425d7eb41168ce51f0685f9b26ac6429b4e81860f6d1d7c6cc9e74faa3ee629
Date: Mon, 06 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759736993
