Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168611C6FE1
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758380994; cv=none; b=iaceRhO0VA8YoGOGqlGthT8RHPrQNQjbq2sKcpiSaR51Tu8seuUcU7VGa3tYE7Rsdd4AssLPeJyv7UE+CbTSADLJq1Q7Jwccdlki+Xoiz0nQamUd9muK5jLhRMW1Mm2A2mcrh20eCTQu4tDBpSsdyDxI2LGUws0tfNeFohcqGQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758380994; c=relaxed/simple;
	bh=jd/JY6EE7SRbFg7Vb0xNJOC/+hMFZEaJwJIovmqq1BU=;
	h=To:Subject:From:Message-Id:Date; b=JjOThAlSAGjcnpvTr/QJkT259ITQO4pVV1tffIRmOoErc+wBXQlCU8/7Bd6RI5gsycTExrpAbBe2RZfXaJv3E5xr3k3psZRJDwVObdz3PjRjEO6PTJ+tbYnW83pwWtfK98k/e6XQpQpevfNkCoqfHF6gWN5CpUhTv9vAQpQOb/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFQfBSu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFQfBSu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A387EC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758380993;
	bh=jd/JY6EE7SRbFg7Vb0xNJOC/+hMFZEaJwJIovmqq1BU=;
	h=To:Subject:From:Date:From;
	b=HFQfBSu1YUohK2l03PyNZ/K+wULClbk5NC0T8AIKtiOv74STY8YTF5qT4n3bnEjv0
	 paOJvTFVujbI5/RB1K6ZDvMbFkVtk7In294FkI9hurLe6OigqdQf+WZi8YZ8Rofre+
	 QJDvRkfSw4D0bOAs3sPckD4RWFu9/6cGPIuab6aVOhoYCiLxxf+5u+ArJtzX5fVrfx
	 YNVD9SwdJ4NtE7RXen+x9VkaTTk0/5hz+CqFi7wVltDY5pL4elHsZ6WgZ9LxpGU7hm
	 XmDP/kF7h3XWtsPe0pB862/k88A9U3WRpCPCaIHl2QxxWvvWTs9pM7OMu5h2VuSH1D
	 8B9LwYPwX1IcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D9ACAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175838099358.8926.17105430838161095271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0168a845dd2c404dae38f72fcdc5ee770bf70bf7ce4d843796913f670a634f48
Date: Sat, 20 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758380993
