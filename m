Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0CE81922DD
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761913794; cv=none; b=OCk7SoL8DGADGfAZPipwE6ASsdW1FftkoLMMprxlcAzEaDEGfGAwbgxxc6HTqeBjKn47eE5DTZ65P2gjuEXcVQPNF/ByLxsuvCuEYyYzTXGo5uunZuBLahIajif0w+3KQAWlt8ZEfy7VOFB8MVFi5s2oh9R3NAp3bFb6FaM9LAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761913794; c=relaxed/simple;
	bh=lte7GW8sSFozYCDT8MalwJS57f8VpOCT0oKDoa9veaQ=;
	h=To:Subject:From:Message-Id:Date; b=e+xZqu6pm36yriy99KOsOYBq8Ggtwyh4drZhTe2D1QH3biQQSE0VogQHf3G/QhAgd/jlpk2r5IMl4xbwEMI37SyoWJQyVZrmB4EMR6fMTBWteGkH8TpDwCnDyK7NrN9cSi6LDdKqTFuMuN5zjEzYJHvfWGiovz1rGeHzY7pRg+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fC0GRibc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fC0GRibc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6F9C4CEFD
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761913793;
	bh=lte7GW8sSFozYCDT8MalwJS57f8VpOCT0oKDoa9veaQ=;
	h=To:Subject:From:Date:From;
	b=fC0GRibcJ04AkdaYIIILUV4E6IfuJTnGatJJa6rJeZOyZ8hN/y4ReaV1pv5v4riTI
	 0oUVitYUwhqI0VIq0UtVZCmF8uSYPneET9NlVbD5LYBaZZfMkzfeDgsdIwohsaN0O8
	 EcLAGz4sHYtgmRMrqp9+voWVUy0GsGaPSTmgiusRgt0HskJl96ogCP070294tHZxiD
	 q9fpFYHUJWrPCuUscJOZgJkDDTm7XfHNxbKxxxzJx/lu7C6MdlmxqrwQ7vRamj1hAB
	 q0tVzv7F8VOXIK+51hGcj2TfbWOr20EfnxWVuUtUcNWVAZnNFDxos+UbppUpGz/f0V
	 X21ai1hvqZE3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90920CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176191379358.26500.12557270492435345947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfdadf8e03084686ed23d3c5817350f2ac2b761074524ef7f869d886ef96cc44
Date: Fri, 31 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761913793
