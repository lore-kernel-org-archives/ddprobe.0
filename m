Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69DA228F0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 11:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720265723; cv=none; b=HfOTMsbfjO6vGVlFN+hyfloWVjmEuG+XYllvokRg+M+VqG25+YBDKefkAbTfF8DURgXkDyAaveRPOUTuJ+Nf+7a9VUmIlfOZ9vBTr6lq6jWjqejUulJfm5he2iQLq8x2J5l5mAWtOJ95NqJW2vBtjDfFOazlL+l2uA0x80JEpcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720265723; c=relaxed/simple;
	bh=SyERVT4kOQq8oJuXkegR+CINRNGLFxlAZQyLebAfS3o=;
	h=To:Subject:From:Message-Id:Date; b=bO7WIKYZjrSdcgeruCJ5zmOavo0c8dXIh7vi1YoqXJb4Af7GijZgDQeB1eroMcmAVq89Mx2jwWYhFpNfXu59MrCFfqba36iY+ExP9XsSiYqMaIY7T6gdf1uX9ePzPdFpTDXINRUT8wEWmrSOPHWlkCLrc9pzl+2JjuYxnW6wDiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDCo5aKq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDCo5aKq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4206C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 11:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720265722;
	bh=SyERVT4kOQq8oJuXkegR+CINRNGLFxlAZQyLebAfS3o=;
	h=To:Subject:From:Date:From;
	b=HDCo5aKqLc0/qUcQTOVcLVG6AVLCPEzg8OOixXgdc1nzQvFkkpVNWE1914e7IWkx8
	 YQ8lyyAPPlarcYRxKmilDL9Z9G8dGlxeXCXwwIUOEnmvRB1VRVOaoeGu/gMPdVSzWF
	 Kzi/FfpNqqbVp8j5tLYnn721UXjbPRDNM2Uh6wgPuur7m5IWXBK4kKtidPABaWTEu6
	 +fj18ki6ZvRx8r8l+TcsBoSL11aIVW4qG2PJhzrbJqJb6lZ6uShwRKQ2VzdE8f6eG6
	 YthBD7kBB7feq049RP1Uxv60fIXghRjDsPZLJx2GhsnpPj+Z37LQIKpCHJJ5zmqiHf
	 O9dbRScaras6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1771C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 11:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172026572277.19597.12827571238047593778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e145158d969802ebc01006d0b630b81ab32f541ad3f8b55d1ccee533c7786d1
Date: Sat, 06 Jul 2024 11:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720265722
