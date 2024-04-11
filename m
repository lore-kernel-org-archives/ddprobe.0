Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E734AEC7
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 23:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712876963; cv=none; b=YiGKGZ0+glkzlJ83u+dRWG0XAAS9iCFTmve9oIF5OJX+bKRLls5JBbWANpT/P9N2ZCh7/AxMbr7YggnyxVXdXdD4aLmwgowksjH7BpFP6oPR13rzGekTmebmF5W1pdslaAQk2aYUUM8jBQa6XquWaHA4LdKYrBc9LiIeKnUJpOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712876963; c=relaxed/simple;
	bh=+AcTsLdEif9K4yIYmKxddPpZctADYSCvvp67tcqFjG0=;
	h=To:Subject:From:Message-Id:Date; b=lKcWa5Xy172o85QUmMRnsV1+D/ssbhG74IktKGjrO2U7BR3vAMYYH9MGmXX4tXNcaoF8lhsMsfaumDALvfnFrjNKENcnrpQhkWi8A6QPG0c1hRUgEKdbfAIHixuzt7H1MNMNLb3hBqyXQ3koVMC8fOpOs/qCOd2zdn7n9AM4qr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuHfFa+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuHfFa+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED1C4C072AA
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 23:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712876963;
	bh=+AcTsLdEif9K4yIYmKxddPpZctADYSCvvp67tcqFjG0=;
	h=To:Subject:From:Date:From;
	b=PuHfFa+UoAjjcUMOqn1V9573OduJvIiUsB+26UMrjaAFw/wYhjMO3bW3fPUHDzpJW
	 zTDaxx9Gv+j7A9lwgPp0SL5I8tpa093Ro92kzs430gQ5BxNz/Emx/lKYO8O2n+ySnQ
	 fe+ZZOP97u4qZC7AkbkwQaKx0s8wdwjWc9sQQVp0RKhi4SoVZK4jR06MX30KJwlFNH
	 K+6pQQmswQegV6kZtbHCggHwIZUVVUmuOCYW4OyKsHaQ/L3KxkE+CDhB62VKwdzDG6
	 0j/1+HZcBygOJDR3+tNdTWjWkmiD4vNmq0T9AvsgM1mrcqEW48VLSNKH6fSoSY3DIW
	 oQRO90wT1gkIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBC16C4345F
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 23:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171287696279.16242.14559964839408921179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4039b4e942a91f7689e30b034ba0e1351d69d031828cae167ed14473d253c6dd
Date: Thu, 11 Apr 2024 23:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712876962
