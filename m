Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3481C55C1C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788958834; cv=none; b=RkS/0i5oYcBAA2S8li46rs0aPKWYtkDv1UqMHLOgtDJ+5uiQuyFNBdoYOFfCDZQlFWl6d1cM3AuLnHDQUIC939bCEDOS0ckZrfPm60EdGOsaBOEzIGuTtSFzAqR2bSgqk0YAP6fDHvW0mPPC5TGQ9eJxQgAUKoTqrqN2xlEC96Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788958834; c=relaxed/simple;
	bh=uLfRJlzkY/PRKRn24UT1sk8ydUpSSypHo4bGjLMkV8Q=;
	h=To:Subject:From:Message-Id:Date; b=FwHs3MXi73KeXlK4UlY8Pmu7JcBmpeu8wcAEBXuBMCKxTW6M6Wi5t66oW44wv2/xnistP4rOtD/INW69c9/bgi1rcVxwcTT9Ghz8YFZarQD3X1eCZw1DKTKLD1za0xJODWR+TrM4qPZInkrFwKbDgRcM0pKLKGyvVb6cShXUPMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ps+s6Eot; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ps+s6Eot"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F68C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788958833;
	bh=uLfRJlzkY/PRKRn24UT1sk8ydUpSSypHo4bGjLMkV8Q=;
	h=To:Subject:From:Date:From;
	b=ps+s6Eot6ztWZVm4RAZA2hkkx0K++PXBMOQ0aj9rB0TkbRf8Mb19xrYlNweFBs2Qb
	 sTZm//Xmpklyezn3g8WN5MeeqeDqyoOZ3ZnZ85zp8flSyXMXs/BKWddw7/6g12QT/X
	 hF6rkKxzpA2CnQ1YGejlLhXC8H5tug+zLaOfTbpqHo683558dKyhJwM1/0fQHGqZaL
	 /0tUdUT8b6ebwHmcVGSlZJPUBYQ0QWw39hstQHd8YxtImXr9/ya5yML267ytGmqKKP
	 YTWArmCoU9ON7lgBDKf3ORyK+lGcggebRQuhgvNsQCJrWwAUqyFFxnKw40OWpxkXPa
	 vGufsaZYCY6dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D62C79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178895883374.32173.3636985549144847702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89da1ef03125f6df333dff70bb0dbae011b5f91f426f8867974aa7ac8bfeaedf
Date: Wed, 09 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788958833
