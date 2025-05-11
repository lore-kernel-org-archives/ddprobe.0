Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53065129E6E
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746945594; cv=none; b=NuK4x5CtF1pZZmQZp7L77bjR8hd5NyeqG855QoFvtzd6YebsW3QQfP4wDkwicOV9JU4AwI0e7UYy+30thyLSNFyx7UxTjrRnPjSfZUjB/jKy8/Ay5R3IBonE/mOVeYFKuVB4y7yt/auGMqAmL1CAyejf7lNPLeiTbLnBH4rPq7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746945594; c=relaxed/simple;
	bh=3QypRyqpX6L9aWSSRmtdjaeaO6PVjnflM+wepHz4W2Y=;
	h=To:Subject:From:Message-Id:Date; b=bMDth7vRaBFvY9X+npnFLZOy2MatQqrq41jpTTHn6MP/dLpWe/p/jHlhlWi6I2lKBMjLnSsWsJvv5rgN3w0f502pfAelrlTc9NxyXvOQkfsLZ8CVlIdmsP3bpvfYionYnFphIOxA/IL+S9NSqypMB13RVX9Fgly984USFLoegIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EzrYJnzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EzrYJnzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4485C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746945593;
	bh=3QypRyqpX6L9aWSSRmtdjaeaO6PVjnflM+wepHz4W2Y=;
	h=To:Subject:From:Date:From;
	b=EzrYJnzkqIYL7953t9dvefEk5kztk22SIv3+uUduaoyRyM9AF0wT1A0ISJ9xXwmgX
	 zZhY/sBj87W3iUrG+XS5yK4DNisfYoXQZN2BuVqlooN4qH8aPXqwzzsdHyTkcAJxu2
	 ONUQWUczNfvkVBBf4UiBGklKvM8AVDosNWd+bK5FIZrjcO6fKp1LGRH1EfpED+HCvb
	 7c4kZg6bdaHWYBkcmuB8XrCBPjLiRKLq4G6Ls/igBf007/FqYyJaIWu+B+udkFiRLu
	 qcK7hFNv19bKaN6/rbY4CZ+S50CW+fjP+Qw6q9zynQJAuWlVGjluznO94NJhfItbHc
	 8Rfri/i+4APDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F683C3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174694559358.3542.6755098408372557003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8baf5862cfed5bfc3e311b10a12813bd944b4df9617a67e760a85304dbf9da96
Date: Sun, 11 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746945593
