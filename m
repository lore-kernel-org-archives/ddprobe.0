Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A06C9539E
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706065696; cv=none; b=RiDR+cCZ24pWsmKZ8PZX1hhZDj347+YdOoMdUtaY+Fi77LIZT+O8QHrN+GtQQftAwvVSJKNiomMa8XevnZTuYtoRTWTfT00OHR+Ir2dd1shguIpBwhL5tfcDnZoWx8A15bUJoWIs4u9xhsu4jm/3MSKxmvunWhZw68xGEUaNj2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706065696; c=relaxed/simple;
	bh=4K1OTAQLKbAeNbZOIm3uCNGNAJdTyMBMMKt+7KzKhgk=;
	h=To:Subject:From:Message-Id:Date; b=GRQU9Q2qlPsB9cZTxT2ayTd6vLaZa7UyfONNr80ghAUwEi7I5B7ZqoD4eO3vDh7M7z0iFhgsdobOJSAlxHaz+t8fuDdNxxclm60gElBAEOoU2/O1o/GTSCLMg4LVrShVPsoayzEGofJI50gmGDJc1NhZCgyPQUb5C2458nxUAFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/BT1131; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/BT1131"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70DE9C433F1
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706065696;
	bh=4K1OTAQLKbAeNbZOIm3uCNGNAJdTyMBMMKt+7KzKhgk=;
	h=To:Subject:From:Date:From;
	b=D/BT1131kN4k96lMKyeWeYsNIkW9mDlYh9ip9g0bXc5incJ8az2eexj/vDGvhwE/+
	 6HCoS7Cq3LrAjHTQIr34VSztSyWkMJbsRjSv7f2X86G7R6r3DYxE31nWgegB8XsHIr
	 j5eYu+5WKsYlvvjcv98nb8udkMe1d3MlZi0w+wUegPdTsvpc6GKSdCOkT9Xg4ivPEz
	 I/ZNB1fTq3PzFXOOWEbfdjj2SOu/I4XtheCYVyMsvHSN7j1BzzXOXglocdHKXEfi2d
	 tCETzFNSLlCwMZjU8ndpIEvMjyDk66CdsKAWBStHoVCV6O8BEGayAZdQbAke7VRnah
	 NlJ/uhhkTpQ7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ADBAC47258
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170606569636.9549.8727743276573479307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8e1ead2f5cf1fb828d94b8a955a7716d1000ce03c24e3c38803e81262f67bbd
Date: Wed, 24 Jan 2024 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706065696
