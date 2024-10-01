Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED3811B6535
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727756754; cv=none; b=s/ULBgrBnhKNF3GRgMQVBOPFji6+IwsjdqTTTfAS7nOTDk+vqiPfyWXTvZiH+JNGULLQrdPoaXMzXagwkYrZqdA3fwDEm3T0jgGifbpjoFe66iYsypc9OrmdfXgzLNSDbtJKhZWtzqdD0YDNmw8G8i2EwgZwnwgfw0uk0Neg7tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727756754; c=relaxed/simple;
	bh=I9wPnlr8LwF3LsmF0+zvekGqt7ZeYwUyLKO1dCi2tNw=;
	h=To:Subject:From:Message-Id:Date; b=JweDEoiPbSBQzFnJNhudgdtAp9CCZd9nUy3B+u3UNA9if5lTDILzrxL8SQ6SrN42Znk377y9RSNIxYPD/ofTjYDpDrMSO2DELQ3OZChn3J1n5urLCHGrmeVF5RHFRGDSCbIvsRnPwQHG8gfGxoy2Kb8C6XsKJjnq4Z7m25D15Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtYdDQ6V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtYdDQ6V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB1CC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727756753;
	bh=I9wPnlr8LwF3LsmF0+zvekGqt7ZeYwUyLKO1dCi2tNw=;
	h=To:Subject:From:Date:From;
	b=BtYdDQ6V4Q8bs9Ivxg+wqaWG0pLFXpvgG6gP3/UhjraU8Qu7eOfBbxd9Ewcpds5fw
	 vvzMNC6AOD3FXxbGTQuezcthhxtWbdiO2372cnjVwzqHAJnMC4wkv7lnU5MBx2TEbA
	 6McM/hJCbREHi85CkqgkYQZZ7DwYLaUzscilF5lUKOhlQ6qrwA2hfJq4SZVsOIrKVn
	 5LRxheyh68UECipQPM4xRkMYzVNtoIOApOem+AStoEA52sVicP74KPT1uD18gcR81t
	 GqP+qmaZ/caDCwWv99jj6r0g1Ijo+dhcDMyRzK5Q+plG6VASMhAUp4cWeItMpSgmQF
	 0wSbFZjGsj2xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AED4CEB2EE
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172775675362.606.9497406330521078750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a21e72dd2c0d3c72f418b94140ed052e23305bf1898fec92469e8b9c5efcf596
Date: Tue, 01 Oct 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727756753
