Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C6E126F2A
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728716754; cv=none; b=i6ipk0jlnM3JF2zQqt79C5VZu1CqZBhoW4Y0Tskdh9Hylyh+LCwuB7LUGweFgVbvUCU2Qo4B6vOcVyMk467mJXZGlPv+Gwo2g3lZ/GEUypTQsCIyzJc0d+gBy2bc7jVIyKmsMMQ3/s6gHKSnQdN48RTEbyXb3/1h7rIcSFeKNAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728716754; c=relaxed/simple;
	bh=iW6yAryWIsRdqNgsrwG5SCir0d3jFiwaj1udIQLiqIk=;
	h=To:Subject:From:Message-Id:Date; b=cVdK/ngWLMq62hLagHd5wE8lUZj6PIEBH6yJS+m7nlPcf8GYc3tcP5onQt4cJ6H+cjPhT4Oqx4Mdti/kUqhxl34GfR6D5bV7T4anVG3/sNvTnDcR7x0qC06/7wuB1VvXY49jxUyZrXwPHQKe64msjITxLNQnTWXE4cvPyWF7QbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nh1e9vEc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nh1e9vEc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4FBBC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728716753;
	bh=iW6yAryWIsRdqNgsrwG5SCir0d3jFiwaj1udIQLiqIk=;
	h=To:Subject:From:Date:From;
	b=Nh1e9vEcVoriQX8phrMUCFSAT7y3BQ1O/UXWQJlmQIKRC7NYPbvxDT5MFcuEFMOcP
	 BAt8HlwU4Ojvb4UpJkbcT8u8a8vbsz3Ieg817zLWI/fRmrCg6X5N+vwWiJ8nFE2FqL
	 CSRlM4QYrVNqaj3GR3JpBQoD4cgB95166qxWy5LzNc0s7gKkMyFJ5hbjxpyPtSkFPI
	 OIugJxCLJJKs9zr9B5/rVJTw4JA9Gh6RBklnZpYTocKyIncOjJzQgDIK5Y0Gn3FU/W
	 YEsSUgp3rzE1LqiOKC5eLjT9TUtdIbH8UNrKKd5PKINJCQONJRFP9AxcmA4aYRkXIO
	 ZBwBC31P11nxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E90DD1A431
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172871675361.27157.986034045168178324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9363550fd02beafbe75ce8e13bb827d0763633cf79f6c13974b3553ad9df7509
Date: Sat, 12 Oct 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728716753
