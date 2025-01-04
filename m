Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E06A17C69
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735975554; cv=none; b=BtS+7beFiDNDP/BSQpl6jhCBJsQErS4NITRZmkqckA5BpFF15YeggVq6Jn5p2bpPC+hbSfl+GCPyJ9VAbq9jEgSwCHQ2GK4sDH9QbEoitLeHAh5fIakJudghkbdd/gQUNnFqfdxXWRhaV7eT5VvcWvBWeGvpTLL1FxEaeEQUvqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735975554; c=relaxed/simple;
	bh=wKdp0owI4D39quVKwGvVsaA1SkMc5Ui/tV7RsGOzSWM=;
	h=To:Subject:From:Message-Id:Date; b=PiROLmVJJmSJlX/G0qd2fJa9qWiXEjPN8UNZ7OZGbhpBcS2yC8yukWDHypBJJVuXQStuofdxUuyoZVvoqBqYqVb5oqdSg1nKMbbQzIK44hxiakgBDcTC/k+CMz4/ZKuUUic8XYh2A9oYyv8tAY0ePfzQRA56+XEoTWQGh+aWYOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=an7p5PfM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="an7p5PfM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6882C4CEDF
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735975553;
	bh=wKdp0owI4D39quVKwGvVsaA1SkMc5Ui/tV7RsGOzSWM=;
	h=To:Subject:From:Date:From;
	b=an7p5PfMprDUgX1y81PI6zVPKHIH7NExsGDk0qKjzWuBteVLAoMR0n3RlZf4cgwj8
	 I1dFGNhH9Jxcf9t08PnxPA49XjVlJOL1GZBDMCs3buFAAqT6FGQB2wtfzKS2dnyZTm
	 +dBGOoism1K5unbEhWm/OWrUHtIGQiXe9hIbDKx9mrAhj+zK0ccSGry44UYDy2wXj9
	 oZflEpKIiZO3zUqGEovJwuh0T2mnzaVyka0EYk2aGm/PUJB/9SrT2Ma0L488pt3wn7
	 hg8rXIuMc53pgXSC6MJ6PMCiln+0JWdnFLseYuLOCPQkKI/Ai7hq6hoiH+nooEgLFL
	 SUQz5dDt6aF2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AFDE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173597555358.12378.9763749973143916568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cb55b9c649b7f43760f5b7b8abc56637c031da3717aae3c32fe908170bf0b98
Date: Sat, 04 Jan 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735975553
