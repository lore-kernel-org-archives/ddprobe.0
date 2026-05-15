Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1BD1199E89
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 01:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778809834; cv=none; b=p4jVu+B67iPBuRVk3CHMvT+P9DIrh6eGZvElHez7d32kZdGvs7etYv3fTVd0/U1g0fxYoeK/6oAmoCE+opOORtDUFp8mqxq2/g4ROBSVknKDfP0GyvOpqQexTq3IQJwAsjIMg8vt5P1AFyFtIxxmWGrYkhVv2CpLVlrAenSpcCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778809834; c=relaxed/simple;
	bh=cY5eB37AEfSofNb5YRIVFFd4mGZikaQ+99c21V4SG8M=;
	h=To:Subject:From:Message-Id:Date; b=g4hTQX3U6BasohywZ7s6xOzmyRojeQIKQ7oFYVdK+z3ybWelflpzGns1DCZmlWvJr1HxqUdH/l9dsaeKUFG1bl5Brs1brN+R01vTBHhf4IU4VPg+qddYGpwXgzet1xtaURRESd2r558W2zFHV/lb869wbYiYbojKMXLkK3/JMew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNIWHtLu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNIWHtLu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF245C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778809833;
	bh=cY5eB37AEfSofNb5YRIVFFd4mGZikaQ+99c21V4SG8M=;
	h=To:Subject:From:Date:From;
	b=CNIWHtLudjxWAnSpuKVlQQvyLGhdFjce4vPxjWrgWKqzL7EYisLG71Z65ddGVo/7b
	 6hC921bjtwEamyDcrDa74mqYoKkVLRobacgAGXMaK6YLQh3g8z9C1/l+jQ/aTYcX9A
	 8pW7lOrN1Ueeiikx5JjFd3cPZS2Z+hSxgavr6EKD66IsRCcBqYprGqlT+SRrLz47X+
	 0One2KeFD62rDSv2zADEskxqfIK3cgzQSsXd1C6kxUZ+BoDPpSQMGApjotL/FQDr6m
	 7TReNlTwFmIb+nMYiRuDPe7kQNRvZvDZbeF9yF6flzP+oxNsaQpHrX5vrN2HFPrJOK
	 /ro+6EJmPnuWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBF8CD37AC
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177880983368.13717.9506733145122138602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5445dc439f53e725fc142eb5f2b3a92c037135c7ab1881325f8b5e3002963e83
Date: Fri, 15 May 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778809833
