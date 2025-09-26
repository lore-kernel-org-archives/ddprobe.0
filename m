Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137A1EAE7
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758905395; cv=none; b=fuTrTGHzRdyfJPHKshT2vQ5e7hqNgt3VixaZDTFzlNVR+kk/sH+FJzM1eP9kBc1RKRgZ3WkEy3ndEwcIdLBG/0h8O+w/xA1VfgqPP9BPfE6b8lZRNiDOMv2r1yefVSh2vwKLPA7HSfb+GPJ4AQs5O+ZQDfpTIUXY75tJP6pjJww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758905395; c=relaxed/simple;
	bh=/ToSjZB/zv5uQeQyS4Sa6gOeGjhDley7QZjrDWisj9c=;
	h=To:Subject:From:Message-Id:Date; b=l19rucAkyNJ94Qg7LZt5fqSFOV9TWkopL7wpMwmnxIqCknC4XM/PcGJFUn2SfkZl1npgCkIf4jQcuGkwQTsY1CDcJ/40PAfJea5Io+kZB0Rsy7H5fIOeat7EKcnLnesffxP2X6ay937LeXT1nRzjm8UFz4fCg2IL8zUuxtAkKU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSH3WGZK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSH3WGZK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A664EC113CF
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758905393;
	bh=/ToSjZB/zv5uQeQyS4Sa6gOeGjhDley7QZjrDWisj9c=;
	h=To:Subject:From:Date:From;
	b=tSH3WGZKDxBsesbW6/Tk+X7ShJ8Tkyf0cPNqUHAzlGj3R3+LPm0kEa2kqA1kq2QYe
	 4LL3tNRKRJAz3QaK9BRMU1uoXWuZuDGMlZk5iZjp3tIpiW0kOualqQcbRQJH2iUAkG
	 DrMvsYKWnS/jeo0DM4gypVEqAz7ciB09Cw2s78A3j9UwgqLlUsfjbY+wYOMZDr0Riw
	 iysGFUQvGo7zfjJpa/VDq9R1ugyUwgXfct6+a+aHAORXNzY6sbvSjPrOntxezebfqz
	 xwOWWyBilpSqfQIpOBTZJccxQ6a0U28pPU1UD63Nw4MrhPk3Lzv0RXbcJ8u2m2l89a
	 TO28XTLF8Lldg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95485CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175890539360.18377.6257397558846152408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d1f4dd9bd693404ab617771df6c18b54169c9ef287fbe330c5960c41d4c5fc2
Date: Fri, 26 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758905393
