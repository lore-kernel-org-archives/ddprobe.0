Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497651DA632
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732659954; cv=none; b=LpXqaZJ8DZgGg2XtydQtjKix4jk8wypl8ajDolE76HvOOxRLcMS8aL0bYlJKVF+5iF8sc6eg4cavvyyqUm1xvR9fPz6uAQYryUi6P9L77d5jwPFgtIdPe2oiHspA+3xznAxHbXfXTruVKKXygherWiKqpr+UqCZtyhgXlAmXMLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732659954; c=relaxed/simple;
	bh=2+ubCnVSR7/ghGfJu5uR0Xpblza5Ysk6TtlI2FQtApI=;
	h=To:Subject:From:Message-Id:Date; b=ZW8AXaMNgFt2YJi1our0Fs2oLTwxIARIArYxf7DT6TdG54yNTzIpeoheAR54rV5kxyoS16Z4EB4rZthwydUDk2o50JiYwzPlmCoFQtVxEPWrd1lFqVsN3lIborGTGzVHizUYUKQigp8l4VZ6JhWM8YN+UoeScAmzjSMMjlwk12s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=durZB5rN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="durZB5rN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9864C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732659953;
	bh=2+ubCnVSR7/ghGfJu5uR0Xpblza5Ysk6TtlI2FQtApI=;
	h=To:Subject:From:Date:From;
	b=durZB5rNFKseane25IKiz3Nn3mPw3gAJuS//n2NLcs32wJjKACwRYVcWgX5f8FT4B
	 uyBnKOyVKZo766Mbs9h8dkcsy/4vTVZ3Q7aAi+UzGPcHURWGE+z7UKQXt0tGcllP+v
	 FnpRiWoi0NYQsxlIGX3wsbiFmf6FlGuIfW8HMvElaJkdijXd/kxXyolJFWFtIAe4wA
	 Ax7d4VXDZVh6LaiXR/KVvjzYUDYsIk+E6NiwJs6Z57eCNcowRD11NAxs+GxJs+igm2
	 e82CztCVGYMAJVH/3KnQZ+dbiQCI0AppuahYu4Z0F+iRm+CVkVW8RpnAWCH+OYx9gP
	 HQgXbEFiq/lFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A8AD66B84
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173265995361.28041.12990392974682548643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a3c4be1f123c35f14724bc1c79fc85d47f44286c2d8224ec179be98949b6cb0
Date: Tue, 26 Nov 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732659953
