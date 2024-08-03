Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F383D2EE
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722668754; cv=none; b=ktyG0JhGA2MrvGEPNY1T3E/G5dTf/BjgBGqn0ZAZMtIL0o3Ai1+2dddmLZR9FSFlAtlMDQMh5ruaaxmJfjUEdPb8Cfl7FdESE4t9dNlgr/KQTOKeT/Fwn7GPHuKsIAc30AVC0VaFQf144oFilpHlPE5l7e/b0mcKCaWCa2JQNTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722668754; c=relaxed/simple;
	bh=M2JGXsr6WK5xog+LiBLZ2x0tCugfXxiL8ZpKFZVIX+w=;
	h=To:Subject:From:Message-Id:Date; b=IlyFpBcFhRUaP8tzt0E7zICyZ/zdYx9Ga76Jb9PVd4eHHyJlHfA3pz+Rt16rM1Z2xQJOTZcSjGCWGtAgMr4R+yTGoMPYVwxond8ONXlk++Y2M6NH7Q/ccqsYvdQZICS/lwOIdWIyGK+4yZNbkZQ96r3sSrHcX0Yf+nFRiZzwbJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ax8SzLOr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ax8SzLOr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF662C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722668753;
	bh=M2JGXsr6WK5xog+LiBLZ2x0tCugfXxiL8ZpKFZVIX+w=;
	h=To:Subject:From:Date:From;
	b=ax8SzLOrx+E83hWBZyAmQqSTQ6CAI1ibogZEJQ+9XYTLVaYsoE7Jyfuc8M9LI7elv
	 i8eGU6z5RC/vOYD+SUxGuzW6cqlolUKLjFYAn+5wqWdhY073ZbPO23m3+qONC/oVwX
	 53BnP5utYbpHxqPtnDaJys98J8aeAuIE1BJPpkwpdvpHz6ObXGCZp1PZh3dlq/+Gav
	 SzDM3ZxlEPg9S0dcR/ncU/3x8zvDeLANYzmKKJuTqNESBXhDu1cQts4oJ6zGIX30Z4
	 WnPBb400Ea8QVJp0xdYJMiKyR3nkyfI9ltKkZvdJUKkL7rTgO6A2M0rT6dc2YRxhBB
	 UIqAQ7QOYhrKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE194C3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172266875367.8031.15646840403250103591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9221008c7b9daa21507ecba598522088d5e41dde80faeb81b135d58039d8d68f
Date: Sat, 03 Aug 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722668753
