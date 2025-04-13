Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE321519BC
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744541394; cv=none; b=Z4i3OYcRa09XRU8kbochlbz2WZKbW4n0ZBXBoKGzDvTBeeO4dyVEDWUXi4KrH3RrSIk2gxjkw4Vx5Ysu4iQkyepCpRXjz33f4MVKTG3wFQTRJGcAVX8L4w7Ytx2eLVeVN8hGE6BlcDjF1G7iSIpVDHzkD4aOD+fLeW5+M8/g+Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744541394; c=relaxed/simple;
	bh=Nx9bj84e1OgPii587wc9OVTjSuxEwxxiku+Rce3LsjA=;
	h=To:Subject:From:Message-Id:Date; b=HSR6eqZppuB8PyFyPdCNptSeSdpvtyYHvEBYM6F4OTXnpWzfSXVst6+b74aITIdfNGVo3KpjNIh19d3nSAr9LJiVGFv5ayjmISpeR6bkQOsRuwYyV9ClP4b3/5YmTmbZulmqNcxKWgZVgXvHNbHwNq40SP3LPXt69NODiO2pO28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGkUpfKy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGkUpfKy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D2DC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744541393;
	bh=Nx9bj84e1OgPii587wc9OVTjSuxEwxxiku+Rce3LsjA=;
	h=To:Subject:From:Date:From;
	b=qGkUpfKyFuV4SNULfSglX6aHeg4ho9TnWA6efPQ/oNnS4IbVKmNG28xOQy5+yefLw
	 dnWjcMAeMpaabMHnDm/W+9BGlWzznoJJA440rYMb55378zL+Hq9zK7KEuigDGbmVZN
	 O00phQiWquC0XtzApJUYmcwTIjXsm+19T+uOUDmnTF6vU/wuytiqV6onUBIrN+HhWC
	 JDXw1OXig5itpvCRBCy/vw4xRdS+E62NYEqTV8JBzDOy4LvEWSEHrwIDIz+2cGRWl4
	 w+lp6HvWYb0A9Da36YiM65VKiA7SDoyo+FqJlgaHtA6rIE+6nXzlvy+upuUU5efM1Y
	 gXiZAgatNLe8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988A5C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174454139360.26562.2634591621152592220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec4cf0abd5a3fc5428492a621f14ec27175694c7f6da0ae6c3ca511cfa5fb45f
Date: Sun, 13 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744541393
