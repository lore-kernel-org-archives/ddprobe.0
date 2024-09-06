Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181071FDD
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725588354; cv=none; b=Sxk3qrZTJqdfRmkgBJZs3wWmpICclHHksrGIJryqBH24Yzmy7nbJpTuj8yZ/GW4qG3KZikBHTnqYy/ScHhdjHNUtTzicsJMuJNWpxLcRIk1c85mRgTRbPv9qSRDhnKV3K/ts7665/KnRgrB5P2oBrg5JGB58gKBw4R8d7M560Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725588354; c=relaxed/simple;
	bh=5+coh25zwQ6ayq+78zAozvMoNj9S5SG3YYivjLLuDSs=;
	h=To:Subject:From:Message-Id:Date; b=DBdTlIh2VaGaB/OsvaEB4eFjs6SooT3agCU/DgqFlSeQ/+b+PO8mZzzumdWtXlkWdWn1lY3HbN5pm80BTcK90y6YsWCIheQ0h9D26zavqHsnU8EV5K5bijS0cqKX4IityyN1h7+4RijRri39MLBYv6BKRTJLwk5KNr1Kf/82Y4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVmZRNIl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVmZRNIl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A399AC4CEC3
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725588353;
	bh=5+coh25zwQ6ayq+78zAozvMoNj9S5SG3YYivjLLuDSs=;
	h=To:Subject:From:Date:From;
	b=DVmZRNIlZ7ZxLnP7qwxPKnZvhvwHduMC3MfxToH2tufzyVEcfLVLBn/x+XZ/cxCnj
	 9JuYtOyMUpTDPUp06XwwCV2TYVc9gYZ7t8cQV+gK9OcItbb7NuQ+hm9AAtwq9u6MRT
	 u4vkpIMGxv95/+yXudIrgBqPFHQN76aU9Wdq3ssJTG5H56sIWxPaDxFfb82SiUds5s
	 D223ZLu1dHeh21dkY3ereur45kQy9FcVlKvgKtN/DNZjRcMWApd7GuGgjSLdr4J9Pa
	 Tc9RAJI1vxUYcjMrn+CnR2BPf5BX+QSh+15wYDzktMVf7p6MaOC2RNglGsk2sKECXe
	 EupzAsBf4oDTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ACCCE7AA5
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172558835358.16237.12735920985917229076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e2dc84a8c90b3b0ee55aab6bdac0deaac221bcce0e40f34efd0d8f440f6dac
Date: Fri, 06 Sep 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725588353
