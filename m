Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1772FF67E
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755166194; cv=none; b=UehirT16d2sTq9Kg4xyKnI995xs3GVxbLxBJOIzoJ70s5usOvpbzpq1o2Hc7nU5ubW2l4OmeVlG9hongMWru6Y++mFKp15YDxYa8pg4vkL5tw4+iGPWxRG332KxVRyHgPS/OpbNTmtW2PzndRldMmP68XDAHwVosr1nJdMuvc90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755166194; c=relaxed/simple;
	bh=3nZYTbaSI0l3rpyvMpwR0+9o4Zaz8xfH0WU3Qdo1IEI=;
	h=To:Subject:From:Message-Id:Date; b=NHGddcgCg5v1mfUuBT65GjtVQDIkzNQJ6m5MEkq0tBmmGpONHUidawEPYbjZ3daalSguq6MPdZwh1R8Hlple6a7qxej0tT67XnnOvyPddKrjnqlO5pH1dbWj1klOCHCM0n1g6KDX4yYwXtDtNB4PPUZyq7qGjod3Yvx9m3FvtUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgKjueH2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgKjueH2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C39CC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755166193;
	bh=3nZYTbaSI0l3rpyvMpwR0+9o4Zaz8xfH0WU3Qdo1IEI=;
	h=To:Subject:From:Date:From;
	b=JgKjueH2j3NcvaWfcGNWIKwPfIYGvRDnelhzRCQhfgFLmB6WbDsG9351tWMW6rOQ7
	 K04rLcg/JGgJBenOP+5WZjBZBAXadB6zf6xAHx05iPdV6h6wVP+FkmKGl4PBEl+W2I
	 M84GRg2lGvb7To852LW31lPaBue130nJqfohcu91VUL/W43hTS/oDH8LEMPdy9Ctjk
	 7/NM/f9Mbcx1pMyLIv3hnRNBW/v9hEvxKEMLrSMuWgxFdU+KjJUludE/VgpeLjDHUX
	 OKyBwPNTAb7aseKcPtSPDVOOaR6F3fatiEQHhUG0NzzMRUb+c7kYoEQGvus43L+Ln1
	 D3+G1OXO5aung==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAF4CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175516619357.28893.17603767492278608697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f973fb51cb1ca90be335911d4249bc47de9b7021fa7da2198a8e025874cfa2e
Date: Thu, 14 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755166193
