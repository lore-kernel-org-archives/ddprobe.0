Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A6F13C9C4
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734059154; cv=none; b=Bj/U72O/Ik4ix01FeoFiLFGyiCPxLSk+MhUv/VxnJ+FV8j5XtmMi1dwn/9wVusOOCOqAh1y/lKF+LJzmXPcYYQbOM9+iFaqCCZ6yT8onbP6axU+X5B5OQ4zq4AiGJAOrlVxxqk2HoDCC9f84zY4A53TfeASL2eHda9y8wOkhjnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734059154; c=relaxed/simple;
	bh=r3KYC3prY/wSe9UiWxSTaNP5AJuh8YkVEiE3e+vWXEM=;
	h=To:Subject:From:Message-Id:Date; b=pHuBz9mwT9DvtS/hXRYIr2Z60txUCagugNBAXYKObqzUuR3Z4G0FOj6i09pQPGQKLxBPKgoUi0hsRsxc5uEwNy9zsnCj6me7yKoz8qng1JCn2OgkpgGnFjgOtVlnAk2F/atsk4fggrNwGGxzEobXn2cA523v9PUFMKNORqs4pos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EW41W+Ef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EW41W+Ef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDFA3C4CED4
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734059153;
	bh=r3KYC3prY/wSe9UiWxSTaNP5AJuh8YkVEiE3e+vWXEM=;
	h=To:Subject:From:Date:From;
	b=EW41W+EfK+JMuV+mk9AZvXuGoeZHv4Avzv4RRYWrTOI6Cc1JU+nlb7iUaIy8OIZM1
	 FS/Mu4j3DEdjpef8wq2vVCbpjwdzkC0l05ekic5VFOrMdwOetydztH9hWcKZkY2OII
	 vct2RddGB2Q5CoAtTDKDGxWmGP73+oLb4bVGGbAAUpjtw4iJl7ZXQQM95WnrXtCtPg
	 72tu6vxyKENzeTV7kweQueHTyRLWvGUWj/XPyfKm/ZuVZjn+0qTUWKU3scj6cdnz0k
	 8l0BmCdkUldArZ79TcWgV1eteWjuOZfV323r7Nv9YtFQie7mAwBMkK++cRtLHGMzSj
	 KyBdRPuQqPMBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A3FE77180
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173405915366.1673.4510438848023199454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea3ee3d6a429c832d7a980b841970d3503415ce6983ac949684dc976f9e19a6
Date: Fri, 13 Dec 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734059153
