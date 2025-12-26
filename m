Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A947081E
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766739234; cv=none; b=BUN0y79dAM6fdAHW0Sf1EFBviQgS3SwervtWGaqoqcw9bPwQ8NaAZcHdS7nK/4DyG9lpbQLQu1jY9ta2fTz6Y//xX8UiSN9zRMRbqFQ8oowFVuwErWtWqF0naDR+UKyhwzMw3hF5LWg9Y+hxQgX6GkN9cnjOA9VG9d26FVryqUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766739234; c=relaxed/simple;
	bh=u/SUam27JC+G0gKxBXaHwhrjcvayhY3ddc0aAMLOneY=;
	h=To:Subject:From:Message-Id:Date; b=bYcNcXSA4Cj3+H0rXbvbStbnlJMiNg6YLhSvEUwtop71sQw/3z/npL2Nll0Zrzlk5aql28iAzrYAMOyfSJSg+2Ry5JxgBOc6BrwgiFGx7TMFUN7Ggk0AGwVNc5eRccJkENTIuOEo+SU0uCTZ/2e9J8OKJlYoIuzqr7RD6WuHuAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVDDgRaG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVDDgRaG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3F8C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766739233;
	bh=u/SUam27JC+G0gKxBXaHwhrjcvayhY3ddc0aAMLOneY=;
	h=To:Subject:From:Date:From;
	b=OVDDgRaGVJHA4GyQi4GnQAqHfixNqeAbSDX3DQH+u3unWq3Y0IB5cRY7ypVUIkNgK
	 0hkR4pyPE5X4vzToUCK/+iOBN2pPW/r37z4J06kMqAw4YC6XyFbr8Yy8aKgMbc/p76
	 HjJWjYGOrtS4epZBXoR7/u+mra+4nDh6JPEzX6IbWqq8AzsH1wMbDTQL7Ik8yro3uA
	 ZWwDxtnY0zVpGR3O3Zufv4252FeVsfCThxxL1ONT8hD16z1rbNRwe09n1sniNmryai
	 gxLyNg7Biwv2oZYQU6UP4zdhLrzWekP7x3Qnurh0GYmJHPR/Jx1UoqdNI9G8+Zv5NF
	 jVUh1prcaNENQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972C6E8FDA0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176673923358.3387.1711726336145362493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 577d3649c0f5e1d080ee54863381e6167f91d0d54f8780cd5d05bfbd1fdd552d
Date: Fri, 26 Dec 2025 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766739233
