Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB1D34CFC2
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 16:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764780773; cv=none; b=b63iLCcFKA8Rji+bJXt11UI2A1Wib8GzeP5m/NgRyS4tws631LCUG0sMJdC4+0L41Gz1IxyhkzeTz7mBXQB8JZJ+l7xu2kYTQc3ehCLMvfm+lafK16+j0LiMa2fxwpvoEKcL7Rv5VrmaBF/FNvGWGPp1pHurVZWy0VhAXDmo+Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764780773; c=relaxed/simple;
	bh=2IRjEpNA7/1vhNBgd5Ju8BuMzaWxk2JVxYpCW09LPFg=;
	h=To:Subject:From:Message-Id:Date; b=MzQqtYjtqdTlA3logpAvMcSltbNwn7UVij3K811UMdujjBWnLgOwwFRW424p0FZn92sKFFX2H3FAFtVWvtE4r+NJnKm4BYUys9l2ITnU6UvNwQziZ12IIRUPRD9npRcskDKr2LaM357+RVRAVl/C1+51YaQ+tsQYr2ueAbXkN5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTomFuL6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTomFuL6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57E2C116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 16:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764780773;
	bh=2IRjEpNA7/1vhNBgd5Ju8BuMzaWxk2JVxYpCW09LPFg=;
	h=To:Subject:From:Date:From;
	b=gTomFuL6uNDb/hccrU98g7pKJpEdFuZDRvfaPlvj/FYi3TM5bMi1zlPrpUh106kf6
	 F217A3rlNi6SVYTvw9oGJLYGi6x3d7E3ElGpxLIUGYASjH9pmfhv+ECMLbIk+NydJm
	 gu7WegdhCkARlJqfcn8lzhDLhx7ib7xhqz1zgN42H15GGnRl4D6cRHpYCqVsrjXz7V
	 9Roic+Md5X2s2xcYzNAA94ceIlSzUjLZIc770Mw0wCHBg3Kgif9bcSii7UX7I5sO21
	 /IZs+OOEhXQoGaYa4b/WgHfG06eICbJ0DVPkN/iVL6TP2Gspx77ndpaLe+hvVdAPV2
	 IKCWTq4vgfQ5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F1ED15DB3
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 16:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176478077359.14181.6793433970737263204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ab327bab53b16468f2db28a0687d955a2a770ee757433370fc85ba8f5bcdc5d
Date: Wed, 03 Dec 2025 16:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764780773
