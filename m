Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A37222560
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754326194; cv=none; b=SqxBZTtvqV6bA5sPsvnqA5sQe+1DCp1T0cUgPzxh6Y9GF/S7x6JUosB1uDO2eUaJfNgyG9wtRu9KsgqNKfR5/F6tBIKcKcJmOfQbXqMkS3Ogvm3k+EmlT2m7rynCLz7m9nv2Vw6lntr5iSn94nM0dqlYGB7GXH5SBWipyX7TD8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754326194; c=relaxed/simple;
	bh=J6Axp6JQvrmXdzqUq9wIf4WQ6T5AojK7oD6laEnixTI=;
	h=To:Subject:From:Message-Id:Date; b=EEsDCiR3NO4d8WbAAvtmTHrwB8RWVW9UAIp+EZnx0pwCSoDIsZF0QyRiV6TRjM5yHzViK38uaIOdCf+kCfCtuuTBIeSpnabNqYUZv6GaDqH2GgPxuwGXcet/BBFAaI1eKF8Anx0QqVcz7Rw9EKk37lcRB4E+VqAzzOJZ6U3nrOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESGPAqiW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESGPAqiW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0777C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754326193;
	bh=J6Axp6JQvrmXdzqUq9wIf4WQ6T5AojK7oD6laEnixTI=;
	h=To:Subject:From:Date:From;
	b=ESGPAqiWrvBd1QlJmrMwS7wJrlunaJNfhVwZFCdT8vgSs/13w0inJcdkfU7U+0Pnw
	 Nbpj9zMK/AZH4FUtNfj25lKy3zuf0ZMVsi/G6mPUNIqqpP0+jymMMLoTbs/8GIMji1
	 3wpICsZzcHEEwrrejDsI+a8LDUYfpXmslxMAKcF9ZnzShyl5eh7iLEDO12hDXQS8Ft
	 VI1JhnnkeKjywFjBwjAQq1uHg2scJDEMtVlyxnxCzdcFrUhPDRVuEBlNy0ZRLL7uTK
	 tyZmvWfdCDPk9UuvoS00QpUNiPexHC21h8XxaIcZ7oeTFw5pnyeA5pBYDtQrTl4FdD
	 SDKHScC38CaTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90459C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175432619358.9639.9985958700799896285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a152b42f32c106b8a9827b33b88c054b49a113afaa541b662b8c30e5a110d7f9
Date: Mon, 04 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754326193
