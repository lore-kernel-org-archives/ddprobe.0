Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A05625
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724520354; cv=none; b=ORRLNtWBFIZLVI3XF+2p/wHPZiT/xBWywX/46Otq1tX6scP3q7QJHebOFTHnt4kydvik4wpucTbi/KXwtqcCpbW8R/W4RRrT8qCoQcNSNoJo0dFyavhuebyn3HMxhJDbDmtllMsxxJzMYoJ9CaRtbxm5cWHkksUMc3wV4u8Z/qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724520354; c=relaxed/simple;
	bh=FKb1OaQClu9PiGH/1lGmlDs0eeCoUZ2YI6eN12+I72o=;
	h=To:Subject:From:Message-Id:Date; b=n3+ZMtuZn5gYJWXms2lfAXccD0+bHOKzHEnVTXqAp+CEcWkHiRsjkOeeNbhXk2fvroB67NwLMpyLyS1HWcSrMYDwllcIlFvuo/FsNwuHZZAt+bLC2tjG5kseFV+TuajgUoZtuZE3tXvwmDV8FOkCHlHc9oVpB7aWwop7VYeppXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJ4uCVDD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJ4uCVDD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA1A3C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724520353;
	bh=FKb1OaQClu9PiGH/1lGmlDs0eeCoUZ2YI6eN12+I72o=;
	h=To:Subject:From:Date:From;
	b=VJ4uCVDDunGQVkXLL1WCnVU8Q4vy5pdBUU/1MPI7Dx/f6bhLm1segLtso2KXkwKnz
	 MfSPyKkeItAoRuh1Z6iskblfaZB3bsv5xxHfHwi8HgFjxTwNUflAC+r0SKtRLsOIF8
	 wEwdxlBQitYYrVXicEA5FNS8IONn0pJL/gNOBrqmdOGGJJjazguRbTMr8Xp6Uk9huK
	 skTMRj3D2JI9SvY211hA2vaejBRCs2uT2Wy/sm8cEolmDRADehKMsx+HYdhASTy8nD
	 7cjH57aqBAezW8CVtnaI2NG204EJiw2PESH5kLWAm3Cf7UfhOtSIzkcOOLFEpGXkpU
	 OSrtfLtrQ00LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5751C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172452035361.19464.11105842911663404616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02d335e93b59ab212a0605e6cbb461d3ae770229c43923bfdb4e56ff085fde5b
Date: Sat, 24 Aug 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724520353
