Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F813318EE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770228234; cv=none; b=RKB7J9QM1uOUb3yixsQbsJjuiFxz+IUSplQ8rgA5GJDURTV6SWmwh8u+xqiVx1B0WE+OL1ytv0sswENqTI/tbBTv9ceczotamOo58tqGBBMFvdAg8ZEaILS+o6yXv9/xiXDDSXkakrZKbNTNxTZgTNnJlvsJaBjehuCt9aaL+zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770228234; c=relaxed/simple;
	bh=gH/xOWAHZU2VPvoUmBhoN6KvjYbIDouCU/E5xPki5NA=;
	h=To:Subject:From:Message-Id:Date; b=tmi/BJcLgbvSlx5KUR6q1x3J/AW7hHzDI+JaySQ18Bs13NsyhGbsPm/u2vIlxWAUwTyjveetSiT8OigjOTkz37J6XCH8GM3rvbkFPgkUzHTAPMk/bUrz3JSdhcpkgLh5SMXvaosIVvZ8IpB9kULN5ieZp55DYV0sQUDawUcPOQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+Sdgo97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+Sdgo97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA39FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770228233;
	bh=gH/xOWAHZU2VPvoUmBhoN6KvjYbIDouCU/E5xPki5NA=;
	h=To:Subject:From:Date:From;
	b=I+Sdgo97RvDPIMqGi68PWk4gIuhcR8xdWHEQa1BdRa7ZtHOSCNpUaFw5ThyjlgZza
	 Rdm0o6yxTOn0n7oofv0PZU6ztPBdZPteQnVdtGqyCeLDiisvAOlsFP7ue4zbF/si4D
	 c0/Q+tyhqS2hUbY2+znkt72M0pJh81cGc7m1dJ4zODeAJyfVNA7fLv+MFaN4VxTCde
	 9msAAxTAxPnmru0CZ06Fiijx9cGP9tfJkWq4NO9XZDlMnCyKDoXn6qwghPcTz7MWkI
	 04FGB+F6S4oShlNhR8MSUZUZwSsCciU16IA0SfHKOWoMf4IiumdH6Bg/3YJRvxtdpF
	 3ZB4Adi35MrZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D8FE83F05
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177022823372.20435.3357537243896370356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 880af8955e4b3990a4193c5fdb32834c09e3109e8843e847590f6fac40803ebe
Date: Wed, 04 Feb 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770228233
