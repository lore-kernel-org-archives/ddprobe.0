Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56819257854
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786765234; cv=none; b=u0t6NtilzG9ux/49DHcjSa+mdAH4ISNuOYWy0ui486CUO9hPOfSYRt9KKBdgY1e+P4YVSZ44Gm7k9O4Rfw0uMtglHZjyoa2gkek/7C5gEX22tLu9ZfksW5gYjdqxyRynq1H7lhVFvCdxeLcEpp1DiCU8BWJOT1/hr6cuaeir7Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786765234; c=relaxed/simple;
	bh=BoMRAx5R52FgF/cT8kh8XjvQae9Q5RyN68/L4rIxlIc=;
	h=To:Subject:From:Message-Id:Date; b=THL0e0mNenHTNN1Xd6VXUw8tAujxOVO6o/xmnq3wIVpqxZfsOj9kP0B7umqxd3U6gy7p3K99OSRA1VJiWAeWsuvZn080oGRXzTAFCzH2Sgx121emAMlQGG5lsiTG8LtC9tMc3Kc6PvDifo12FP5h3DQz0jlBHtG/Dp6r0qJ7LIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYEfoQ4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYEfoQ4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42D2C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786765233;
	bh=BoMRAx5R52FgF/cT8kh8XjvQae9Q5RyN68/L4rIxlIc=;
	h=To:Subject:From:Date:From;
	b=qYEfoQ4V5c+SjvJIG3mjjEQyN2RY2S1FND03wYe7tDc3oZEyDs+rm3POVXpUO/Be8
	 3jbPsyI9H7Yn5HYhJhlUNxDTvEt3kpN87H4TUaeTSzBj3+nir6IZQat3Ukwwn1Dv36
	 pSJx1hEEOmbCQTODPnX1hQ00J8Qn9A7WY6u8qtExgDMYfIktGhMMbd9bJX0XHf2nnB
	 11hMiL9c/DVWGJyTj2SsLVXN49IPIS/ThUBbiywRAMhIwSoCnYKEDgCRyMacqG7ZS+
	 ciEKQcgi4z5/WAwvxpG7zcnFE09DC9jvLL1UiXmloNbUBT9yi9BgtMufnfnk3hlj1a
	 IftfI9cRWhJAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC470C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178676523368.29482.13531564076564004360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 821b6b9ce364b7a97fc5581e38f00e584a01a6b184106a0c06ec66e94ad4a627
Date: Sat, 15 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786765233
