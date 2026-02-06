Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF22242D6A
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770421434; cv=none; b=eqTuhcFX9UpcA+lGvJGJcIpstTK0H8Lz0JtTvKllYGw8f9cw6f82RvHrf+HQFti0FSQKF5exCreMm3rutIVW1P9qAo/O2Yvwl4Xd/PFlvl3EgLK3aUn2eKpmTBwRVXD0+ja5wnrvfGrWEDEPe3WwH+zayn+4Pl5N6wcTX9oQUFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770421434; c=relaxed/simple;
	bh=Ar2K8ZQ9i+lc5gYLbFHPxJnaAbfADUJDBPh97M1aa8Y=;
	h=To:Subject:From:Message-Id:Date; b=ouJHqeWG44o5n6WW8TXSBO1hyVVKxt0XSj3+9Atg5Jtvf9bhlu+Vpr0Q7/BKCKknw2qUaSrhzMmoxCJkVvg3M8DdBUbIEXujAY0jljVf7PXJOUncFfrinpWOFJ2Y+I88kKNiv9DkJbSfdaQ76E0mbBoBub9syxbGq4wHZMsVvBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnmsrb/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnmsrb/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE34C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770421433;
	bh=Ar2K8ZQ9i+lc5gYLbFHPxJnaAbfADUJDBPh97M1aa8Y=;
	h=To:Subject:From:Date:From;
	b=cnmsrb/iWarffxlkkGcknTfbwfrRbvKupB7jJqSNfJIvBLzVvo9afN7Y87hcm4JCC
	 I3OaAkaL8N6dPWyaG40E1lQeWiLvQ6Q4VxqZvEnA/MTU9Hs7f7ahyoXx8msjBQwbjI
	 NjgBfr5Se/qEgWNHo++OmEIYEVEmQEUCZ5Yf8j8dFbJiPZ9QGX8wYgzXquQd1AmFwC
	 d/z2nzblff9u5yB5uGibDPiizmcU9vDidR6kPzuVON6rrHomXxKAmuoxowcgHDjc22
	 QYEo7Lirxk8XXVbKEUl4YoidA0FJq3DSq4Q4jU9XJgZIc0mh0o5aMz0D6ilJslF3+E
	 1ai5K+het3fOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960E2EE6B6C
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177042143360.22832.16111527729895703686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 711bac491024b0a826e392a35e8f007cb1b18b1c3e67773b5b37431311a867ad
Date: Fri, 06 Feb 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770421433
