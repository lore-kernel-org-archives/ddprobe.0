Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2891321F2A
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762350594; cv=none; b=GuboW8/snJsBshFnmtvUOz6Ccjq132+y2VhITaUEmk0f8WDf68cL2PvZn969qyDkIOH0GiRXvluqoXVTvm28BN/8RVJ+CVQwvZY5APVqvR2QmC2yCvwC/aT6gngrnZ+YchYv5nEsjJ02PXHkqie0qmEMcBXneXfwU4pK9vOPZvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762350594; c=relaxed/simple;
	bh=1vzVqxxZTnmm3zuGO91kVVdmWUuzbUzHYRmLGYf9Wqg=;
	h=To:Subject:From:Message-Id:Date; b=lytB7B3c9bJSSnkP9zPOYG1OgMsMzUWpEYXLrtuE3Lwhmc/ZlxBtIwNILf80bs5kYSwdIFKvpETpRXTRHXGk2bA1oJCxprBJSZxiwSljemPkCqqCF4OhQIJADchpZf8Dyk9qTeLAgQhcrC7zqaTT+pn4qBahlIfKOJ4NB6tgwOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3QuA6Mi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3QuA6Mi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC44FC4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762350593;
	bh=1vzVqxxZTnmm3zuGO91kVVdmWUuzbUzHYRmLGYf9Wqg=;
	h=To:Subject:From:Date:From;
	b=f3QuA6Mic+jB6kEH/MzSbGtUt0kLjZjfryHJW0zeXykBdyvHVIchLM09dH8dgHMKk
	 qubQA9/1F3aHZLen3xk4N9XFY7wwHiJNi6baCNkNYcv/muJRZYMBUWm8V3czSo1jCO
	 KgIBkPWJpJqPflsMkifXmKUO9ruwGnl4KjWdSp6vofM+836nn+EQXB7dTxCVC6nhT+
	 GF2vTrBI/zWqTwfCqW9ITfYOR1cqV9BidlficQqVi8YOyK7IEaGvEIoD3FHVpEq/Zh
	 5e+1jVDqUnWJQUwCEfKGZ0ld0T9t0ikNhs80WEcXvPjaoGvLtAnJERbFEz8Y1UZWxf
	 6snHpE/P53QyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0100CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176235059363.24773.17913430376909942989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75aa1c7c3b354f7fdfa0a953da50cfc415410ab36deb44679456521b90becd46
Date: Wed, 05 Nov 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762350593
