Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418A91B85DC
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725774954; cv=none; b=Vq9zbC1ovDPWC0mUUd+WMsF59G9rXSwrtkE6SK9wPFl0mZQ5XzuzOmGezP9542eTdnu6HNUQqphbGi5Drd60arAF471m2bIGr/9EwvV0TmvyMw13IfScCPkdHTEVTzmh0z9JZTRa8DU0G4OquwaUthjW2NqF+5G5ZdaOr1BKzUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725774954; c=relaxed/simple;
	bh=kixUm9CRpcaeNzYh75qGjDycwyRydg4rLydGtAZCGFc=;
	h=To:Subject:From:Message-Id:Date; b=E06ZMPQ0qpyz8/h1F4EAbmeH6SyjQ6adOt06HXR6YvyNtTE/EMmf9mEqUzpaqwTM99XCZBbLc2zW/OeimZIBdq7L9BzC3jdg43knpvAe1m9hSH6KMSW5kwSl8ILw7u4tLDyxRJ6fFaXdYlaXov++5ro+ozVM4rYbuBSOUTki1dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPfTkvm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPfTkvm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24FEC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725774953;
	bh=kixUm9CRpcaeNzYh75qGjDycwyRydg4rLydGtAZCGFc=;
	h=To:Subject:From:Date:From;
	b=UPfTkvm8G7FnBefI4rjHkHByCYCr7LGYtq0CRAj9yGWBi2vPHYQ3uZ6E1TUaT7WCl
	 1B7cU5r3i4RUyFanpwk+VeAkchmIXj1PX0RcwSgpPCBpfu2ILQwl4C30UVvFQ6Rtlj
	 WLIPFw4S/JFjXN8hA82CqKNW2qV1muVcuaUMp4IIC9rJYoL357v92NA49/XXUtgU8y
	 EIbvilyz5fECFvdclCG/htdF2rGWrX6ktJBmfKIZJqPCVKljHS1lq+6tl6lM8SHAbF
	 3D47dFZatjTL0fcJv3/du6rE6XkGRz35czZkmpzfXsCmUcKDXS524FC2YKDsUo//7C
	 gDZKNTdC+qaCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997A4E6FE49
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172577495362.11166.6115538998137576812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1679b4b2933ea685f752f0dec63858ec72f5562be7ddf78894b087ce0d615a18
Date: Sun, 08 Sep 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725774953
