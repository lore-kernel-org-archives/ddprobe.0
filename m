Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C7D231C87
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728125154; cv=none; b=CfKr2yb+yirPBxzoh/wU/pevkGFVEig7KnNyTeQpxNbaEgRMk4eOlwj08uSCxdk5jF6dWtdYcoMidsS1WQSjeMD+J8/XVCwSrCxKujUqSksqYNfGzDwp7MM+XRzr1vXvT+cWfHJv9hS49RZBV1DE71WNfgvhkbwD7tVXsKMSUH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728125154; c=relaxed/simple;
	bh=jzxI9eqtFIKpKKN9nxMugtlH4R2p9J+65K1A8NVLpds=;
	h=To:Subject:From:Message-Id:Date; b=a4q7m4yBhu7GNplETOZScD8fkZjDca1czwm/HeEu4/f0YfRA6Ob1K42p5r8rAD1waLU6zmpDAUrls5V+jopb6aGZv9cbiRQ2EBdt/BAu/i6Yiqmzi/FaxFJZe77xZ4pdv9EDcU4Dy4Ilwdbzkm6X/BnGDDtI2XMCYwVHMFULjlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bl23jZ82; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bl23jZ82"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EF4C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728125153;
	bh=jzxI9eqtFIKpKKN9nxMugtlH4R2p9J+65K1A8NVLpds=;
	h=To:Subject:From:Date:From;
	b=Bl23jZ82GZOsAluyFxb+fW87g1RtBOXoFuYW/SS2R4jmpcNQYcz31ZemKZ9VoJsNy
	 r0uNVZ1qM1bMdNNfUCFUsq5wDR960TYO34s/wjvGNIgdn4MJJrbbM4YKbEq4Z6zgUw
	 aZhq5DjI+J8xr0ZfAqZ73n32BUYCJIepB6eegjNNZhkGGSokvtHE4YIrc10VHvU8v+
	 wus8QqM6UDLKKWcx6Ql0lYyAsz719WK4hKooIIRjxWWUOQCqatcjq1H/T6GxxBW8MU
	 /a8h4wNqnjeM40TRWh/xDxXup8WRSjZD5hDtGYiwdg9Q75I6oCV3+fWfqJSHiX4rFI
	 iXdAl9OEu3dPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B598CF8878
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172812515362.3817.2424458459936361360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 399d16f71c4965b0d2a02efeae27469cc520eab1e8b437cbe2f887cc271f36e1
Date: Sat, 05 Oct 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728125153
