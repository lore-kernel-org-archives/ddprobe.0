Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633B83B102F
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786736434; cv=none; b=huTf3ltAVWAxl9gr0kSmXle5w2xOio9XGBJtkXN2lQBlwVirevhU7cbybdYjcPOSHyJ17Xt2unPvAK8DJkVVgHyenJAZzdomKUa4ru8juPoix0t5yZ7nAelwkHlw1HPwheg0rOjzSV7y4suPfWOcMvtWN6sw5TywUXSw+2VV29w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786736434; c=relaxed/simple;
	bh=CtQX1/jEm3lpw6UVfKATJEb7cMNR52rJfqzfHcIaH+c=;
	h=To:Subject:From:Message-Id:Date; b=BoX55Dw5HB2HslIlk4uQOPnKKj4ijEOXzU5CwnEKK3IqXMwJII4Qr5OBl3IbD3JpyROMRPfGCHeInpA5w5YwkhL3yv4c83brf8HwS9SD04i6V8n3zAV9BgCP11BDvNyHzza7ENNctxsVbDcWBB97/zzqTgJkX11TVgVGlzuFBA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOfKYCnr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOfKYCnr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3E3C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786736433;
	bh=CtQX1/jEm3lpw6UVfKATJEb7cMNR52rJfqzfHcIaH+c=;
	h=To:Subject:From:Date:From;
	b=XOfKYCnrumQsAwz++tayiSytB4FWxU9e79yE+oC590PzwH6pcUxY0/lDX1nmFkpNr
	 RyaaTaOVjBuYexoy89qBR8UgYcTVLd2Xf4X4WHWDKdDsa6IMd7hsGsYASJyaRCajaK
	 oEQZVsK3Ar9Pc+2UGrL0EMmVjP67qIstUIFiaFddos/Kx8US0pylHe4L/oPslPxXkK
	 dMHtDTM2iK35YQGfR8CTl4fcoy/Txqa46pO1KRmOMz/qmv7yfvKLNuM7H4humQwlPK
	 fblogBxtlG/7XdHIiQHKNuXyZCn2GJ8iYNiEylhbwuX+GYXMjWKZqS+FYDOqCHgUyN
	 hZTrQHJ4ilHXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADCCC5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178673643369.31837.1648582302517227239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aea2adb09b43fab50d0045d1ebd13eb0a372cb41324656573c4fd2d80675c14
Date: Fri, 14 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786736433
