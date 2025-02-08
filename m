Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4252B241C9B
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739052354; cv=none; b=gKrC2V9EXDcFjNlEI0wtdtO3xNXc020Mzmbbr8lNovJh9mW8CmdJue1/VVkp50mJmQk2B72DQAspBdpaNlLLQzzni4pZpGH265PtekVRrFBMVIqrIPGTQF1gIPgU99T+noV+NMQtOHLPWv4bxR35pq9mKgADQ/dHCkz62/n+a0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739052354; c=relaxed/simple;
	bh=Xgf85lnC+wi3h4JPXHvmJCJOuWpdYqIzt78rSH2DfA4=;
	h=To:Subject:From:Message-Id:Date; b=SKq1QE0M6uEwPLYjdsJlF7gBR7tyQ5a1KnbmxdwtRNW9eVlBBZ+jheULWpXoKcm56WPA39X8Jp9YoGYsIzLue7rH6pmHl4NZubfE2hts7vKcCaKOk3k1givQvqW3i47+S2AY5PIdOCzgIWz957FbzGD5Kz51zWMwcHiFW4DZK80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmMYGcXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmMYGcXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0A1C4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739052353;
	bh=Xgf85lnC+wi3h4JPXHvmJCJOuWpdYqIzt78rSH2DfA4=;
	h=To:Subject:From:Date:From;
	b=lmMYGcXOwfDODfLloBjisTOT5t4Wxp8BcEQjZXHBsEmm9aVW8bonkj8JNfVGKhNRc
	 sY81bH0se1kphiI+v2AvVUuUat4giLfiHlvWH8ucTjAOt4Wjng/ylI7s5iP0NRl4HB
	 eo7F0kg8X/COxcBU7XngkSW070PvLIIIr2QcwW9A5NnueIv5Cd1fO0SmeiSjbyrBXl
	 uvugpnce6BYWXmnltBHlE80eIXRsGkdGMB5ic/SZMNp7QlMU/0KdYWVQLCvP45qSvA
	 k3S+xnxkNrmC2aEpj5YwIria7srYtCc8N2jFv8lsel1G6G0UEYDC+3r7nfmX0IruFy
	 hxFDKHTwW6Ehw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0E5C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173905235362.15470.11198337618398621240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7301bc707bed643c8d9fb4e9acf90a87c770a225a26c19fbc4531280147feb4c
Date: Sat, 08 Feb 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739052353
