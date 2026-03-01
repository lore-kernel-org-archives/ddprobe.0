Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39339430B89
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772339094; cv=none; b=cmwFNdRyisefS6W1iHefeYkNWa2aAARcF1JaSBSVN7J73f8LaWRVsF4EJax6I8B8VaLlkd6o1Lbwt5qi8yG46geKZ7ZOtVLaaHNzbRjLJ9+zsjXUacUjP1g33c1iAE3dLm9MzxELOpanYcciQCmCijAdub6dYCU0Rzfi+9iH9iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772339094; c=relaxed/simple;
	bh=y5sEvL225IDGu2YAcz5xElGtV88NvZIKxdXM6cDCu7Y=;
	h=To:Subject:From:Message-Id:Date; b=AQlGlYbhFLbiQOIqq+HYiamXNEqDPd3ta3lj+pq8TOhwv6ZiUFa9943Gx/EUyCNuLU6LzH5mbBeYr8YV2Vo+fP/TsI6j9gKwF9buw3xlzbCFwJgW8XSuOELaKbnA5Fkpy7bGi3HTiedC17zVQQx+Z/IJ5heeIxDNNWIIgsUNuCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TObMAfBP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TObMAfBP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC42DC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772339093;
	bh=y5sEvL225IDGu2YAcz5xElGtV88NvZIKxdXM6cDCu7Y=;
	h=To:Subject:From:Date:From;
	b=TObMAfBPX4NnHHbi++3ZVwGTWHGzhqiEzg0HzzdrpNpyiEcyCzZ2HV5XoZTMtiA0l
	 dXvJszwd1CQDQe4wqiIb7utaDNo0/NbqOj7y6UaYEtUsfpV5DbCSaARQcDyZBmUa4z
	 15NJtEKGY8mYerG5SGmvueF+aUdl86AM0hIfnqLKyYK0CRJuiV9drm++LycM9BdXR0
	 HYG2J5QfZUgk77tL8XB34Sm5HkvGbJnP1AlHaVa60VfpuQRIPbtDKYSpIJhy0VM2/B
	 e6O2XctNluPB48t0vprbu1NqVtG/FXB0KZHg8KqL6Gc9TpXKyrr8iuj1JiDQG9zwa7
	 v3A/29Y1ckpJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE67FD0053
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177233909361.15622.1029490786125045849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1671a75ebbab8b40a26720d2474b274a127747a10454cd954e30251b5749809d
Date: Sun, 01 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772339093
