Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211C218A6A5
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759615794; cv=none; b=jmBxDO5lIcI9/WYsRgDYB4PT6cVQj5I/57ZponDOp/ROObVIxanje1SGjO4OLt51yk9puO9NTXzvrPwUUpePFxod+AR09MTqUe6XAaAexu//lwYuyya/gYvNzXvwtDdBK9RhcJL9LxfovYYZPIH7bmOhuncp1zUfhDk+WrZqC5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759615794; c=relaxed/simple;
	bh=DLc/CR4SugQdRmfhcENF9lkAhQiL5dnMw9xiioCi2oU=;
	h=To:Subject:From:Message-Id:Date; b=PvR//GABtiwmSCnYeKnJFPBMayU1V2AfI8Up1KYhbNtmXE2rAGKAh3E5ur6wl69BtwiAjarvWHi/bY4VCipvHgqNuOPI5OMBgpY9F6BPI6hZm6dmyzhQPwyxDYK8G2HSdzypMQqFNfrECBxO+YhRPpQxqV8ihGVBGWIUl8U4Lyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJVQq2py; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJVQq2py"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6604C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759615793;
	bh=DLc/CR4SugQdRmfhcENF9lkAhQiL5dnMw9xiioCi2oU=;
	h=To:Subject:From:Date:From;
	b=sJVQq2py99jehTVPD91YIJOzYShhnNSWLjvcEzpEsocKve3NpDswVHMN35zhQ9Q08
	 ZP1KpcYVBZnvSEkCU0o10mH3hhn7uFJn5cHjgQZrM1eKhjShAVQ+CHlb/kH/7pFZJH
	 Nia4eMO7PFxY+1YtGDWTUZTMlGbLy1OgWoTMdhutGr3fbaw5PisfWOnBFlFnlj/4Yb
	 iWpm9uAHeI014l21YOvJ+Tc9lkAG9vC2dA01qvzYKcgXBAr55Gc9oEcO6WsWhfLcqf
	 cmZ+BvCdGD+7VVazWuWo4MqmqOTC1SYOTaP6iYXMrdnVvmR+ECbaT3xsumeyLcb5nM
	 Uv5WfYjDEOCLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93924CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175961579358.5794.14564073636143300380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e47ef288fcba9d7824647f5b5dbddd8524890edda43d4ed2924e8c665bc16a2
Date: Sat, 04 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759615793
