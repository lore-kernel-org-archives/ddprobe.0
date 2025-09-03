Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2756E2EDD4C
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756938595; cv=none; b=MLYRCGaok1AUUpz3JWXum79Fnca+EZGreQB+ZMCItEHCnikmeHuhDZRzQJ5J9ncCyFeC0eXZS6qTyL/j/WK950iycgwxfQuw1NMdpjehnzgi7txdLur5xc8dZ3bKlGYXy7ugR0nDZSgrZCBjsAwxk0viuYvLOie7XiQyZDhXWQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756938595; c=relaxed/simple;
	bh=h7EqmuLeu7Jw0vtt87L2UiRtayYjCjICzqy15Ed6GYY=;
	h=To:Subject:From:Message-Id:Date; b=vGVFpeIaNo00hx27zNtnpOudBaMyH4utmeSff8gH2+am5IfdVkJxdGYZPjQWvyMrqDPXmyIx4l6FyBPL55qw2g34HgZzjUGsllxrpsyAMKlGmYcFmdEKY/1H21C+IPv0f4OYgELYLvtwqI9eN/Qzg5oJulIBIrGWwPyseYdMfZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAT4eZqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAT4eZqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81B3C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756938593;
	bh=h7EqmuLeu7Jw0vtt87L2UiRtayYjCjICzqy15Ed6GYY=;
	h=To:Subject:From:Date:From;
	b=TAT4eZqhC5gK/LSKbCvxKEfPu6NR639rZOQX9eXDKtJK+OoRR1xia6U7CpwpQuRq7
	 6Jceu3Gh6808HlrQfhPPtcPGuDe65AtwxVniIx542vBZRbw62LvKeV8SWosSFQbcLZ
	 bvDje6u9Akw7K17SQGYRI3Q4dXibUsvAqZy4uO5jKlFNIEqGveW3Aw9kllCToNZts9
	 nrMKLf8Y1uPjEI3vMGKeQZbxsW6n9FoTJtt+xHKrEbu4K6dA88TEookhddtyHwbfd8
	 UgCeAFEzMs84YHJlDY5/7NXhovdOEuZN+jLq/zzBytQJC33r9qBlAVSK0r6SHiO6dm
	 zrOguljcXI0sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93207CA1010
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175693859358.28577.266493702067852612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be41a4b3e1a2fa7175ff96bc62971c0c6772e69c3a41917eb4e617bc3ac512e2
Date: Wed, 03 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756938593
