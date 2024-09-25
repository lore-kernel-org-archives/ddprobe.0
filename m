Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175001537B9
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727255754; cv=none; b=vAbsfm/KLNt/khJsqpzwq2F75urjBx/ZWMaXX9AHvGrzaajNhq30ZIFkIDH4PJpe77UyrETWDkdpkqRHFoqLvahs12noai4Oj3u3objRs29xqeIkbN2qIhUJnrgtTX5FuJtXKKnm76D/ot6iwzRqSBajlpOX/dN1vxMF6+8uwIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727255754; c=relaxed/simple;
	bh=+WvZAIxSpZYsSLSc+y8obNjjJv/tel3jeWzzNF2NCAo=;
	h=To:Subject:From:Message-Id:Date; b=ByTj7kQBzpEj095UjXyDavoQJMuozIFMezlyPTECyjTQnGMvllHZ5zU51LiQTWKsNCJwdlh6/5/XAgvZbeV9lR7VkT110+LKed0+l6L5jZzTMNhxmZWRqfiSEuhefW3SIiA+8KQJ7z5i++kuhPWgJ5Twex7jcc0nIVjYOWlHYic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvC1zSC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvC1zSC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB555C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727255753;
	bh=+WvZAIxSpZYsSLSc+y8obNjjJv/tel3jeWzzNF2NCAo=;
	h=To:Subject:From:Date:From;
	b=IvC1zSC/PxD20lG1uOX37Sp5Xbvc+LzrvgdWlXtF5/qVppBFD7WHXHfcsactQw4d3
	 7cPzx0zyqpqnuHG3/EhKDvhl76bUBWbueLsx/CCN6rcWJrb7vGDtcZlGOKKCH5rdr+
	 Um3MXpsSxlna8I70p1bqoYBlTt418oMSxQnT28Tj36Mk3Nhle8q5BdER1Ftj6gsHv8
	 z4kHJGzd/YATmxJbj64TsKzfKNvpPmanmdQU6NwoECWYdAun/KP0EQv4VQ1HFtuyMM
	 opGIWJ02o2rBaf/zplv/dfiib866vbtQbslk5M0PXTrxqqBszr2U7zlha5v1s7v7k5
	 /v2Zc7Jlc7QXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997C0C369B1
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172725575361.22505.5095715746821178565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f2ada0da2d315909bf1e5a810ebb09cec6f257c02e14f13c4ddf77cce59fe2b
Date: Wed, 25 Sep 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727255753
