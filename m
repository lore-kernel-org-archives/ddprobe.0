Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2B42836B0
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770299034; cv=none; b=nxKnt7ABbAwlxkwZ52+VzndFN2N3Kz+C+5S/6qIv7S8AK9mdT5x2GOlCNNNq/FMlru26JMPScWz/aOQyE5UvDP4GP9oWlx5FHXNePycG2/d8u5u+usJVd9v+UShhN9M4Zzv/VqByrwy2ekB13L51Llm/x5N2fxN8fJbLj+4wNGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770299034; c=relaxed/simple;
	bh=Oj8mZg7Y7IXoLAInQsWFtd2YfDQ3wSIkihHAom5wNNU=;
	h=To:Subject:From:Message-Id:Date; b=nYIjVS/Ei+0OZ26qVGyrQY3eUM8gMzM27EvqBqNmlFplN1QqWwOkqNdFNFZ9VRTVmqr33Vewm0rdB/KWGE01CceDnl34mju3P6KsPr7bhcVDcxM9w55k6VDrn3MWqNQNpqHKKJuWmTd9JgKr1Tn6wTI2mMsw51ZtTTspmKEIq6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4kp0zLx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4kp0zLx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A00C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770299033;
	bh=Oj8mZg7Y7IXoLAInQsWFtd2YfDQ3wSIkihHAom5wNNU=;
	h=To:Subject:From:Date:From;
	b=E4kp0zLxnjL0ezd99M5o/ShSJJcAYwLRuZnzIoRgSBwRK3AVphFThM0nQWrpDdCdj
	 /eIrdWdNMtj1qbIYsd58v//99Ids0+FJJCIF2rqZLfp4Iu8nGzHawd1WZOPX/04kxY
	 9OsQXaXlWr5QYHg9aCL8RPUbxO423/2mHPNxC+45NbAEdB5nR3rehYIhYfpAYVMmES
	 4MHKiv1G5Y+aiLhXuXebNYSTs22cb1ugNh+Nlz4J1mPI4dA+C1dJMI50Z6beQODAIr
	 mur9/aUBCdvWDDtYXTBKo1MVCR4YJUPTNH5bQCtgsjcMn0alaxUAxPZJEA5S1dvXVZ
	 FMmrdBqY/cL3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5D6DEC1EB8
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177029903366.28634.17450576260885682301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cbd948c2b14a6da6e81d72d3e3e441844e074c8110b16e2f940e658f416756c
Date: Thu, 05 Feb 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770299033
