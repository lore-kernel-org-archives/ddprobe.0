Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED291E1C11
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729506354; cv=none; b=maIizsZIGCIWJfrHmiEgzWa0LwJdzOwyr3wd5EKRvBnQdDcTTxNaAUMpxSUHRegmlB4aWWjfPQygyX1ryhNKdCckmvX7g3wsvRFhMSN+d83Vp/OCJH2CJiDEKQx+Gf6jbVL7QysdYjSdDr/5I+uF6ccwALvt5myhZKMJLFNXBXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729506354; c=relaxed/simple;
	bh=lHIVa1a4s0XxsmAu+NgQ7HZ9sidsh6m2Rm1Qu3HCtUU=;
	h=To:Subject:From:Message-Id:Date; b=FxkX3o22VsoMB0oC6qY5hjP9feURQC50IMTCZSpziCLttklgv5TI8MYsXU11vk0oLjYz5HmBozqq2XL23A+7HtgDHfUvY3afIKMGu0wFYAnwYLFUsqssoFfZln0piCqIHqlVAtKTakbj+sAnSM2MCovinnusLlBIbFWJXUtYa0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xhcn2Af6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xhcn2Af6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5533C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729506353;
	bh=lHIVa1a4s0XxsmAu+NgQ7HZ9sidsh6m2Rm1Qu3HCtUU=;
	h=To:Subject:From:Date:From;
	b=Xhcn2Af61d7FzFMWdKvBEnQsX5J2bwrJTcR20IIlTFO6IJZjYfHR8LjGEmHGZEKAe
	 DWJtuqted6PW+/u4gNjTawZkPmTcMj0IypDbbD9aOE2SMfGJPUxoAQC2n8znBEPv6w
	 KyzdjcwjvZbKb/6XavsUgoACcxRl5TTgB4I8HQjcaL1vm/4HJFqAhJTCXWYpnuWMLr
	 sVlJbWDb4IlgHX1/GVdVOofYWqaYLv7JO+5VMHP5Joxgw9qp4OCE05aekTBDrUQHba
	 wGyfBHE1ToaNdRhdFZ4ujCFekIkM+jJA7tUTJVPnqHYNSxOD3qb7wPqj9jFS0XxUd6
	 3U+q+eNZdztkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931EBD0E6E3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172950635359.15317.2412540778376770649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d49ea7ce425b3c064c26fba88d181774d7a3ac376b9939e3c135127573a87c59
Date: Mon, 21 Oct 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729506353
