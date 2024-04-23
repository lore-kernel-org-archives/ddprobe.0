Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77E9626AC6
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 23:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713915623; cv=none; b=t5U1ZlUtyUzN3w0s7AtLT4/bjEYWdFrrjFqRv7zOlfHTnABJhmXKdT7b455GoZIDdWC8a7Y8MxeEBrOHaI3/T9bJt/qMNTCRDtInAS8zZv8J1u9+t3E3rY+yah4VFxTJVu5Z+vUOXcet2oySwMPcn9+EPZUj382Qg0pYNK5uQi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713915623; c=relaxed/simple;
	bh=5fLCpoD8um9O996kdJehHqcAtDhCSQQhm3SsSLeP/L0=;
	h=To:Subject:From:Message-Id:Date; b=n5TDu2sDqR/toXRrsrRnSpBH6/XS58/r/ff4iHMW0uPRuPSXNPYPk/pTbzOMxj0UoUMzz4iAiK4en7F1wgBu0DR24JhkTkNh3UUjW5LqBLehGiBuK2KKHFXXiABfBdmmCdR3pwjrPugzk4RAzw3zSJO+DqKNyOKSMTkfPTeDR6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctvRGAC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctvRGAC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01E11C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 23:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713915623;
	bh=5fLCpoD8um9O996kdJehHqcAtDhCSQQhm3SsSLeP/L0=;
	h=To:Subject:From:Date:From;
	b=ctvRGAC/7AQJ18oM0Yop16ag7UZdoIKnM8829sIhMom4zO6GMVk0FTu74TrlkPe0f
	 QfZ3aYX5aY12iAde5ojW+wFesHcVgWSAkCJrhX5w5KxLoF4tIESy3/CtMiMHoL9g+R
	 b720FfZeIYRsHNusfJr4uJHLvCajQNSydss5Utb5cohbX6ulWkLWVAsOn8jJebtx19
	 I0wJEMWjfwDxNzdEpy/VaMNf6TpXTX0occRaN3M7ZI+qARrGvTDsBxiEJvn32zTcR+
	 Is8YIcvJezLhExJZyN4IHJngftAYbwc2Oca5DfBety7u7y6EhSK1cPEQHiALYIYirn
	 e6RO68u1CeDdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9B3FC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 23:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171391562285.10493.7159078577918933088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63dde58b3d65db26cc4c7dd74ffc363f756e1c315c3206cbe2a2bc8810fc253b
Date: Tue, 23 Apr 2024 23:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713915622
