Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488B413DDAA
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 02:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783306114; cv=none; b=VqWm2ZxSO7CDQLjN1KUndCzXs9sRXWeAJst58EsvsauobKtGxhkPiKNqpSSEzulrqEAqFZkFprzqj8IOVSg7TK63jManjjMQ+sO1BDCc5TDfQRtRtNofF6/4WQVz5DZHCLerFyAS9WFxJi0UHwdYFwc7T8PcCWXNy1ofbj/Knkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783306114; c=relaxed/simple;
	bh=TON27G9GZPYX6HHoGrnSrhfeMdPI437Vjlb6oVaWUTI=;
	h=To:Subject:From:Message-Id:Date; b=p1ABdvcsdPEDS9/CAN30ph7RgFqrvs+8lqpxJBOooKs3zTpBnksGnTlqEJeqG9aWrBnDPap07KHOg1JmcVLaSy0asv6yNjY0ns/mcfnwKSmX/JvAdXPXa7djWxSaPZhc1JaDOFmcF+2ifAho/lAgpzGrGtrn5F0nGFXbN6I90VI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=llne3De4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="llne3De4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5B9C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783306113;
	bh=TON27G9GZPYX6HHoGrnSrhfeMdPI437Vjlb6oVaWUTI=;
	h=To:Subject:From:Date:From;
	b=llne3De4xAhh4QaGwRzxhytttjBsi0TuP3LfsXVw924XzeQPo17WB8/UWNfEFay3U
	 A1OKVVkwo4+XdP1Ii0rSbzUw9aR68dRrtv4dqX45V96mRx/X0hVU3Q6/KLDOFqowyB
	 o2rzVG6jaOTIRUL7RMLvDQVRGNrt6FBo5Z6Z1hXKcsHqVwubM55VLvdL4t7EEfNXsw
	 updRBgMqSiXMs9syNr/wznE5IDSg66mWAqkwD/FxSbPQvAyMH9KvEqT3vhfuqFzp0Y
	 8T1sjw64vpPDGgLvAcHdKn+ZBkzgQok5Lr5wxhF8B9Q25pLkjNoPlWlsXz2AX6gWrP
	 04CiszO3eDzdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8454C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178330611368.26405.11143122365276155788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cd74264a498144f21b61213aae7355a8b67bdd4ceaac0abe4c0025b74f3b439
Date: Mon, 06 Jul 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783306113
