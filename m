Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D143E958A
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770306234; cv=none; b=ki+WkHH5MJZq1ddiWhYOsHZWZAp0fw0Ul6OPCjW4ZohOGaVNh2sdTb3/nEF/K2ra6jzCvRZsoWFePmRqhZ5N34ESnrdpeeq75ZhsTi2ODFujx3HbyS7VKJWbVS4Xbi2YEG8fetHhx7JuZnsiR5IPS3fbG1/G8yEtGOmcQMkhYos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770306234; c=relaxed/simple;
	bh=JSm/j57QWKSphAuvED+mwCKKM0d5SYQdnFSobKLV0eM=;
	h=To:Subject:From:Message-Id:Date; b=sxTV0RJf/nEV2ewxI8ENoEEdPJN/UG4NABTtt12nYt1FjRHLOKGfDKlD9y1El1meD4OpaCsHb1st3ndisAPL0/mMcUEp0H1toYQqAQsEVMtPKwi9fGO/UwYy07oow3U5+MYVkwBkOGNYO0BxULUH7raiGOYw0J0F7dPDcN0mCLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=REpdqJRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="REpdqJRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2C9C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770306233;
	bh=JSm/j57QWKSphAuvED+mwCKKM0d5SYQdnFSobKLV0eM=;
	h=To:Subject:From:Date:From;
	b=REpdqJRaCfqzSbHZ6C/mj+GGi/l0e/mG7kRDlRhzzTTCBT1rOGh4To78TSFvmJ2uk
	 nP/KuhGYmQQbrEgbZXWXYkg8k8clX0xGEYNJ/XxPbxmAFwSxpINZUhn3dBF3foxDHo
	 RaHnWMZG3WuUYottXNbRmxeQcMmplxD6a13M+E7AkH8jurUDswt3XbDKAvdNdkqrFu
	 p6VKx+U9xiRagB1Nc5Z2D73+/H1LuksPLhUjdM5ANeAYMBekfQqRC+hPVronOchCfs
	 dwEErRZiwruP8Dd+uVPqSbOkut0TYJ/c2vymTF9g7e9uqzhJYEROcw5dxAVB6wh2M5
	 3U49EMRlnaoMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964B8ECD980
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177030623360.6732.10262694691947216856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c58fd1eb89d369c489a77117c004fe7c7354a959cd494ee607733addecd322c
Date: Thu, 05 Feb 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770306233
