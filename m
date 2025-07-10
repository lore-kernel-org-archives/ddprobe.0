Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D6D2236F4
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752116994; cv=none; b=LJ65DYSrpkmL1Q4HMKUMQsT8c02Ys9H3JFhi2yON9/kf3kIyTCNNSSttvONO04xhgKkNOkgczkh7oSAy/ZGRhhDhOZy4wFes0YseNbkQL5erKZAU+SN1TtuI8rL5F0CDElSx5rPGOMmg+zI+TMOuVYM//UUkhuuSCfhcsYijSlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752116994; c=relaxed/simple;
	bh=neMfhnf9S38ZAtNLLKkMwimApEFz+1LizoeBoZsUAh8=;
	h=To:Subject:From:Message-Id:Date; b=h8Q4Kxe6Yjv3j9HJwOhTEHDrXyCMNKBQzAYDxW9PcLFRLf9QjOmGaghz3uuwpf2djUVmpp7HbAgzAuk/vkmj8jyEtVQPnk6XDX3uEnMl8fov+ykKWXMsaNmSbB6ZZ4G9DG9ddl0rZjPkJha8gPqXQfR1vW/EBcut9goLdDdpiwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJlTTV+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJlTTV+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BE0C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752116993;
	bh=neMfhnf9S38ZAtNLLKkMwimApEFz+1LizoeBoZsUAh8=;
	h=To:Subject:From:Date:From;
	b=EJlTTV+iOe/Z8d6OEn1g/gwTQBpeOEIG4tFjKevxFj0F12zOb0jGHkEp5xrB7GdyW
	 cwnAeG4s9Q6mPpUREetg7Wm5+aC249qiHcnkHHs0Q3spMECy+iKOAsdNXx4is/amfz
	 IZyttU3Z/F/cF0Fgqa7okYBwrsL92NYvM1d/GccOucIs08MGTGoy5Fr2RMtg0qvcN4
	 HoKhMewFwlKOBajhkCRcQj/CMx8fpby5eOWlAWelkE5wq889jL/z5cWBciuBkU5c+a
	 sCljjqKY9pnEQF5XU+nzZAdvQ5IddCdY5Xpgn/fvWuffmNUBXqEL3ib7JZkDkkHSlS
	 eGaj8ZSjRGZMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9172EC83F0F
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175211699357.16280.13498738703371609729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e65497f1961992e7dfd2d98bed822c6552717ee2f7fd4f0d268fb8796d11a7
Date: Thu, 10 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752116993
