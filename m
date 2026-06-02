Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F7D3E5A2D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 15:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780414474; cv=none; b=nD20zeCBwnV0uJ18g6I3lKwXkE3lVDbt+8cOzXX+gBGx/JzfGXHsu+q+DZPPBZlzrIRWGjxt/F/YR+DTWghnoPBErfJ1QmwfrRtYk+hGUmxq5Ku8yjbXmn7P4O3bMCw5etDD3zAaMUqJaTSlcsMEmZ0EIGXAFP6RA5dS0oSbo4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780414474; c=relaxed/simple;
	bh=1LGkGZgTQrBUje4VfKFo1xw+snUJJYB98WmrouRvDSg=;
	h=To:Subject:From:Message-Id:Date; b=dieRokWlHlYFNOHKOgADjFPZd6G/gEu3LzfZjJUgplYM/m1W74xKeskUmcnWQfpX1j/TGtmyXLHqNKMYuBxTjyogpOsx8I8I7Rw2YuU3Cz6UYQMNN/sTa7gzsKk8HEhQZQ7L2IHdxe5fMkhMLnOLgfQCq+5AX74fNTKgP8/zm+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ksuc1DHG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ksuc1DHG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6618C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 15:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780414473;
	bh=1LGkGZgTQrBUje4VfKFo1xw+snUJJYB98WmrouRvDSg=;
	h=To:Subject:From:Date:From;
	b=Ksuc1DHGQsUMVb/HNz6ulrLYaelL5kWFqt9ujyB0OaVmMTCszpRifAbcrp0NlIec/
	 +ixXVtW+YVBP8qaNsgg4itoi+pNxxhnhMwtJQkpE9sIiUaVQuMOUF+sIBDAKgFawR/
	 oOcxNLxVudtYTdDolSOzcscucPuoztyUgscCW4R2sUTgVFD5YMxJLR+oufHuEBJS+y
	 uMx5uQgN0B2YiuBAukmrlJcxRbc+sBWLE0WE9cC7KGHu9O8ehsPA+F7+cI9Z23dMLC
	 m/LPED/qieVgUY6f9NEBUP53uJJqhvD/C3qhvj36Wva2pm2OCYJCntjzVynlbfUVJ8
	 pA9EzWJSpA3SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4ACCD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 15:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178041447369.12819.10708676814392259099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 859514daf8dd88d4aea3ca73ac354c59567b5403da8f75913baedc2090924554
Date: Tue, 02 Jun 2026 15:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780414473
