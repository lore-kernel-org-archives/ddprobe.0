Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350608632B
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 23:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775345734; cv=none; b=IfxgotXnW2nugzFZNHhDZrAC6uFvCGjOv3PEKTjBqVhyJ5eFhm3QXYEPkVN3NYVvNsvQOAU+DS5FNQVkYs+GLVjrv31pcINwsuJU81cVBhLyJtOzub77XsQ4Qo2gIzLaApbINIiyIdUnWKUeT/Uw3TlNyrHRaoDDGiMI+6M1wqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775345734; c=relaxed/simple;
	bh=5mkzgUQLrbEhNcvbDerlrqeTJ0NRJu3AQp2MpFNpt90=;
	h=To:Subject:From:Message-Id:Date; b=g/l77pn/4AAd5wap31262VpNELOW3IsmLz2gKs02Vmr279WgRwJ06Je67VHYqQ5ltU3xwt8+FPF/T5zPLnfsTDHgwc4UIkn8q0zvSFk4raQofxxZUPN194vMghPYiGvWjuyk7Ta7Kxw1J8Q1E40/JfEB8qoegUvvTDlEbgwwEG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMi+djwr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMi+djwr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E7EC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 23:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775345733;
	bh=5mkzgUQLrbEhNcvbDerlrqeTJ0NRJu3AQp2MpFNpt90=;
	h=To:Subject:From:Date:From;
	b=RMi+djwrMpJ1gfoa6wIantErw5IlyStXbKCslHS3966iP7bv5L/2aD/cISSnm6feN
	 q0UGZhClaCr2rZ9uZFlb3szb4E93jcmiQ/LChrHwp57AsJCS1eM1FO0zB9uy4gU8yi
	 H6+mdUyZJsq6VrRAyHQGviLpBMWZ2gx7z57qvPON/isZ/3AV7y7ekmBHvohIHHpJGC
	 YxvyKYkn9BaOe7GKFLT9EJQXc+nL+lgeqslHAj0Qr3B4C+QLJJ/Dm85XacD0e2uBxh
	 Ta9BaypoaSRvlMVuufD3aq2M6gRH5OaDNBXcfJpgS29dw74/p425f1ML6BZofA7kr1
	 mbEkHh/cdmXjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF551E63FFF
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 23:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177534573369.16804.4222678909526448254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7048e7ac6896595deffa9abbc2340b1e1aadfac82b4776ae71b553c6e7bf97c7
Date: Sat, 04 Apr 2026 23:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775345733
