Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1F11F91F6
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792029634; cv=none; b=EwxIzZRg/En3aI84nCXTc2ai+6lWtLSKiuWzFNt7Lc0Ya4ThJ8cKTxt5jB5xUrVXXvIUXF+/6FSkWiK53SsRE+ih1K8YezkCio/VNv5m4SjWuwfqI6Xre95hjeNbpmOeHS7Jmg6DOdajBpffslTGaKfugD0Nu+SFOD//nWKHz3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792029634; c=relaxed/simple;
	bh=VLgUrFFju4JZdqOP2ZOW3iW+GVez71300QxUI5ZJoj8=;
	h=To:Subject:From:Message-Id:Date; b=ZhKmeA8eETLZtAANb8RM9RJ206roJqYwzPBW/zSW1pjBbBnwiWsnYl5mkTLx8PeM/NK7AMETmU3z+P05986QJCm4mWDdOFjJk99bXgX9y7qcncjuxrda3Fal7UTXqzi2RT5qhywFv6CSCtISXJwlxX8bMOLcx9znlA914KR7WCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYaC9HRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYaC9HRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2331C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792029633;
	bh=VLgUrFFju4JZdqOP2ZOW3iW+GVez71300QxUI5ZJoj8=;
	h=To:Subject:From:Date:From;
	b=BYaC9HRz/HEpwPHftUDNdEVqkPBru7bLBOuzEbPN5Mw4HOs8UtmDbqPimtOzckNy2
	 wzyGSZPmpQwPRka9krbpJkZy22jS8oCddDTsprI64qSxIRN3AP293GzNr1yPA7kYuc
	 6R5chKN5M4OOslbmG09sKnuMuDN/merFuFOLjPbL1KAivWQo4c2571c96v//D+sOKB
	 AqNM0Gx2m4tdWvLq5ez9FX8UNV3pRJyxqM/3Wcj1t8xqKziVf9FtcrX4UYHgjUmrLd
	 nUegBkT8FtyrUo9SUmb+XHLdo6Wf6EiEIkaiY92MEAOFjomHV7JX/K+ORN2XH1qAN/
	 D7lvi+5eXkoNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD254CC6B2D
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179202963369.28344.17752661247641255455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc126139b2a61355f1bb8dd739b22ad462f8e79bb496bbfaada6aaf501b042b8
Date: Thu, 15 Oct 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792029633
