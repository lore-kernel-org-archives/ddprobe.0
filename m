Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68910274FE3
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785868234; cv=none; b=BU4WxUBBVrUs5wCCiGpIZ2AOPFTa1e7ad5gJFpgja8nI+ORko9fMFJ5w1dUoKZQmYFWJzC5aTiKnGD6blK4U47iRyPemni2F9VxFo1mdd/XyWyhsAV3VWsr+MhCmmVAsZw1uy0NFaof5sq/jhkpJb57XyVufv9ecgX8feFjYeMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785868234; c=relaxed/simple;
	bh=T17qatGBDMscSLzGji7j8NnHVWmkng13wtZEa460QJs=;
	h=To:Subject:From:Message-Id:Date; b=UyTAVqlU8EfoI53H2mogPe3Rpq4iN0xSb/dhDbbMGNFKIWgAffiA6PnsCefuzwv4DNmBliCJ02dkakMDRfd1AzD993Z2kUFE/nN6PzB+3x5lQzwRhS0J64vr2cqWxnrGT9CvZ+QfVaml6It6cHijV0KpT6eyN/P67UdkOKdunOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nlk7K4gS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nlk7K4gS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E39A6C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785868233;
	bh=T17qatGBDMscSLzGji7j8NnHVWmkng13wtZEa460QJs=;
	h=To:Subject:From:Date:From;
	b=Nlk7K4gSS8AhKNJ6EnRnKFuxSCYmmvD8QWXpvCkHzYeH5APnXeHt9enSFas2UVv6K
	 Oc3uS5dmbTtapMeL9G9rgtZagAergS4EKitLHViQjrQrrhTDSZZsUUmYQc13AOui6m
	 q9ZTWypu1q8POXR4bRBsE275w+/XMD9tkz1UEUGSgq5bN1PCJ+13ejgAYDejFm+ft9
	 2opeNfkgbWXBarnS1Z8Nsu2RmUN43ct36vt6Dkx3c5myqLwdsw6uDP7HaXbqyB0U82
	 hJ4TWyHv2dT1xG6PuUI+y9C3A+CczScwROI+snVf3qoq4yxXtLgKHUxHU5DJEzvwaQ
	 JGihKXHQyQOzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC67EC55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178586823374.2023.11227417379417045667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e878743bca738be24c009ecd1dc182d81b830d5e302ba3f90d5494253d06f360
Date: Tue, 04 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785868233
