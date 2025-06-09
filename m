Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2381A7AE3
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749503394; cv=none; b=t1xAdkP7v8QrdwigGWizD5y7KFdk3PTW+YO0OaieOlEEiTjP/gc+VVX26BflpMS5yliOj3H4HHbeF7ebjUJXMmwjIC4cdZNNMzv1GgNjawrbZ5nUmAc+4y+ifCwor8H5u+MMdJFKjGlAY8tRb3Kcm3Y5x5mjLBM2IwweI52ykUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749503394; c=relaxed/simple;
	bh=TtE1aaD1SrZftlMtgJzT7/T0EP624lFa+cyKACC4ClE=;
	h=To:Subject:From:Message-Id:Date; b=Z+WUQgLMtb59DGdyXE4EuYtK/04VnT/El43R2vwbZ9rYEeEVhuxuzapKIFHP9YMRh3esjdQdqoSMf3WCCAY7R3KIyFMzPdgkeMD/ZqmqE4T0MONvxyxxplcpnYJ1X4QGiwt5sx6Qeev1fM/RkUrRiwXyqgoNBdqHlbKMIgFBFxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+U7gIxx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+U7gIxx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8494C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749503393;
	bh=TtE1aaD1SrZftlMtgJzT7/T0EP624lFa+cyKACC4ClE=;
	h=To:Subject:From:Date:From;
	b=I+U7gIxxk6szmmOqUAGJRyT/wzUbzh89WB2Vk1okL6QnQBhaHHnLv1ali2vft1+zy
	 B+2dapGd/mBS+DGS5XlgEOglNYhFPMAu4D/NQvSfY32LMjkN5hW/7kzfzq2gfPMMZE
	 XLMYYKUFEWjqfOK7NuW92cvX1t8AvHwR31+eEVZ0ZhUoSItAqWnjDLE2RoH+QR8IPT
	 FF4rDfVABhHGqZx1WpLeMXURciNFGIw8F4VRArLAwnAKqU65LL56lQ652wnZRnNaJD
	 QqZ/7IMGoZguBgQgF3Kdn5GVs5gtFan0hbbn1hhIjlFIq8t1+gtX6diz5ROubK0xc3
	 h+tQH/eUxBUNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94661C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174950339359.12385.14759010483725580579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d64c3fc8942cc56e8c7a56a4698b9f3ab9abe64073f3cc7d8678f792ef4d44f
Date: Mon, 09 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749503393
