Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9F124A058
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743683394; cv=none; b=oMHM5zQJOgzEd+kxisScPUXHJYYqDmJWRPVZcv/G4xTzEPV4HBsgFtoEqbpYYWzmZiX7EKDWV27s4w2xAqa9ckc+x6Zu9sm2MmZhKYIGMxgAdto7t/sBFF4jbtZvZZF64Kqnt3qy2qX2Jn2d24vBEfNwy8cLhlrZypSpEiMy7iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743683394; c=relaxed/simple;
	bh=ZmoElXoDoq3aPft8xQ9kKOL1IkIWB1n5RAE1IEbsjrk=;
	h=To:Subject:From:Message-Id:Date; b=Bjk5tO/3z8nh/syquUpcmtq18ynof3Z64VGIbQd7g/l2jmNnRxMv5COFTZiPKrJHhUgBBLoClLsfUKYobOYK9UeUg6XU5eFbEf4yEXn5yyx36A9czwETxERGZeY1LHdImV4c0E0h9L0Jt4rAtjy3bhIoEjEwhmF0mqxxu9CgeyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOymZNhN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOymZNhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCB2C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743683393;
	bh=ZmoElXoDoq3aPft8xQ9kKOL1IkIWB1n5RAE1IEbsjrk=;
	h=To:Subject:From:Date:From;
	b=dOymZNhNsgc3tlVSEmUda5GgIKqa09JH2PctWeZFKEwOWLoI3h+IMuJFeWWXEVY20
	 iBXDubJc4xC8vAIAi/LoD3AvKLROKCnnP2nncAXDe4Zn1UU1bIQja7bf2YfEC1XnX+
	 Q7Wt9hNAX26DTgs8hR+7uMlLPENAGPjGhmaRvUse80PW+SIZaegZzcUagGWkrZ2fEc
	 l0qNPwLtjsglHCueMswjnS11eblwc3/C/S7yB1bv9daizmWF3cov/wkT7ZPFupQ47U
	 6yDtN6Q7C2TbDptvUn6yUHT0S7ifRLo2Q0490pcMpQfwXovOyrK3kZRsXg7kyf0obS
	 gVHWzU+xwWdlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9666AC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174368339359.18210.3249984437771143343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0cda22565d32f800ad4542b45cdafefe6190251f0464bd1d3fe0b9245761222
Date: Thu, 03 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743683393
