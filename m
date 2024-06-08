Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554D22579
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 19:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717875443; cv=none; b=CdYJH1jTorLaShVHq980Wel3h3TeRDi2eEm6K+Q0cLyX/+TM5a8TcD2xasxVvrb/6r7rz5eftgkdEZ7NOq6sd/g9PpcrO5411Qajtgy+XA+4gJyOLIeKRuHUntmrYa4tqDY3Kbw2UiWEG+SF6VWGJ2KioFxFEaeIK4xidFQWWS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717875443; c=relaxed/simple;
	bh=ywOkh8sJdGon5SLUrjIL+5QZmMSx3NAoJs+s42K/bc8=;
	h=To:Subject:From:Message-Id:Date; b=lNtWdPqj5NwkbsblXZPcHagp/48WOW5QdDtNM7dOyN5iWMLlTItoDhwMiyOkiBn1WNrSrxvTV8PIfkqG2jQMQ6Tz0YzGjClJoXnv/de1Y3Zig8TJGWlxFx6p5IUhPgE0iOKFoT++vWLR59yxubms0aePz/23OBhSTLdpltqQHIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdHcBswg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdHcBswg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE0FC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 19:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717875442;
	bh=ywOkh8sJdGon5SLUrjIL+5QZmMSx3NAoJs+s42K/bc8=;
	h=To:Subject:From:Date:From;
	b=TdHcBswgA0xdR+w8b+mbmq/eB7FTOHiGm5x1FMy/UhreqSEzoc6SM+pUvQto0aRYB
	 ZAPhxsakJ2hLe2+gs0AqJSyOJVdLtnTgKPT1EI3bRIHlYCtD8s0tWITJiDp1OxM3Bu
	 oisr1TfdiAHu75NT66bVB6PTP1u+3jju40KYEO2VV5WaMta624EaRwvWBxhqcUJxNJ
	 zHozZynj+w3TEN+3yyVRjPMINd9aVR3VAFZ/1U9+46gwMTUMHNS2ld4ppInVji1mZX
	 BcQ+04UwA0ZWAxgaa5+9JnyE/CHaesiG0Sz/hkLnqFoQ+jh50DWrd3RGbsYq+b1le7
	 08EkLs+unCxoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9274C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 19:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171787544278.21424.7184967405876468450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 711168c60f1ff3d486fe724c542ef5998cf8a46213a6a5f7ac0b7b99e5234b23
Date: Sat, 08 Jun 2024 19:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717875442
