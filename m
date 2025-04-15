Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7851DE2D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744718394; cv=none; b=Rr1OJBzNe0bOPAgfRJBuXgomH97Hyfk11M5jwMbckdYkmQkG3r81y1Fl/e8cJUK2WRvPKuEe8p034qLc11VxjcY5pyGrV2ZXV/f+FKcGWJPecBA6E7wh0GWPfgCIAHbgTA336nveozsQ2tRAxsrH8ZWncDZcQFX0Jc2Gu9k3lKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744718394; c=relaxed/simple;
	bh=OUkOAT4P0I0ljgQ5mlgh7pXwRUzksdNDRz69N8cO4B0=;
	h=To:Subject:From:Message-Id:Date; b=ZiaRiAPCy1shxvOzwy3gd06n3kP9I3Tpp862BttV7LGPpHxoq9aAdjtViarxv30ZtDKf6VqBd9T3dyvQwj7l9LD8+pLV0sVr5ob+Qf9lORARHwTL+CowwoNsBLWQ38lsNuWTSqr0Z+E2vAKc6g0IzOPcI0vDUV0MERSDHHMIaqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOh0N5RC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOh0N5RC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BCDC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744718393;
	bh=OUkOAT4P0I0ljgQ5mlgh7pXwRUzksdNDRz69N8cO4B0=;
	h=To:Subject:From:Date:From;
	b=mOh0N5RCqbHzeTEZp58pyZWyrkEzBjXkqp44m5Y2ohs5rWvX2qAXOk1FoeY2YFvmJ
	 YA+WbCDeDmx+lPbjv9AQ4wA8YmSOpDty0FnExbNWiAV6URNCSRNMUxRkANnlH4EbAq
	 NI1CakwyTzdzGAc2u1wPYorS5a5mEQcG1VF1gDZX35Ikx2zciaXeAWRtgAelQD1k76
	 3mU4Dh6/nMq+dvUEGO5WrwubWSEC8kQGStO58F9UkKj096a92tSjHB81eA7HMgXsNQ
	 +YBzECkFR3UR7eq2VBwniQsq63zRzhvzBS13AUIl772FQ1mDFERmWPf+gryVjnI5Un
	 R4n2Mqx1VKvKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932ACC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174471839359.24481.4495289952964721176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e78ccccac2107e681a690028e9fab5bbc12e1ad5fe68ee484074ea80c73f23
Date: Tue, 15 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744718393
