Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36805849C
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 06:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740722934; cv=none; b=vCUZKVY/g7Pgivg9QAxPLF9K56TqIOEK7W/vqNl0OFIM8o3nQQJKCHBSgiw+WCLA60H+UnNIszr+mLt8iWH/PM4ewHboqMqnq5Qfo3Ldk/93XZJJf8pPdH6xlUoo+dTk8c6zLhRXYctrSFiuf6BsFUyZ4YmML9jkJlMwZFvEJl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740722934; c=relaxed/simple;
	bh=JvXjMbf0xn/MWmDekFhEZdMXwt438DSmCYy5rB7tWH8=;
	h=To:Subject:From:Message-Id:Date; b=JQ9yOutGF+WfYYiYrg0mhffV9HeTGrWaXeXEHjRkm7sevFcOMhBDcU1QptZzjKDfdO69zOffivugth43uayHvNHaI8rINrHnKqLKmJMxug3l/WPYcp79DITqnx65tdsrSUtpmQDK9hiZZIIDq/2e/+2Gb2StvuyYwd6tk+HQzOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1lZkE9M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1lZkE9M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF61EC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 06:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740722933;
	bh=JvXjMbf0xn/MWmDekFhEZdMXwt438DSmCYy5rB7tWH8=;
	h=To:Subject:From:Date:From;
	b=I1lZkE9MuDAY8/se2sMvaZBV1kvXVeKML5Ea3W4KlzE9iyy+pQPfYTr71si8M+IVj
	 bdAvCNLErl1v8QEEquvIj4ClGKjkuIpMvRjLgvdWb6cma2QpEZTEzvbPPgENX0Nq0x
	 UgtdROcS1HBIVxOUsD88ky7HSltLg+q2PJNDr3yjibGpA4XIYpexrZ4mje5pGT9E29
	 UAPH46/IB2Xg9IogTWsQzQbeONxZE6KSGMxX5pAt5JaUTdXb/oGPl4zFniaWPYLScE
	 8VRLfMRbeuKQg2Cc8sTcA949KpFm8a/cmlIMQ7A0p2drm548gV5GV6Hr2yYO2Dyvjs
	 HEHzAonI0qRRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9857BC282C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 06:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174072293360.13716.710791318942404003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21bfd7533961ee02f63ce41b16dbd55d0d247e4b0938af5179ff454255a845f4
Date: Fri, 28 Feb 2025 06:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740722933
