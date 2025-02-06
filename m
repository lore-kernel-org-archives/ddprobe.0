Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3352B9C6
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738809955; cv=none; b=RP7Yv1wVEyojQOhzGcX8TgNFtLaB4J4REh58syQgA2u0fuMiiqsw+wWnkPiIl9NEKmojMg3Cdljgz7YS3P8ZVXUWXeuZUGzAOhddTAmOoPyoLU8atoXnJenkK4XMpB88USIbjpfiSqVlzo4KcyymJDK5SvpPh49wKR905GTNpHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738809955; c=relaxed/simple;
	bh=xrtIki9MGKU5fbIpeXCNm0aiRQzhavw+ZfIA4Bo+D0w=;
	h=To:Subject:From:Message-Id:Date; b=u8wypvb2NccHb8jsDD52j5oMezV2qvRv1/Ig0iD2KeOPptOZFz0E3frgqNRbO4mlXAPeIUh69aE1Dep53E9d+7CeCELBTWKP8h6EOHyGH8Cm3DCm5sMqnopaCgbkxahNycgLpgJ85DJ0L/Lr0AOAYSk82XA/s1koQ7cX29OZcko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=coplLtLv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="coplLtLv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E97C4CED1
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738809953;
	bh=xrtIki9MGKU5fbIpeXCNm0aiRQzhavw+ZfIA4Bo+D0w=;
	h=To:Subject:From:Date:From;
	b=coplLtLvwh2dC8IfVXIWksAKdTA5MfsyPMPbjsBwiHbVzOCM1sTCBSID8hthv9CjH
	 Snm5mTGq68E+82fc5tYKxhwmutZabu2ArwYK6fUDD+zJKp/lhtY92TxSopj+uWAtxw
	 rv1Ue2ja3j40tO03vd77PKIMOBw29cWS3/BxsXCxJ2EBmzDM9BEXX1jw2IU1HSELjG
	 9Rh/dPU3JfDy4wsbyi3CZDC9I+yR4T9WjVScTd3ijPm1617J22EefNe7uPIvTI6ost
	 g39lfBs8m4DcYSzF8Bd6SUBJ8SqyGhQf2/AKTlRHDWzO4TCROSEm5ugs8x0hCQT2GQ
	 OenC6W7ZBMzog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94411C02192
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173880995359.31917.1318798976954794880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81098c79e9254bd612b62a1f5f356e5f3ce983b759ead07ef2edcfb78fdb4b40
Date: Thu, 06 Feb 2025 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738809953
