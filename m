Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B2818C01D
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729238154; cv=none; b=gNVaKHccpIbR9GV4cG5LghTlSD2fqcge2S9QL4fPXGKojlu/sM6FV4TdKNAHiyUZBonuFDb1X6MgONUsU0XC8Plh4RI5YT8yTVrY9KLD5KZC3RCn9q9cU/HTPqGuqkAy83vkpUGXmeriUxyE/iepEcFXpk2d3kMDTTDH06bmVyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729238154; c=relaxed/simple;
	bh=ozgelsk4ZIc87amF+Hz1xOyysQBQI0CV+Y34prcpIL0=;
	h=To:Subject:From:Message-Id:Date; b=mxKTqG7ii8W1CJlhg7FI3aoaUNKjFacJJ7byfQAJ6drs5v5lG6KByOKllPuKg4acVWyLFJCBAce/Kht+LCsumHYvZTAndd8ki+XijHY38N1JR/kveA7uUe1DlVMU+e+7yPdLBcyJxZZxuaXM6qoLaj32yHngz3m2lmzJF6f9kyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVcHjqvi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVcHjqvi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DED6C4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729238153;
	bh=ozgelsk4ZIc87amF+Hz1xOyysQBQI0CV+Y34prcpIL0=;
	h=To:Subject:From:Date:From;
	b=eVcHjqvit5NAP1ZOo0yJ4yDSTNEGmGmgSwiKeoYl6xEkaXdFUoKW40+H6y2qsdE2i
	 CCT14SQ2yZTMyqCp4gMwP2fms29dxb2+gKSUBzlnU6Dd+C2L5SS4VXiszOPioC7jnY
	 yxYcMbiw1jstJXQxiGK42hwiAbKfdwDO/uVgH3RqfXk4wu0VRi9eiQz76P4o2jj0oq
	 Aa+fNqaCNgGyYEjKh3V0kf2srKUoy/EcpT/VmmK4XE90qpbqfFtmgolTUm/DKsOAdV
	 eaoaKY5WRQ4BkNaklOqKIMtIDaPIFmfiaf91ldguXoD3SVStA3NZ9+PDVrZD+rHoiN
	 zTszuK9nmZZbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A8CD2127B
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172923815358.24629.10661464852522078157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c45647df8a776f322b2034570303e6bdb687856156634eddf4b49acaddc69444
Date: Fri, 18 Oct 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729238153
