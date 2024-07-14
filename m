Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F22510A22
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 19:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720986023; cv=none; b=r4HNKMzf5ZCOJPhk0q0KB6n2twzcbfw8XBTeEUkpgcG3fmBYbFB5FXcJB7wrx1vnAR7I4SOguZq7wbe3nObMGkcoo+3oxEybPH223gIQU19c0H/798swu3u3bJuo6MvQdEDkE4+anW/CdMrmR7HIgTIGXdnKOdm6exaHCML+Hv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720986023; c=relaxed/simple;
	bh=ZYlCR3m217OPPsmzc/2JThijnfDk3c9y2CSRdUWpX6c=;
	h=To:Subject:From:Message-Id:Date; b=WvHdvcLOn1fo+CfQcukHC9QBvPVcE248HGmeItOKyV19afCDYp7TfgohOm9uNEJN8454ruoiOHv0tiXCLjQfXXrpXkGoWb2MVmarsCyhD3+8sywpD1O8V6uxdr9dIVHpgKt9j3t5dXsXniYDRxQSV3cXqFjBs5uy1Ovsyx9k/lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ae4GMkmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ae4GMkmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD358C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 19:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720986022;
	bh=ZYlCR3m217OPPsmzc/2JThijnfDk3c9y2CSRdUWpX6c=;
	h=To:Subject:From:Date:From;
	b=Ae4GMkmAHKL808ZM+LszIzWkJUaP787D0RJPclyE3ZfdDyB9Lj4XfMJp43hAQLBDU
	 uIFGPQ/ZM6lp1s7dapPs9A7qVpAzN94c5/9+iQFhh4AGaBjq8LouAllsc2Ejw36Low
	 kGtPoMfPRW81Mmv0YOuwQblfgW8W3a99Q7Uh3PxIn5YTJ2Y5mutUrxIRcYO5Pgw627
	 yYZQ8USecImWnJ2/t1dQA8OXbsibJUQ/hakubUaeltnjyinrf7vklNoEViIEH/9RAq
	 6Rsh3eTfwcXUh+uHEqHUkpQbkqJNNcMWlJEAm79s5Llh4n7C8u/OBKjfu37s6lhb4Y
	 2XdWCb3VRgBkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B8EC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 19:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172098602277.25345.1155309026965383625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1cb4fedc4ac6c1981cc240bc67732903637dc4bcac0f866606ff1e6ff64e55e
Date: Sun, 14 Jul 2024 19:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720986022
