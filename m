Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B34612E40
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 19:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719430403; cv=none; b=m576fkh7r/rFTpFM1TLgEuEQ8fugdYT8PNj2FBrzIL57Lmyy5vFSDJCN0uZvZNgPnKmkwwupGbQGBUDh6+/D19AzVdAfzZF9UUyneAh06zyoWpbvBF3fhwdQkeEWp8Ef0JoUTBlmwm8MJyDXeIzqEBnstRs6N82DyX3vctOwuF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719430403; c=relaxed/simple;
	bh=pIyBpnVt+sUkZrPnnjKh5IONh6MNSjBOKT2kBNXly+Q=;
	h=To:Subject:From:Message-Id:Date; b=B6vc3IlhEFGMrWxAbiu4GP7w6V8XBuX1aEHdzjVSC7NBvP2SzCfijZsfYE0QJqhqEar1ySC5tWwXwOHVx+3Hli2jSMuTfuGBWyg/KDCuCnxfLWQvItGkFgdw0WorN1CN/qBIWf/TsbmMcV6VMOqQGvJ2Z/LOBUPXbH+IQB33Vbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BB19V+h6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BB19V+h6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E24C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 19:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719430402;
	bh=pIyBpnVt+sUkZrPnnjKh5IONh6MNSjBOKT2kBNXly+Q=;
	h=To:Subject:From:Date:From;
	b=BB19V+h6j6g/2axTHJoOwlMozlj+mUXKgw9fMXCySY0dZWoA8GIeBLYHMGZlurZQq
	 I/FCDjcyy52JBR0EXesYFxXSkJDB9A/QCyUogu9/nkb7aJ99M6UblKfnEf4RHs6cd4
	 tI/AqzFdPtqJ49h5c1XExYRv8Vph72bzMrJi1HxnM1ftYnJgeE5r11g+lnFsm8MRfC
	 /f3JxFMWbl2UTfhwKRMP7VoJZNpMOOcIzpDxBQ3tx8pcqCmLF5Jw2CCLhwv/A5a+kQ
	 Rb/hk2DwKr3B2hIMNOH9Ws2mKv5Dam0KEHzV66y4KxINeltvRGhX8NQ68Ihvbz2STp
	 0/Us3VncRq/Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C21A0C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 19:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171943040278.8997.9209983834175358748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a2d1ee3f25a0f424891f410a71dafe71cd36f5215200fb88911ba26599d07da
Date: Wed, 26 Jun 2024 19:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719430402
