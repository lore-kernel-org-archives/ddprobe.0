Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FBC199FBB
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728625554; cv=none; b=g0vFbtJNMyCo5bWAs7b8uz5Wr73YMtS+OWGNDiHL6J2YDP1LExuAREA+m0sldtbbcxwg5D/Wwbb/BiAKH8hTjdQaTRtGUL7fW13NpvGZENYzuR1dNRpT1oJNufTrY/6bhAPd9PLMeFjyycqiWUmSwu7Jl0oQ9c7XkWeNZY6NAEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728625554; c=relaxed/simple;
	bh=QXweNjUvQZV0BOhBy/2ZrrcD5fpgSEHpe416H5AdqAw=;
	h=To:Subject:From:Message-Id:Date; b=hMzEqdrfo5El6SitlgGm+kY2gcmBU/KAhgt4tAsR8po4mOI1+fQSpAdvc9CsOPYfVOSFajui65IaUJ868CGw98E5hAPi+902h75x7MADax2JnGPiR1VttaXTcg1lbWo87KO0RIjQ8IRzQDjXsiwpOkhImdkWqF2zVZP1EZE+Mx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dvbu+gv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dvbu+gv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48F6C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728625553;
	bh=QXweNjUvQZV0BOhBy/2ZrrcD5fpgSEHpe416H5AdqAw=;
	h=To:Subject:From:Date:From;
	b=Dvbu+gv7dXAzJqGbbSR7SHKsgOYBrbwLkIgTgIKJqzbzJbTa5jnTnKF2ZPCfmuxBr
	 o+AdrG7xeLDhPhY6KtnolKr6SU4HXYOR2yL0GZkjfid2b7MQ69cFirK76umsn0K0wF
	 atJRptcVb2kzJSzWaFSu83VxrNhUCPHBdN0S+Fm6t51NW1K/XykqhuNIlD7kJcxKpd
	 T1R/19Wo8Xhu44fo88DQpggzw6XbfnRs14Aa8PZHPA2JQXmWQjf/mIKpMN95jRy7cF
	 +cBvqLxtYxeywtJ5fAODlxwq8aejGb2GDSbP+XQfiWNslSY66r2jTqp/5BptuqvQgB
	 Ajzr08xStxrZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9454ED24475
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172862555359.30696.11863518904881726181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 855bd4dbe791731cadbaca2647e21ed37e2a6abfafe31a828401eb5551908136
Date: Fri, 11 Oct 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728625553
