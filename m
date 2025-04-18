Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CFA2686AA
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744967994; cv=none; b=uRV/9QooB5HK69V3lPVQ71g4wYahgVk2Sd3pXES0zpTwnGa+aHVjcHHybv6QtQjrZBc49r0ci5VAWbcTHfx6UQCeNmsbxAKZxsuWnMrkEgw+Q6Y6snUoi2ua0m4vRxJnjcYxhmQfmBPVNG0i8K+ozK+HWuJZ74HeLw2P6iQFrDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744967994; c=relaxed/simple;
	bh=4SXejiKZgfqp58wRCB6Rdqfop9Cy9oHsQTeSsET8Cto=;
	h=To:Subject:From:Message-Id:Date; b=OHCd2qLG3ZCk6TPLZsBL12CjrghGDp6baTOoAXXCaoo/vhettq3uzw77qdk8A6sk6WY8uDemPoB0xljO72Cm6XXhVXaVATE2SpIldGMHDjdqB1R3UZOboAXbirIHd3oI9FCpvBrptraN60M5cncwQoDGj2aBIuABNnYkBb318x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjHueMIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjHueMIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BDCC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744967993;
	bh=4SXejiKZgfqp58wRCB6Rdqfop9Cy9oHsQTeSsET8Cto=;
	h=To:Subject:From:Date:From;
	b=IjHueMIeFxqVvHPFX0ttk+SbOkDApUIInhtq70yq5UB3ZZARrWgzSz0pErzs+zoCC
	 GltWOkYgwiYyNCPKqZCCpEryhXt+WE4F/ZBfKsiVmSKVPzMzNujBDRYbfu8F/7UP3n
	 yoetUfQbJaRzFLsKkvds98AgvuzPcIUxx+/Xp9utcwqJq8/5xYqdivHykUMVYOCrqo
	 MrIogBIuyCVI6HUql8XtwuiWU9TmwVSovJdozS9pPht+AawN8K+0BFLMWNxvnxSR+I
	 pcAIKQAnLF5gTaQJKXCLRMEvru2+KYKk7QW+feJSHOplP65IZyq+v8Y2a8xU+eqLMV
	 dERcU8CTRjeiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B568C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174496799362.12894.16906396300484680542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b3af134dbead84077f65dd1f75419592b001ac934fc8fc5315cffbf450b2afc
Date: Fri, 18 Apr 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744967993
