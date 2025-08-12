Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CE3285C84
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755006594; cv=none; b=XvK2/ElkBb+zBO2wJAUF6KTuhTy0HagyvsZXJz5xwR+gRL7tojR0HMjs5XhDF3dmbJBiAR8yKsmXu6U3K+UHpNVkjV0BzXl1267Z6ngT4ymlu8iuojeC8M6ArxCJfoLwHKZ8zGWgruH3ZUpyyB1HrKNZfa9hr24Zc42d450Dkdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755006594; c=relaxed/simple;
	bh=bl3CSrPfjeTo0rAI3lkcdibYpd4dpIvZTV9j0G1MlkA=;
	h=To:Subject:From:Message-Id:Date; b=PhYZ8z4yckrZ9lei6j3XAneG5poPjFO7l7mf1WzFIEghlloZckqQ0r6/QPsdHxwz+GK+6bI4PKuM8LtSO/P6AQOj8uDv8K/fWybUXjWC3P1X16+ZDfT+luNZyE9hDJq0YPgkiVI8+9iC0eKKGYH2zimfXvBiB4mV3rn6g6syVMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/Ow5naF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/Ow5naF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB976C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755006593;
	bh=bl3CSrPfjeTo0rAI3lkcdibYpd4dpIvZTV9j0G1MlkA=;
	h=To:Subject:From:Date:From;
	b=N/Ow5naFAOqAAh0sTwy2aqy1rRQceyySUtudd680Ab7yWU+BsKG8Fpm7xuk0TPivW
	 IcxjYzp7bI/3KipZ3ZGhLRP9uS0cybb1o1T2GKf1bCMjxnidKQHS3dbJSa3Pmshrr7
	 doTPZsjWNcRpIAqeBAtVQ8PGqZ5fMvnsvucvaNH5GFc16VoXBH3ReG3dvOepZU/DPd
	 eY1DeT0bCdEMyp6iUG2W97xT36KpTdpN040ybSBUYUkOo8ejaIzB5cW6SR97AayknU
	 35rzbOm8tfgXV4k2nnCC2hocRSWYSi3XmWAEcV7h6Q4/wHspSwebikUW/ScjSBcf2f
	 hUrxnjkwcjXKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97373C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175500659358.17421.16727176427017781410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 553e4a6baad8696c8fb552a3b7f4d58fe700eef31fc092f4a01e268a8dd0acd4
Date: Tue, 12 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755006593
