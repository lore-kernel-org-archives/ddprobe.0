Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33876200AE
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726775154; cv=none; b=BUzcYC9z4m9L8C2PwWKAfMMU1F4rJwOuYhpqSr0s5FBN2Mf8Pz4kAK6fvS0/6GeXhUZk40AuXMRH1zKcPoWDbjJ0p5sl5L33Tvn8AXjHpEyr8KpAbgJuZ8vWegmJwNIiDTJPXyILbH87LFEV3OC5A9t0AwJJrdqGLr4ac5GPACo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726775154; c=relaxed/simple;
	bh=QgxviyO5SPXRpH2gLlIaPdzF98f15uVDm+oiQ7StY6o=;
	h=To:Subject:From:Message-Id:Date; b=RsfHJRBJtQo4yHoK2Zjdbn4HvvzquFGy42rGb1wGzOLPTcmmC+eSyNNZAbFI3W/vLwKlj96d0eXuMV02+DUkh/5U63290ySw1joPYmpsBpTjy4pAHf9jzBZb2ZM7hCPTzE6YQaxk5ukgrxdzJkvIql3ARCqx1TdmIjeKW9Thrcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIIjEhG+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIIjEhG+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8607C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726775153;
	bh=QgxviyO5SPXRpH2gLlIaPdzF98f15uVDm+oiQ7StY6o=;
	h=To:Subject:From:Date:From;
	b=NIIjEhG+Ds5sEsB1aKfNCJSKRHZYvsKZgn4uwCY5N0UCcBKMsL5zCqe8os8IfO0hn
	 xPNJnBOtAedVSVlWgpBno7b9milyY98ZsevzSF3WGD3p9C26jKDEjTNH6BPlIuqSzr
	 cJYIF/5Qho+hQAzk1gjttCZ2RfjFYeEk10mNxtVcm/NuqasnzCR8fRnTfA8wVXTUk7
	 X2NVWduqSJ72ZnFIelLFOSbAuecwkUb5ver5DEJyb/vd5cpwO6cfQrraN0VvXtUmgT
	 lptdpnSlyKVu4BR4WdlSrrYV8+hHn2tYYm9KpaisiCe3P/KULzreyjVan0NgoAQ/2s
	 iZvvorXWThvSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B9ACF3962
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172677515358.32190.15641218359971803016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c9e06975fc7c1b6bb245e493c28c1c8ea4319b8fa7ee6292a76b56dab5b2cf9
Date: Thu, 19 Sep 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726775153
