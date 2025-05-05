Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A77928EC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746410994; cv=none; b=dLqBWla5MmJMpx9WD4W7fuTcvOkK1RAhXpRi8ZgkmNTNG6/MKjjlgAy2y+OX76f2WpEg+zJuT2vNwz9N0UyA2JNlJqkkj2+4nUicODtZEVwesbHYJidVzwX2+jwlHAFAPmoJdPpFUPZ/koayxK/QkJyahGfY9U/DtXolp+MJ1nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746410994; c=relaxed/simple;
	bh=WCYRNoe4qKniJkwzhdCHh1N343lTX5L0YeGhXpBnhnw=;
	h=To:Subject:From:Message-Id:Date; b=BMQA7grjRN1qCinUaZLcDGO8nuD6hog4UrTVbtgOwSPvHeIuIVxOhQGG1SRjSUBTKEOKZThF86yS7dCIED7+/wsMXQS3MIeFqwwEQPMcDHIYM7uBz7nxMcxRWa6U7gttsOBhZFCSbW4NaE5gxnCqyYcI37J0a3ogEFZWkQTHUwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sIh1jrJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sIh1jrJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD661C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746410993;
	bh=WCYRNoe4qKniJkwzhdCHh1N343lTX5L0YeGhXpBnhnw=;
	h=To:Subject:From:Date:From;
	b=sIh1jrJOzLfxDTHa2FB/V4WdFkMnZ9lxHcH5Ygr+WD1iWZiLDVn8WupaY2M4nFKjC
	 cr3VgapA3tlDwStPX8QlFwhtNAgehS6cYXyAv9oZobhnlxOLa90+Kghha1gkv2mXNb
	 awcr7g9EiCic63mTu3y4VkaN5y7hAsdI8WAy+oWQrOLO6z/FhOHKmj6WsoNtS9bRfy
	 4QnOIbg8dVeoI8jVRsIA3aZQgp88h7Osk+sWp2B2JrZC41IRYrCzQr/dES26pI8h38
	 hX/Uby0yg9wMDOFPNOIl5Fjq9hVaTDN7ZVHnSGt+jYj3ZbLGg2o7ObMIdgJUnrx6tj
	 xK9tC8KNCjzpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EC9C369DC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174641099358.23533.9786240958005973845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f893f2ee62ed9648809fe6c127c5ae04587201ea6114867b700857bc30562ea
Date: Mon, 05 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746410993
