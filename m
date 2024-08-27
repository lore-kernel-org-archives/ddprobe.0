Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC8A4C92
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724735154; cv=none; b=dOJOQFOHYoZ2Tk0e+gUH4FwMvWLOiMkhW8iWNjBwViV8GWDCzw4plMdvcof/m+ktLZ4c7TKWLP7drlMU4SinIvkRQl7xLALMYdS1ekd8STdGZAKtnjWp4CgZmd5cPPeeHC7yiZ+YnUgF/WnfKa5KNjz73TtcDLW9F7LNou5fVkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724735154; c=relaxed/simple;
	bh=D8W1OcXftrpyE2ZMJwDCc5SDLAwjnFbvPlP6lM67U1M=;
	h=To:Subject:From:Message-Id:Date; b=C1u5eKREekDbhkX41LWymiAs5D359vDNyhW55uGosbJTepxm/eeTICbvntxzzZYS/IjOZ6N3JiYazg0MHA20Lyj6SmicipxYh/w6M1ZHUI72AsJ4nVsPXfw5/gJ4Yl84tZl74WoghD5vGdnkfPJbRM7SK0hMjegglxEZuIX/GYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O97XID7I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O97XID7I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD975C581A9
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724735153;
	bh=D8W1OcXftrpyE2ZMJwDCc5SDLAwjnFbvPlP6lM67U1M=;
	h=To:Subject:From:Date:From;
	b=O97XID7IH2CIblblBG1wdo1zXHBT/aDfq5u79wRnvkUdHT8SsHzVgbCUS55m52T3s
	 JV85Z90xYixEhsAhAgYoXVt4qRZZtyzBT+wVaBPT1eKHujGuewWuyaihq3Ttwt+KfI
	 NltqvS+ddr95rGrwDTnXnZL7mnhUVQchCfn5h7DuFbOb008ocRYbzKDMSqH93oQebR
	 Mboe5cFKwNCmkcTmKbJB1MAQ0V3RkBbEyACf6RxNSY1kVAjDJgnXeHkAdba2bJ+a1s
	 PkjMFHdidBniy5w2VKhbw3kwdx0dP9aSm37Bzgaggn5t3oCbMmplcGGoxAniH5NN1i
	 9hQie/julXwCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C334C52D6F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172473515360.20052.1151871588685963339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84f4799a414ea2c5b91faf32f69980d0aee7a5626f984cfdb974fefa43f139db
Date: Tue, 27 Aug 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724735153
