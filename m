Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677DF3C345F
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 09:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780047754; cv=none; b=EWsGCEtmB0ev/7Q4XjrXKfKSXWtk6d2Uz0snM5k/b3oB3VX/5//UylcGyR7rHgQarXm6w2+hJCwQRXpLdTeE0wWtgo8AUzafOawpXLx3qaX6wwn6OhZnWYkjCMpOIKV0YUt6PObemnk/BfEM/szBbLxZA/d5xajeL2THFRXsYTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780047754; c=relaxed/simple;
	bh=ZuxAoSRC7OLNptj0misZsV4QsWVN80a5cEb80eDv1vk=;
	h=To:Subject:From:Message-Id:Date; b=KScCI4wHbGWJBc/Mj+MUnMeQdWNWukJj+yE9r6yquRtikwNjnZL0D5zfk8wbWmleg64J3KfS3KwtIJYEEAxXnvb/OTDpHxcx2ICbIIo03aK/vD807x4S/OJIGohZxq2heFGx1P93JN4ljr6Z23fQi3vrU3etfzsLpSHKETgGqbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mj/8fj06; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mj/8fj06"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B881FC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 09:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780047753;
	bh=ZuxAoSRC7OLNptj0misZsV4QsWVN80a5cEb80eDv1vk=;
	h=To:Subject:From:Date:From;
	b=mj/8fj06+taK7XXLasuckzmiy/a7pQMkhvq2ln152jV6dAs5eHio6aGn4orx2+GBX
	 nU39GCtCl40JX15HJf2SuFsto0D9c3gioZe6Hpu96UduE5yPACt7as8UVHh7HjIl8T
	 yUSLAwYNewDc4ZptJ8bPCSJsna4jBx+kDPaNsJMEzOyXxrSNiRzdrDwv56s4FL5YjR
	 VBRoGTf1awZSfR4A0fSuPQW0P9PXj4M09+7YVzm+o1djjh+t8xC4m41EUMVdzq3Ff2
	 yDDkOb3LHXMWlDymzQyWdwFp1Zd+1E0ecarXGr42MQC/kGxMs9Oyp1wBIz9VYeXx7T
	 eO3Z7pGljxiCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A930DCD5BD2
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 09:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178004775368.19725.4690549341043655783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdd2ceeebcb7b46122e66609fdc124e14b4310c04dcc9c5d343395da893836fe
Date: Fri, 29 May 2026 09:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780047753
