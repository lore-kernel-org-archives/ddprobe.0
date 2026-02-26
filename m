Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D989453497
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772137494; cv=none; b=NnqBGxufcr4fSRrgBj7yw12HLx1hsUZsZeUi/CH70JSwgW+ZKa2Dqq4d12F4tw3e96A6OmomL06G5VetwbgFCjTzzQ8xid9hwMhXHIBDQCSaqHBP5jzFYLiOWnk0erVCWXqCWJB/I4EQxSUvRdC8d/xV1JgxN4naf5psQ/pyBso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772137494; c=relaxed/simple;
	bh=475q/tOloPI+ECG+XOZAWR5P2oMs0do+N9Pubu/P6x0=;
	h=To:Subject:From:Message-Id:Date; b=snpSo2gJjTVFZQVcFKb6+a15l2oWmHBR7BlA0jtVNx3dlPgNaGan+trgNGFIPDm62KYsvlb3vtf+zv1D6OpE+XNOt2fAVeNS7o+wCUiyLF6O8PJco7oIw3wP0LOddwWpOr+7oQyYhRxe7XUGpe2pci6a22juy0UsrBrps3Hzjpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFJpms6E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFJpms6E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE63C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772137493;
	bh=475q/tOloPI+ECG+XOZAWR5P2oMs0do+N9Pubu/P6x0=;
	h=To:Subject:From:Date:From;
	b=mFJpms6E2z+ArBT27yHXwMUImtZKwwI3ELySwPfUVuJofXGoeBpe/vlYI7ZuT0n1b
	 qkqk1YsEDQrON3nbOf1pAyJqVjLZlII14U2E1veQ4SwAcnF8i/2lal4aU6sq/wOiKe
	 6siW4lfg0qS61YSs6Ridh3/jiuESrma4B0RmRso48MUxWRO6eLoHyi0vXYW/2UyfQd
	 vAQKrA2aXUWMq4nPndESuFfhvGylT0z8o7MaCmjrMYOiIs1Uca7y5Ay4uU4C2IqsnC
	 K3Kvu/wMijGoLlfF0YufQeL6C08w4JA95jTwEK36cDQqXv1OWcbODCPvpPH6LG//Je
	 l2aOt3GrP3WOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D89FD9E0E
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177213749360.30923.11587890562182280239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca25f2b4db53c756d37c2e42631149f154e0ed6287c6ee2e225e6843a57f8c47
Date: Thu, 26 Feb 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772137493
