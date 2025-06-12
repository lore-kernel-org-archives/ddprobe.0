Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2806E1AAE17
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749764995; cv=none; b=GnQRVrT9wgFdp0rqb7O8+onGHRMuoo/WhhlwJC3m73AzH1E5VsSpyx6WzAZikldJ3veUAptakSvTuKyZXYqHIgh0vfv30gJU9HViI6ctowvpmHtymt2/UhD2b4YQ/0fYqzwQe8Yz7YhiKo9t4MOgSPmZT7f34qtmbhcIfGDMGqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749764995; c=relaxed/simple;
	bh=A4Y2fwHRub3kliT4KyY1VqigF3tjojWxefzJhcZuaGY=;
	h=To:Subject:From:Message-Id:Date; b=MhStyznLqPl+wrhWBRZuhO8BPYhHG1ngGsWvKSC7zSzpiYABpum7cWhkg0J0A0uguozQO8NQ/egGg4YMiE+Dx77j8Sav+ZyEyMpP/2PeBfH+RkZxVsD+eD+8iyHDC0lL4Tt1SRUNi6kJkJMrJWdQNdOem5DdJxADUv/QDwaVc2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmpm6Uaz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmpm6Uaz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CEAC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749764993;
	bh=A4Y2fwHRub3kliT4KyY1VqigF3tjojWxefzJhcZuaGY=;
	h=To:Subject:From:Date:From;
	b=dmpm6Uaz+Tn18SLn7tLi49dPwyAIMKtuKmOmCciaM9bWMZ8+kV6e1438vKiVSLBAo
	 /x1NYDZpKXWPzDyklK+tS5H0HhVfPebFrJb28av4Qwuf+UJHDaC3FBJiT1na+pr5/M
	 PId5N14s3UneAVCfR0lM7Yj32uCPBh2MoIehp2fIKNvXUpnpHgl9uSxgauJy/u7ETx
	 bwAbHzP8KZ7kicxy4Wl1lQwL4mabFFxu3/jtG/s8bJOYXIeY0Z4lI0YwCWrPWghYtL
	 JPe9fNKkuH7LRG5VFJ2uGjBaebOhTpEklidjeFv1srmPg9Ko4HoiW6PjatGo/nc1ZX
	 eDLhNX1tZ6WAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAA2C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174976499357.26578.16871292981681580259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c8db6d2fb1eebcb0fd4e848954a599dad58a39e74e9bf24c4e5edf91a8b3f64
Date: Thu, 12 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749764993
