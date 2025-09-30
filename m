Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2119F19343B
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759232994; cv=none; b=ex3eHbtlVd8rt4K5+GsbLzWh+IPmKCATTNUxXDJTtZ8GVXRapM8hbUD/jOATFJMA/rApzvv6wgIo5UPceNpMHVeaxspeYYmnpgjoit78fzW/HXN3vkg+O9EwiI/3IY/b2vrhLMmOWbDJ+wxBl5mnCgQVAAF4g2k0MWZewHX8mH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759232994; c=relaxed/simple;
	bh=aAol07sc1uJSoeV9sk7OCjUC7gQ6aAm2usqlGGOEvOM=;
	h=To:Subject:From:Message-Id:Date; b=o2AZRiszn7UszYXzoPSxN3hUidtsZlZvMu0SRD0+2ELE0ncgqmfPeJc3SNWOOoCPKK/i3Zua84PFjmEaR92fqQeiTa6TIP/BqA5d+o+NW2B8LImkcw8sR9eSFXeM6eMFBAZlMD8GZR1EL6yzbYtywc0cxL0YRN0Ryc8+Qb7Kox4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lVXDgh+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lVXDgh+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13F1C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759232993;
	bh=aAol07sc1uJSoeV9sk7OCjUC7gQ6aAm2usqlGGOEvOM=;
	h=To:Subject:From:Date:From;
	b=lVXDgh+TeZtWfoiY3XDD7yKQXzTdNBA3rtiwW2MiZvXQfvqXgtir5PXvVE6Ygpb7M
	 LtkPAhS6duiiMUP0Rnic7TuKHYlZTHs7Jn5koK/fgdPPZoTgQ7ARWOtB9itWcoNVHM
	 XZVx3ZH1BeZUSklvUbj0Dhx3FBSXvQz6CvWDamyOShk+52jd2W/xofkrtMHl2RxUZf
	 bS1lpL5qjZ4q6uLEqhQroe4fCvqeA8fIBYeiWf13PUIQi7OgiBKf8YEb7hUdQ/uy2h
	 9tuHEjMz1MVNmyou0Gj8kGaBjksge7vE/KdFfCI6LaGg0MHTLM2iaJtaGWPEmJ3r3v
	 IKvbGGTWstvpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92344CCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175923299358.4883.6539328022184273847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a33bbadff416e745447e399fc522d2d4934d2f948ada575e80c34133ae5aa55b
Date: Tue, 30 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759232993
