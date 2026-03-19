Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13581318EC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773895494; cv=none; b=Rt2Eq1iKx7PXJxHVBXOlcSXcvI1qpdRz7QnKlKXZ9U0UAhWZUMcHLPWmt53bbLTpZLcdN0RY99ClsnSpiFQcaOR2VxMqodjMFYTpHVaPY381uq4f4p27XzSTkIXKOJ4xO3sNCJ7hpxItTPgV3Gp3u96MVyRiisFqhCkYekOna8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773895494; c=relaxed/simple;
	bh=JyD+2lvuVj9eimNfqE3UBVmXfSQN/7zMQEKYMZI9OxM=;
	h=To:Subject:From:Message-Id:Date; b=NM4W+R96kYL9VBaHpxaL92E6ui5UuEek/IjFWOq3+ltxFJ0fcl9ClNGCyiplzkQho8w9Jcu9NZeGwH+Z+h1wrwj62mMPXM08abEV1pHcJjyNl5ZAZKYMypLJpfyPBDTODP9h70zNPQ3xcdORbs7ny9b64pmh9P7CfvU5CEMjt+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z26zvJCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z26zvJCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C67C19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773895493;
	bh=JyD+2lvuVj9eimNfqE3UBVmXfSQN/7zMQEKYMZI9OxM=;
	h=To:Subject:From:Date:From;
	b=Z26zvJCuR0mqa5MtnMRvKp+r2IW+Qb3akk+6tBpRcpRl0ZHkjDTfpjdPHGfNMLlbS
	 HZqJ8TtnwhIcV21VWbCbcoH3k5V6rQMwKQ1zFCqY02Yyatl7NbDp0rJRUCMAV08dxg
	 3zZGUEgquU6zTeCzmY35OW1liWdrHOs+M3c5R97E9n/JfSGtHRVNv0OienxRJE/2dJ
	 +HNLZYUc1I2ywUASNQZs4OS4tKfqp8X5cFOARwCad5INOgHbG2cyaJNeU6uIPidMDe
	 Ji6FASdseLiZqnQAaj9m/CGGIk21AUiccRY2d+8wbdlGMCYfkaFQ4vVGSYJPgPkDl6
	 nsLXK2+fVHofA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E3F1088E78
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177389549362.606.9774097813866901810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d03e861862052d53eb0fa3bfaebc6ff45b4426738a9a38949444e89a71499f
Date: Thu, 19 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773895493
