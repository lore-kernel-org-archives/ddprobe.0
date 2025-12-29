Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2832AA41
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 04:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766983435; cv=none; b=Ij8S4/Y9lh+AsxOyrdJxjLD++lTMPwV6Ek/49YURRGO0hUHj8B7TY0Ubsu5p1ekfcbacCus+dqo9wZCzpFzPEoDuvkNQAvvYznBZu8CfNJEGJuorzdwgQZI1Z5Tb/3vfvTFuPbithtcbPy0Usp34jiqCVyo5XiKSoNqSFxNy1LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766983435; c=relaxed/simple;
	bh=oddFtRxOFS/sHOGUkIfDlq8+Pn5U2Trl8zymtTIINQs=;
	h=To:Subject:From:Message-Id:Date; b=U+GqXcmmqOYG2kxKE6W0iuUqj8aoay1OUmJaSLxh7qrYP43ewem0/Xl516HKoVxJulryqPkNmItdKlI425d8FOor0PdqmyuOX6XVRt8JgusHSCcAp1JXp7W6j0kzbb6reZwR1+oJiepPhjGMWCj9qtMUCZ5BA8YhUXYivlSx8oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHWOe86r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHWOe86r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB73C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766983434;
	bh=oddFtRxOFS/sHOGUkIfDlq8+Pn5U2Trl8zymtTIINQs=;
	h=To:Subject:From:Date:From;
	b=UHWOe86rUNn8lNuW3vz54tY0k5AyXzqmInzNXM3pLySTxU5ZuJlMkv6N22bG+TEQq
	 H23gHAH1ISIpfsdBYW3xZShOjj9LTemXDBmZU5nL/VPD6EkXnOWR3vMUzxARhz8X/9
	 ths3dNzWKIJLa1gJzHf46bYLIsCfP8oHGePHkOn7HB/KA/iFlRPxQ2rl3Uxo1taaRG
	 Re1WyyYTGAE5ey0dxgr3NC8K7Temq6S6iRg9M4rO47og8FABG2vY1z7wqhl1Y87xYw
	 dBWlnoUyvpuusvEcYqeAviS+Q6VeCfpcKNS8u54ez95A+SdCT4dAJnPwwFkEwDcz3m
	 10+Wmy2pPbIjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FAED3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176698343358.3858.10880574694980602739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76bfaff2037c9f1d67ceff1de106142f67ab95805e0e24b5a2863cb4cc090612
Date: Mon, 29 Dec 2025 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766983433
