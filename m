Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F172E659
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746728395; cv=none; b=sWXcD3UBlKoRA/1DVE0OmHeV3H/JKHnV2tzckcGoZd9kmWqo6WosapRoTpKahVoOVQqPgzDLQzCqvOSCUF1YnM86QSpGx62nmRGI09gB6XcbBoMN4X1qpS5Y9dKKBbR7VlEBuTJSc7TnafO86OASHnVcAF7rM7iAC2pIvq3bVfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746728395; c=relaxed/simple;
	bh=aagiNsSQUqkJSSgcgrHuJRfgmYH03aGdxJH7FF1hEL8=;
	h=To:Subject:From:Message-Id:Date; b=FApp76cta3Xlu/yyjHYQ9aJOqzHER4GYqCMWjZly0wummdJlR0yW9cslxXnKiFZOsdfT2YSB7KrH+o5FqkYL8De80AX1ByRhHJAfb3D25bYF+ampSL3I3/vQuT6JNBrcsPfY4Jb8wgmT8dLbphNPAL8Tv2jnQGMN62ZUTAlIF1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GtuCjRdA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtuCjRdA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7500C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746728393;
	bh=aagiNsSQUqkJSSgcgrHuJRfgmYH03aGdxJH7FF1hEL8=;
	h=To:Subject:From:Date:From;
	b=GtuCjRdAOC3iwWiYQuupR/WfTYX2aAaIMxCM1+Kfzd2fSVxKwscDXmHibSJvUx0OY
	 8VSDR7v2G/UqU691J1zR7BQD7V4uRegUWnNYmKLxbXWYOkePsHzAy0wfAeFFsieyOZ
	 ijnQidi7wbDKbda+mGvpXE4PPQuI6a9VGBkeX3NdJqWsFuYDummZ0cWFpomm+ITWd/
	 ojE5ZpFXr6uwhUpu27x796DBDazKQBEsnNQ7HzRwtFLqlUDPZ2Ida4O07k8P0fy8/i
	 tpw9x5qzxpGiW4BeMQu7IngVWG8J7ea5RGlKoh/yhzLtrjSHL2Tnh7JGGF0lAw09TQ
	 GCYfnsCGyNmyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909DCC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174672839358.5006.13227778771268136601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c487bc8a288befbfb0c05ca0231803fd8fb8eb9a7362dd1df6a2368f22babe77
Date: Thu, 08 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746728393
