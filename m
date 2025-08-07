Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1580BC133
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754536194; cv=none; b=D1hYWdvD5Jl29Hji9vVBDH/WNFIp1OPIs2TzKCUMEj4I0STo+XZAIr65p/xs7eXIsOT2xgO20oxxfGKi/K2OLZVxNjCK23/BHs5kxWzIdqXZwvLe4/rPPREfjnJQCdwX36mabHYlYLFt96+H0scbWHLyAujrXQ8ifXgQnVe1O5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754536194; c=relaxed/simple;
	bh=7zcGCY39/b9jSv21V/7CGM1abdMFGXDN92hX6M13xfI=;
	h=To:Subject:From:Message-Id:Date; b=fNjWucjJRAuentaoQKWbNUO0po+llu1CX6l/Xo9os3dfk9C6Aq3jzbBKiwKlcF7EZCzMaVZUbiNvdubvwf+sRchQQEHIoowA94641oFDR3fX4JDP32CItlLqmmz08S6WkqS5pVrBMBY68cbltkY3iFQBoyvw0khUgdNuSHKIZUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dethtYzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dethtYzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F353C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754536193;
	bh=7zcGCY39/b9jSv21V/7CGM1abdMFGXDN92hX6M13xfI=;
	h=To:Subject:From:Date:From;
	b=dethtYznL0PlDV2RivoXD4sBO+9noKwgzLm7+kE24yTr+DEvwUA2evXuAQDbyP3RW
	 53kyaI+trptJEaKr/jjLV7SRQfu3Yz70Ver+XBMW+F8PQzTWWkS7/LUgdsUxDpFo4k
	 CK6kgNeDdFEO+5joLSStRS+y/4lC97vRllR5GTsrqks93dBpLFywYAhOKKc4S8MF4L
	 qfeizg7yCh6nb3Z3M2tpU+7hbQzRNyxVjx/YtiLxy+xq4mNOKjjg9a4uz1r+sYbBDK
	 33oXvMtWHc0ZK9PJP8UvMhX3ttaXrjhqkYmXHQPgMMGWuWgqUON6K9jltNxYkE/8RR
	 ht7M6Bba/EVCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7A6C87FD3
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175453619358.15643.6879685249470167221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4822b3e60b821aeb29ade8a4504535d27478ea711d71790d1394d7b008ff61d5
Date: Thu, 07 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754536193
