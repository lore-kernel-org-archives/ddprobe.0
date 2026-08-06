Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2022433F385
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786043434; cv=none; b=s3PQr4cGhB25WeBGHAFEh+4/vRrAWt1TF4Ze0opZJPt/O7urhIMB6k3lieRFSqt3LXsrkQQhMowokRLxxxYH+dcNslCoHDFORPSH0NOF81ak5NG1wWudE5FjRM3tI7rdq3QHcq/XMruEVMmTN+uvU17oKGloqaFgLVzQ4r7k7mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786043434; c=relaxed/simple;
	bh=t8VMtZwlsPRVKzODBw8Sqy4hTnVIH9CU7610YaKHUg4=;
	h=To:Subject:From:Message-Id:Date; b=u4IsNrOIwsps1a2XGV9+qQBQmC6XzDs2TD1UjP5vE+sS0geycJmjHpRDr0lQ/lOJsuTCJ/Nfoq5rRJ8xODz3k5txhGanA9dW2I6uu0qeCbh3jrbQ0zHT5iToYJpd81UXE6sHAo0V7ic0N3boDMtqR3bVq8LkwMaX7fehF8t4d1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XyIuCxA5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XyIuCxA5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08C9C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786043433;
	bh=t8VMtZwlsPRVKzODBw8Sqy4hTnVIH9CU7610YaKHUg4=;
	h=To:Subject:From:Date:From;
	b=XyIuCxA5TKf4b3hLCKpOKXz+VUj+Wyw8S0IFNa2/5bZYyZ6gre5RyRKdTh1QfywNp
	 f4x3QwQKw5vHpRjvnskXzSUATBLOP6kMMHbuyDXH6n+sRWU79XHfdlaCRidBT3mdsR
	 HE1MddYJBkaQQotetrTMNoHaKZD4Qzk2ql0tgd4yjZ5UqFMbcPeetihaKqsZG7IqCB
	 pZHcrlW4KXjOYSXdES0TxFfqfLegFPM0pn+qTvC/dHFysh+etr+6lK7kl1AiXuRB1X
	 HCOgtpftgNP+ZdWks9lN4Z3xzmdJFI+7HnIyUyizEVFpBKWmAY6BacoqMRv0CDp19y
	 ioNNqggC4uqIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC37FC5AC67
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178604343369.6799.1941717815937790859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf1ff2cb04092ead2e1a51583b34f11fefd5a698d2d1d6b090840d33a9d09b9d
Date: Thu, 06 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786043433
