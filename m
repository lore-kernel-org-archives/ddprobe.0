Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C83A2FBDEC
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 09:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763975514; cv=none; b=IhDSbXmSsYcYRt5vqPcY7ELzgrayHBA5pTlAs0jqYNRspyGWe0a2mIaGmw0aLnlms9VY2hdbB5L4uCPF9pnZEs0JGl5m0Fdkmjh1Rh4UEVtbsBDKnNOIpYkHk/z3Xp9iumACrg03RSwwjN2/N/LJf0lvfSaGvu25WIRvv9sVulk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763975514; c=relaxed/simple;
	bh=bRKcYAFU2WKvgw+oUdEj689O6uoK/7oL7ADW+7lmYdY=;
	h=To:Subject:From:Message-Id:Date; b=HZaMddJzFQj0Ws+mMs1zerqQoxT/Lj6MhMPzyQ+ddDyrmdmbbv7aew5XQ5DqRo3O1NXgjxS0YtDiMUfsoPyemz8sLH3EX+Dtm8bhL6rzXYQewQ96I6HXcgE0gA4XToC/sJsFt0A7fMV0CDRpa08GK1xrFVRY9+oTI5fyoh389zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUaZsJzc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUaZsJzc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2713C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 09:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763975513;
	bh=bRKcYAFU2WKvgw+oUdEj689O6uoK/7oL7ADW+7lmYdY=;
	h=To:Subject:From:Date:From;
	b=RUaZsJzcXyPyZiXut1b88mrcg044mpmmNe2QeNWbY+KM8fXrWr7oXd8Jnz+S77hks
	 dh3nvXUH1cKVO5rDfHdFDwPnct9Nu95ur2nahVJFnlJRwkaAgJxlR4229zdFp2RbJa
	 6FTVHezLwf65vx/GjsgBe4GH3dnSvSYYgX8e42RYHSQXRMnAwnlLhoQGvC8B8sVYk7
	 pkR1tK49dF67d0LiGwnQdRHl49P8b4o+dhMgD/0HgndzxJWoyYJTTBxX0308EXnqZh
	 L+0WS87VStmjBeOuoYhwZUoH6pF+ZgiFxk1nlrmMEUQ5B/ZNhn6irZmym2sl/+lewO
	 iMU0N6zMjBAjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93619CFD31C
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 09:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176397551359.31184.9213198404779503216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac5872df73ac9f518b02a6d992da08e27cecd4d4135b7d978b5821f7a6f14a4
Date: Mon, 24 Nov 2025 09:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763975513
