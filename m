Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441DC8834
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 00:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780013554; cv=none; b=lA4+3fGOUxuHxUAXcTS3u4I/cWxPd1OHQIr7N0PhAFTMcZSmdu9Mmuf4b5wQdrKz0mRhoBBnGA31+R9+R41xssr4F8CGxhU8O04YTm9QNe9LW+UoeMABtL3HN8vYms3bFYOlgS8kbdDv2/6SwwhMJl7wzYQjjFI6FarzwOjJ9ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780013554; c=relaxed/simple;
	bh=yY/1dKeUqfqaYVmds3PI5ziVaVV1doQ26YS6fGHTcIc=;
	h=To:Subject:From:Message-Id:Date; b=EVXqDIVAicXLvZhC0Yaa7bU60uKU3ozkkycyhY1oRQJPLebLAgdrDM0JPyk654NpeT7/maSBGQtmsaeohd+UKhforUabkpwMSAn0CGXGy3XzQGeGIpvu5+0t/IMKc1CpbayuK24vkf8cr6jyLdL8VEcWNTfbSZwrCpi8pYh6DQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8xILxpK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8xILxpK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA54BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 00:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780013553;
	bh=yY/1dKeUqfqaYVmds3PI5ziVaVV1doQ26YS6fGHTcIc=;
	h=To:Subject:From:Date:From;
	b=s8xILxpKUuhnwzz29eQO+zo+sHAGq6JorxgMIohxBMw1M2RytJmAzEZoswHkI+7DE
	 Bw0edE2/qwc+N7qiSM1uFxlVAmHI5Vuw+EYSY+4hhYnU4n2l0CmUKWGi7M3YrJ5uUb
	 qhCgRE+oxReVDH3uXXHCd26+yIx6b5p/Y2m50fj68+0PmGY730N78cZQJDPuU3sY5s
	 J5ylYhlPASr3WXecIS6TTo5dbalJLLuZlmimpipB8drGYzZjrX31cgNmtq9+qG8FAH
	 rh5xNwc147VlHxzJRCLdiE6gyVeEcpgyCf5p6Aob0wrj29+4j+/7GaEtt498ALRBQQ
	 8SFIilI8CVNJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD776CD5BD1
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 00:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178001355369.20899.8693093760880470618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e09b17854aa75879638f0b7cf066f6b92d1b3c757dd03bed706d567c6e29fcaa
Date: Fri, 29 May 2026 00:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780013553
