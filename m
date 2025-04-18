Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4452821171F
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745013594; cv=none; b=VOzIXejBtu4qUJO8S9wExyNk2xBZhMmCYPiwy0sFF052zlfDt5cwgxKSlYhG8GIjAhWwItkc4+VSIN/QvbsCR39HQKnS+JEpKb2gtuxQfi5f8hMg2AnOAOBpKYIKZgRkr02KttR/52UzLLJbBE+4XiWt1u4+ZQOYKcs0cAfDRZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745013594; c=relaxed/simple;
	bh=0yGrSRFlB7seD3ZA+u4Y7FaV4gCd8Mo+XE15jVkeXy8=;
	h=To:Subject:From:Message-Id:Date; b=dnBrxnZyVGIvWPwBb2+IHXDaW+05pNFtLgRQ71Er9UWQx8IfNuVPuzojEF3aK+YDGuPPJdgV8jMMq4HTpQ9m6T6KVDp4X0hS+btcfa6c37Er0hyTbacrNtBw2ftI8Zu0jgW1bfqMJVJ5mhKpkMB6QIlRXS1gUUfDxvzFirlbq2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsOrtaaK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsOrtaaK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4686C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745013593;
	bh=0yGrSRFlB7seD3ZA+u4Y7FaV4gCd8Mo+XE15jVkeXy8=;
	h=To:Subject:From:Date:From;
	b=NsOrtaaK4YfVp9GCa1U3/3lSd8HTCmSQJX0eC85guIAKX/1FUKarEcw5QpWYpGs8v
	 mbsD9V/MEY+UUFBEk4zYwCJhrYPnK5Bwo7rAjMGTJnG3uLf6E+JgWMfmCRjCRyHOZC
	 jW65RL+EUqZvVEfw7rIzc8Qs6eXl4TGaWciY3jUEE1C3jtLSkJaSX/5ecdJ1Zkt0/w
	 J6Q9IZO8kOeOuUnInE22cyerq6UFruq+CMZelJyIsNVClAh40wUBTVTibG4Pt0CSn3
	 De2OhOW7yKufmab7XIes/dwbZ/uIfaWGtidA6KNBveFFMj3WuTkN+/2BgteEwe8y3n
	 T4K20R3j+7PaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D4AC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174501359359.31368.12911463154670464540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62abc519f6e9cf5341053f3b732bff32007d3014ab97d2f546e6393c5b0fc0ef
Date: Fri, 18 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745013593
