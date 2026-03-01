Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A512E8B6B
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772354694; cv=none; b=FQc3r6AqnerQ77LdRoN22S7tnODAfmL6JYTh4HM58mnyuhaHA9YYM4JnHSMk99avYUIHA+F57Kek6ytU9d8zG5O4hBmdUbY+MMsMWCYGmT4FFpHwMHTsB40CVzA0uqXZElpff11/SjRyisEzJRfIyEZMo2O23IK47OvRNbcTbW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772354694; c=relaxed/simple;
	bh=u4FkSaK7orQCcU1jQYW2OL88D9YrcVwGpoKzwBT1dW0=;
	h=To:Subject:From:Message-Id:Date; b=FlmkV8DHFRWH/NXXsicQjrrEVJYpnCEZHicZEPM+gMoOj3crI5VNJzDBmMLSeHyyMzShBPZPsuPQ/JjqVVDifSCpZcSckPef66cOJnL8abguAylze7p0BADSDo49NzXRK/+i2DGkKzEELxk1cw6+1Xo8FHqF5AgUp50sF3Zgnh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFrkEYRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFrkEYRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B0DC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772354693;
	bh=u4FkSaK7orQCcU1jQYW2OL88D9YrcVwGpoKzwBT1dW0=;
	h=To:Subject:From:Date:From;
	b=mFrkEYRaR1/hZLmz28pTWRXHVRQR+2OHhzWXsLXt5vh+bOUKBdmYjOnVzUbvmftWn
	 NWKDaNpKgWH/CV9anL0cawpeJDcpBvnhiDkaccB1gEEa9ZDQp/k7nOse4eVivgxjeT
	 6bU5WxHJA+ELtemGoxfdj+2fqA2EgIfyasXuWbIeK/FDZGi7puHpT+jUIPvned3ooc
	 I3+qHueWpV44BgAq0+jwX+3KP12Bqm+liRb+FZE/R7lpPmXiDdWgdN3pYXLVoPwmEo
	 JaQPi0/UjhcNUVsv4Ari978+rlWUDPSapi2n1Us15/kAxHDMbYzj3470tToHk/Rk2h
	 uxUdo6ujjvhpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D30BFD0040
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177235469360.20233.12681243964890924835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70efa41d7ec51c7d596c5df9571cebb4b0fa0fa5e81f99d3ef7c7d8f337b0953
Date: Sun, 01 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772354693
