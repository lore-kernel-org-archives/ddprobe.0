Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D89EB18872A
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 08:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778746233; cv=none; b=RN/J0kuVwylscWMjSrhbT+PX1ZlJW6d04YcoeNfZpPPkiAR51VWScNnPg3Z5lxVf2apC+0zbiFd/sKmzk1R5NHWU1AU0ImDbU3dzCno3r2tXBo/2Wbk7oerw78srn26AS45Epm/9T4vD+0XJSAXmmanx8exad56KjXjRfKZks0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778746233; c=relaxed/simple;
	bh=I0TkQBKovLld/71Ev25dFDltPSws64D/vYMEzq0IUdA=;
	h=To:Subject:From:Message-Id:Date; b=ioOP0qRaEI5hWSx2aOdxfIrZZIm849tXX1GGU75L4hmCPi3A0mF0Kpobhro/FFSyOgYJB5GxNkP/Rtk4Zfm7abyqrA5xS2A5BkEcoyEKRwFa9XOxg++bj9kIX6a+rfUDvbIUK21U2PSI2UVouJSslXZ0N7SvCwsRgAnT3jdFslo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IcAaekt0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcAaekt0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA4BC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778746233;
	bh=I0TkQBKovLld/71Ev25dFDltPSws64D/vYMEzq0IUdA=;
	h=To:Subject:From:Date:From;
	b=IcAaekt0YmU0gOrCtS1qIJyrIzSR0faCB9ng+UbSabwZFTOLWzigAElSkoGxh032S
	 FT8cPyvENAROwzChMB/TRpBD0U3ZV2Lz5VIJT+JodIDkmjvxLBMgGbMgtaBWJx0iNh
	 0CdSbX5rkxvXonVwm1/uLkt5N4EPF5bzr1aHuEvZmWQFNaqHkHqRlDhI+OrFrTo47Q
	 srikk2Fv5xo3lAy4MutKeOrkVNk+12xmr8pnVWH28qkGF8yzAuWT+t1HdecP1B8/WS
	 8bO8Z8bMWnklfEItGPpXmcTWEfnEwp89MVnNMT+KmRtr+3d2zyeY1vEs0PfR5VQi0x
	 3wQJ6g4z/M5qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5EECD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177874623368.11470.14669932679439112110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd17727f877da35e2983ebdf8d09ea4a6f35b28f1fbc8e50fd43dbe72b3a2296
Date: Thu, 14 May 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778746233
