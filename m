Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113FE1B85F8
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776580654; cv=none; b=qPac6DSADaMt0/KGo6e7l+5WS4Ym7X2hV1dsPqfmdUMS1ZtKo6RekaG4bWVwppquW46Y1+hMuHFUppEqY8jtXDAtbWv+W8leCrjU4pl3Yzmdq5XkQH7PNKuD2//EXF8te3gi3oQ498MooU2Dff3oWU77TAdgvS7NZsTh95I3nPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776580654; c=relaxed/simple;
	bh=ydRrhCV7pSlGxuwKr7sLn3dgYqwMGpELTSmw3Yv8uF0=;
	h=To:Subject:From:Message-Id:Date; b=qGP1tlflsAS38wsuWMoZXoYafpTazxtsmHquM4JiDrG6saHRz91UC34koI18W4KGjqGu4S+KipW+ogOzgqygwGv6nvYBzgvQDzWJP+LUj8wLR5u6qF/eVGU3g3e43Q9l8p2cZld1OfKdGdhEdChTypZmP3wuNGlAEFgTPJ+OSp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rT9wUWgE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rT9wUWgE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C35C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776580653;
	bh=ydRrhCV7pSlGxuwKr7sLn3dgYqwMGpELTSmw3Yv8uF0=;
	h=To:Subject:From:Date:From;
	b=rT9wUWgEk4BmGaEe4wlGeVevDQ77zrbJwkathIjgX4bYrg0CezqetPZc1PeKD69Za
	 jbMtgSrHDYxinZqn0TjI3hwfg140bJYmuOJr6yecHkVnfZmjV0GBpY900RMjt4mDvu
	 gKSopgbv7Y7P87sbIwnwU7AtwZVfs7M+/Kv20R69OsK7jwZoGzmK7EbMfr36FObBGl
	 p6HfH8/Jna4yRvHvDFBRDhjPXgxbHqIfEnbf/wQA6OozOQc9RHq52tMHSkWuPjnurp
	 erixV6RboVUt6ERC4aZjxoYlTomINTZQuEMWkBKFckqmFTPHlWjEeZTuxMQA1VBviq
	 aAmgIb5h+4hlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97A9EA7189
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177658065368.30693.5166477679344646404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95fd0e747bede3911db4f0e6fcd8a3bf8eb4b5eff8c9f4c068573d710e27d1bc
Date: Sun, 19 Apr 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776580653
