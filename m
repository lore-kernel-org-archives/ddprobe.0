Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196F22EB873
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761002394; cv=none; b=Xb5ZCIYx0o385i5Us6/jHTBqgyXHNuDOBmsDTSCdzJzr7ROJYIEHHeiU+DM37z2oZBx+1mUyAFIdxp989OEfFE0hbN34X9/BvEtgdfdnZiLTfpNrHAo2xO1bcoYCOvAa2A73N9wCnkAZsorG6W7xhYCZUHInF3UYdbiCt9ivVQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761002394; c=relaxed/simple;
	bh=KVh8CqkLXUWACG8FmJiZHSFrpYvO202HCyG5lABIwbI=;
	h=To:Subject:From:Message-Id:Date; b=g9gGpIn4SS5hUVdhSlGFNY8hs61iVQ56qqdbyu4x8FVA1f6044KlTcbjiyG+RbRyqN4X6jIg0bkwNHDMqpNWmN3bFmAk74g38TDqotYuqalsYeBhN8oVxDk4waveronuZSNtOKDk7XcOgwkOMpBBl1o7mGnbXH9x5cCSAX/JchE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUS+3buA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUS+3buA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A46C116C6
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761002393;
	bh=KVh8CqkLXUWACG8FmJiZHSFrpYvO202HCyG5lABIwbI=;
	h=To:Subject:From:Date:From;
	b=VUS+3buAhxkTDVGmE7+S67DAFDDZnplpWE5a+DtdVTIDXezPaF16g68lDiZ5XcTct
	 +CkC6KmywiG+KXk5ZwyF0KZIA4VWB35/irRWl322C0D/cBlFUhOj59Z6WzYJU1F4rD
	 Md/vmUSg5X+XnMh0kL0SQBAI1783+yPIOJ/9GvROR7ZSsB0Ds0LJtylf2BDi5Zgi4b
	 IIR5qEmIbRUFRiPbq1MjSQzyDNvfk1HK3tB/YdL95NJwzEeqWxDtqrtwda5casqfdh
	 /t+S6YcuOWot57XXSQLKn1H5YMXqjYBHvXa6cBM9jCKLb4L6NLS/uIHKdXKvbmFV8T
	 HWDYoxtM3K3LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9174FCCD1A2
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176100239358.30095.6642542151603086223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb231fc69042624b9a0d4954f521f8835a80be6c6dc81af9e5d81667fb345120
Date: Mon, 20 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761002393
