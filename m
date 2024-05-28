Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA26182B3
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 04:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716870863; cv=none; b=LoS+nLu03qA8xEeHeCQfjXZHW+0sIbNg0i+c0xhhRDwfmJiaACufhp2d38uFGq7AwewkheL1S5TByqIiVjmTgv+csb3PAc+GS7cjeFW3xGanf829GIpH8NdML3wUucE7xxalt5TjrfBWet/JsCMDgOTfNrDzhFPvTt7Fn4E7mWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716870863; c=relaxed/simple;
	bh=HLJy5c/5GKmwmRcjdRha4sRgqA2IILGtvZ1J1gRXb5I=;
	h=To:Subject:From:Message-Id:Date; b=PH6Pt+87HfEtjJxJsbRP/kOXs8qKJnAXMrx7UqnXjnkti/iO6YLb1VIorjbvEWzIUOX0eRnQHecZMoY9BP9RbWXoW5BhDts26zHEwh83kBslw9NlXt7SqvZZ/PNYa0j04LzFNgOi7SWjAE0b6SiG8HkKUByJQPfnMtNXvLab+38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOrNayWZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOrNayWZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EADC3C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 04:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716870863;
	bh=HLJy5c/5GKmwmRcjdRha4sRgqA2IILGtvZ1J1gRXb5I=;
	h=To:Subject:From:Date:From;
	b=oOrNayWZ2ih6IzMD9XS1AKXKzihqaetffhr/fQl4FLR73R8m1yGgnmlG+XrllsxI2
	 wivC2GlKP/e2InbimYnWtuvg0HhtsZ1xcEvSq0lif8IsFm6qK1cQedjn8WOttftwBg
	 /ouyUHtiq4YIty/16A5qEIh6HXSElTxHcW61xTkCJj8auNOvorWaHfB9stXQFliihM
	 sPiF+lJJ0oLW7lI2aMFkY4DRQrbOKvkxjkuG0cCdQapIZVI4NABeIshEBZS6PEMDnN
	 mJWDh1ttN1edBeBEgioLs5lvH4VwK3/dY53jxf5ioJSC6GoLDlNuCwbbKkE/oQeYW9
	 tx6+c0HWPsiIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D49A4C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 04:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171687086286.11197.14463822731830539433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1923673cbf7970a7afe50c2cf12cb4806781f57bc62332bd13016313f4438f53
Date: Tue, 28 May 2024 04:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716870862
