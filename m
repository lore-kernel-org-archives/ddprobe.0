Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5C82C21F4
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786229434; cv=none; b=JaJpHUxtf9YNNyZVC39FNRbZ0+hX54LymXKLpQblMbtWeaWrGNt99yfqPfpzJGXXPwC4KorjRk/HutGD3KClx00erH18taM41k56YsJ7j3jhNRHYzWpP24vfXW0IQwqIUJeTXGn+U0udJix5Z7dRcxkJ0RjVLAUWtYOiIdrn0qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786229434; c=relaxed/simple;
	bh=nUjeAZGhjjhTvyc88i0DG/XoufgMLe9k5CDVebN0veg=;
	h=To:Subject:From:Message-Id:Date; b=NvcVSvTRFogWuChd0X9GfDJA1epe1U9IWXiAW4fZ0CorYHbMLeW88DO1EyAmeaUvL7E+adwRNiGEBj44vAD42CD2yxaNySH9ONVzN+b1kCjrdhOI3c/jSn4NdTuLzisC72KAnXA8AhsD5nfKEIVVP26Se3rbNFNNbxvjlBjbtZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7t6fSK5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7t6fSK5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BB7C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786229433;
	bh=nUjeAZGhjjhTvyc88i0DG/XoufgMLe9k5CDVebN0veg=;
	h=To:Subject:From:Date:From;
	b=M7t6fSK5ugkXhscq/GtbCQOi/VDkxprTm5zfhG4IbNaFsAMcfysHjotLMvsBDgNho
	 5ZGeFQZuEcacPLczXotMjNTng/vJWe/x8Ib1d4xtBiXz2Ch4CD3SlRZPBh8mkQKmjO
	 /WUwBPTURDLGfTjb3QF1iDjzT8LXrSWtvfQQj28NQ8XnLRd0VaEGXDul0qo+ed4BXX
	 LAX+EDYVmKF8vESKPRcKbw8pPMJ4wHTkq9iZ5igNaisnYEpQaYtORadkGsoudUrL6+
	 caCWLY1EV1otVKu+HaAEnKZ1lFCAXUe/Hnsc4/IZW0x4Js9+b94iHFr6yD/Mf+cijG
	 /euviw6vijyxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2410C5AD48
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178622943372.1807.1975883300090497413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1ccf5aaf76bbceb877e33bf13619ee06243a96dc801924487e9ecd9a2450f45
Date: Sat, 08 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786229433
