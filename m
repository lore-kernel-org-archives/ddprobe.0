Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD491474CC
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760147994; cv=none; b=QV2HcKZYJGXFeFhUSvEyp3bhXOzandry42tNk7rQzCTFJ0xGi8ZOESy16LQ9H20r4O4n9SLkFlZN1YvrzYPPlTqRd5ih54FljIwRSgha4PrcRacA0i2poZPO6GEzgjPogCOW3B+kFFPSjGLHMUYMgBhgh86FVTuh2f+4Ht8MydM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760147994; c=relaxed/simple;
	bh=5IZHVdds7cE6u8/rAxGcYuzDKHWuBWuBVRcjtQTCOig=;
	h=To:Subject:From:Message-Id:Date; b=sthe1t9PikNSW+6btwwSrkNzfG8dzWJqkpwm0OJ0TvOiGgVqVQ0+JRYjchX+mRUOTVPTjkrqyHbUcl/vZhjRqxf8j0AmlWAZCT/jU8P0kElytpXCrXb/DoXw1W5Qv4JwtXfyKhAaWw7DDPpAYEXF1SSBygNyFbfN8762IhAHFh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwRPgXvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwRPgXvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F582C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760147993;
	bh=5IZHVdds7cE6u8/rAxGcYuzDKHWuBWuBVRcjtQTCOig=;
	h=To:Subject:From:Date:From;
	b=dwRPgXvC7ZytDUZHksWYFJmlLPIvpnxfABsdqb/wIAGEEt9JYoChyx8A7WuBp/U+5
	 m6m9Hy+iNFKg2cK/YQb872jpdpafEU04DGplV3lD9gDs+3iYdxfeVS+fr4XZPBGRY/
	 MsaWBOUIb1f2R9VXA0PuPJHLDJ+m23/xM6Bhc257oRhJ6fZQrrfYdnPhb0rKbWmWRS
	 c41xD45gien3EWNwKCRj6w2dwwFi8h2XDWnxowNDXkCKakE1/r519yuQhno0Z+4yzO
	 OZ/10Nn03UAIsKVOZS91XkFMIohVOht7Z9NKe5HBwg/jfO6OCXd3T/go/KaiULhkli
	 BDJjfaukUNaJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8E7CCD185
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176014799357.19543.9227975968026162506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1c1f31453bc45d0bab4cccb83ed6328d034fa8039b5fdcc8425259f44a7ffe7
Date: Sat, 11 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760147993
