Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090B7364DA
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705832297; cv=none; b=lP7ksNqHp5ZgG32lmcIhDeRwhaKdV4mubUGHVNg+aBKZwmxfjoq8lvLiiiwWD4KaI+S4ffl5kDApuj+hRdasO6cDnFoZZpcIsnGoyoKP0En/gAGhVkg1Z+M5R9KkEA95/uFvzZKIn22HrSPtwcErl0uPK4ngst6KRvwWGID14yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705832297; c=relaxed/simple;
	bh=RmdfxX8iQwhfIZtDf/ctY/gzhFhKyPxXRic3DakBluk=;
	h=To:Subject:From:Message-Id:Date; b=TCLtcioCIjOoxvg5yGEp0sC5mdSrGGknQqt8kwDWeLHIZLgMlLn4QZQIF4QBCoKUraeAVyYxmcCgMd40BztBQd7jU0Fz+i2g5O8tYy9rgR5ZhtlBIDZ7BsobI3wUIblGrE++M2VUdInw3nf5Darwpn/iFIxZX4r7dTW9R+F/lek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=arBuHVTB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arBuHVTB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E7F3C433C7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705832296;
	bh=RmdfxX8iQwhfIZtDf/ctY/gzhFhKyPxXRic3DakBluk=;
	h=To:Subject:From:Date:From;
	b=arBuHVTBJin56cWTkzxm39cdK9DyLBu9YY1F9N7sLY2uUOpsYqifSBO6AR4KK+tV/
	 eAV/hk4jUl2X8ROlPDFm8AMK5coQ54GOk69GM6nVAMDgkO53FiLa/J7FCxVbl+Vxvb
	 U7H1jH+LnnwOc1YfdYwzWM5GJlYJdNWEdxuJ0mRa7uLMGqr73d6W60gKibP61dswIr
	 XRVXhFGIJMPpxLwNYNaDNWofOs4zQhIFjtwYmCCXQezw4ux+vz6goHSHQU1IfCUNqk
	 I47Iz+k1kmY48JgZso3xmkqmtg0/ywR3RqE8quJrK6BEaLvfk7HeKPo5HDAT/KYBJQ
	 3wkIqXKwekiHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60A7CC47DB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170583229636.3516.7841063176721034258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61bce2624257b54ac5c1af5caf4701b42c21c169304047b2de4b103924522db5
Date: Sun, 21 Jan 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705832296
