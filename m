Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDD6111A8
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709360897; cv=none; b=OVmBDZw/45jgop3IpxztiOHqBoMbSCqHqWq/TA+W9DgwIPoehxnw/lOYULZhPRVfKveInoPzW4CXNz59qzXhR1cuPSQBGgDg9avCFmFViyh0sKXzzTieV0HVd26Y/lOnyc0+ee6rxg+oMdy9z+ZH2OzLgZ+l936Wt41cUKi8VOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709360897; c=relaxed/simple;
	bh=YUUWwnC+HdDywVhM7+U6FFQ2tgWZDSNcT2xFvyobpuo=;
	h=To:Subject:From:Message-Id:Date; b=gd8IJ9BBEmlMLVUrgqM7PDONxxLbQ5twIVn/Pr5VIgDC1vUVQ7jyfaotuB0kPN7OvKd0JQ79GdbSvOsXodHWgsbUZqC75p29CWCAON8v7l8Zcv4/q2i07Vku7D/RDX3BWMGsm2YwYI8sg6paSkb2aIC2jFDZj44Epjba/nofEh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbPf4XTc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbPf4XTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80901C433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709360896;
	bh=YUUWwnC+HdDywVhM7+U6FFQ2tgWZDSNcT2xFvyobpuo=;
	h=To:Subject:From:Date:From;
	b=AbPf4XTcPIXJ55OH6u5fUU3LxkE75FyFQHDBHB0xLYJpdjO5fDj0QS+L49RN6GCAZ
	 TI+oiGfwAb2ifgjU2Bqa0jRcyuKn4WakQPhS/p4pOX+IQWV0wV+r35YrOMJ2v4OGTp
	 wCBgwTEEruig8Ab/MNeE8QZEjRz8dfFh5EnGFn99fHXqIeMEnQtyzZjUzepV6Hkmas
	 sCFRbjLI+ZPtHykzbOcFMm09EwwuoZMKSg86ABg0K01BssjP5uhez9b1/p0g6IpO2I
	 8dYn41K+KaEpdWpjwiakyzX/hf6vL0sSicwnKguJm/2XN+jnrJ7rRDLvVJTdlgiDn8
	 DQPCdeoLlj2Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DEA5C54798
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170936089636.21730.15679308071729671852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1016bc4c6d716176605bab6abe2aa7b593779960a83785727565c51cd0db7926
Date: Sat, 02 Mar 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709360896
