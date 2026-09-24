Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298B14746B9
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790246435; cv=none; b=an3WpLoABtIMiNI6KjOzuUGs4gyJxaelT6P8Mst3rFwx88gg5JLaVr8ABtjXItoGdUukzhl5tj4BUK21PewxCAWbcgGzEEQfeqP2qNiwYvDboiwptgDcC8L9GCK2SJu1X7OfPpP3hNRrXyK7APD0A4LQ3jGmYjpJ+RyECFBUrKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790246435; c=relaxed/simple;
	bh=xshwFKRmOcxOSdNP94ly6JDciT35a+oVQOysvHpPuN4=;
	h=To:Subject:From:Message-Id:Date; b=AhY1a/BzUWkfvHAiWz0mARJkql9/8VipLfSzPP/ffoKYKsmUjXANn+xZ4DccQtjX/THmkSvooww+Lc6S3rnmVWU80cfndebs5deull8q375TJ+cVPISQYa0Pc+FoN9EEhGiN9vV+lmr9Nb3I3GLkuBYdA+5F0PVVveHux7HLay0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLmXhAQA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLmXhAQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA838C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790246433;
	bh=xshwFKRmOcxOSdNP94ly6JDciT35a+oVQOysvHpPuN4=;
	h=To:Subject:From:Date:From;
	b=uLmXhAQAppefZbZDOE8b26lX+vnlqem1WJ0als0387vTR1Ertvqj4WS6YAy7c4Gq2
	 gVvSyk+AFHmBoCyDtdrUPbQ81MJFlEJM2RBOfi0ir3g1DNS2rcLV5BBWsFDHEANLEs
	 trg07Q0ky4xXpfx1lr+llCD9VHC54wS68Or+HVUmGRxgzmz6O8AUcEPVW5yMa/4Yry
	 xYBYryHCarxWRTMMX7zaEf9+x87I6YEaSaH9OFpNJni7GGwZ0odgeYQqJZFdaYPu56
	 cqN9SnOsjN55al3UCTEiFyhZTQVL2xJSWQjcEef9kgJ8Z29wy7jH/QrfRC4u130S8f
	 Mx5RQSdg9g+Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D64C98311
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179024643373.25152.12775487427469091346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65649a542fc8a8f35edfae4e7e127797566bbd28a452bfdcd527083288316629
Date: Thu, 24 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790246433
