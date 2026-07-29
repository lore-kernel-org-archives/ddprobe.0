Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 806BB35F60F
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785360034; cv=none; b=SLZE2mwqrdjp2BzoLPK1zeVBqhnImwlHYCdvPzf74l0AVz9QIfahN4PpOGa9vcIuoAxD30l02lfZZwC7ZAK2kA+LcV9D2398Q320mFy2MDQmDK7sgj9OAdfsUSPYavv5vg0eXTCffP5RX8gDBUW/VhduxuqXBfqkXJkX37y5aNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785360034; c=relaxed/simple;
	bh=Z29QaTV6FneDhsxtdImAIpbMAcTDBRW1F+WEDuasypE=;
	h=To:Subject:From:Message-Id:Date; b=khj3lzq+HLFc3oPmxmRvyRSwb5bMnrr0XYkU906hmfGA7d0Wkmt8Ix96CrM7j9RA38cg7DpJsMhIJjVzfDTFCD+B/SMAw/kygVxazeO9C1LVH/KiIXo16NS+SpHBf7vtvvM66fIpInCn4lnfqC6ObrU79QCX3pnB3kYXbyPpLgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+OD6G6u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+OD6G6u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2DCBC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785360033;
	bh=Z29QaTV6FneDhsxtdImAIpbMAcTDBRW1F+WEDuasypE=;
	h=To:Subject:From:Date:From;
	b=o+OD6G6ufNBx/EJwCbxZ8vjAT5RWEzBXtzOXVon1HTB97wmro38ONIqy9a5nNeKq+
	 TUw8+bhn7a3OaFZOOs677+9Uc8YDr8fxkog2WcZzPB7u5GMxvkonIyVhnF/dIPgEKV
	 ZBtAuT43FsRbUQFbqBu3LLoJpl8Sl862aVOTozJ5bSBraQaw3e8LqMUUvCH54aqEXp
	 p7FKsaF4BqUnBCgNjNjtrJzI8MzqCmCChO1SDC5SKZ5vgOQQJua4BLeTUbnlLpp6tH
	 3FRawqe7HqiT2Xx125VP3szwWzQP3N/XIf/3V7gpznpJLVWNjTbnoTDLptf5VJ/7su
	 So9dnp2t/MH/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F01C54FD4
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178536003373.22295.17841896034800972772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b562bbf30013faa02a9cabe1d8fe0c0dab3b013dfb3a09c16eab8fdd4a4a6c2e
Date: Wed, 29 Jul 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785360033
