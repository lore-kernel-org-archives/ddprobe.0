Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B4D1ACED5
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768619634; cv=none; b=KubLwKUsG89JfUraVQz07DqN6QupLMAixzHUmycPFwJb+OxLRbK9rEOPzkLKEXBItwEuE7t+rwTu0QseukdkHsMzpjBWSKnzEm0S40YSfarjSFsH+XYnI5vIChw5ynXxq0VCukqVkW9iwkO8uU11h6ZEXSYq3hy15gz0xxI1IzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768619634; c=relaxed/simple;
	bh=/GIxnn7AHhkjw4LfGWmhYMpe8VwSKmUo6VRHY8vcN90=;
	h=To:Subject:From:Message-Id:Date; b=FXY7cpLTnR7q6fxlYEe7wRkV9TeGu1FUg1rdm0NicBNK3/tl5Mcdb93gnLh0n20mhwlktP+t8xKI3bX4C0WkIRGlKDXF6ddTO+WwBO226lzrgqQj/Z2EeINUBlEuz/ofWQFo72tdng/bQkLQqzsotsFMWL238S8/RwZKmWQ4NtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCJa4ASH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCJa4ASH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8444C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768619633;
	bh=/GIxnn7AHhkjw4LfGWmhYMpe8VwSKmUo6VRHY8vcN90=;
	h=To:Subject:From:Date:From;
	b=mCJa4ASHcSKwqn1P74QprxqmOIVcwocbLF/4gX4A0OFaPnWiaWa6qb8mGgQEk11Ib
	 dktzUgDNudyVcSQl5OQd+njg8veTLozPL9XU0e5iodaEmGZtdRtbeHWf4w0nljBkaa
	 dBhAQ5bRvHwmSUdxIBnruoyQqaBSPwc4LV8Um4wTewn7JpYnQXIAQTJJVHGNV2bM4w
	 SQWNFVrPRTiZiHZShPogeI4tB19umpb8dc/u5liztGwDG4OV2J1ImO+sOYCkKQA7g/
	 5Rf6OgFGIxT/2/mxOkcmUi0daTkse2pkwdvGTdyhwe4qV0gtg7w18AiQmvOcmzxfy0
	 ugPqSuFuuOCBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96517C9830C
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176861963358.4176.1639302885525117312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c22be4e2fa4dc08ad8649b2a64121dbf9ec3b0f499ff295394dcd3de234328e6
Date: Sat, 17 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768619633
