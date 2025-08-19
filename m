Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F65C3101AA
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755637794; cv=none; b=ZqQsnGj+FG3/A1fqPQKzMdzkjly0kgR0WjrwaUciGr/y7IumKegSJiHTQRDydRJC+lO1F/ge/1AE8dcgIstqXuD//YQfl77Jwbva9mccwV7/ewNT4lw8Dwp8F824wmCuwQ9t5DL4H8l+2UnfMy3kHXY99ri1iVUkmadvVBNyWkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755637794; c=relaxed/simple;
	bh=0s8KPn4UsAKa0JQrhVFy1Xk7lRxyoxvIegtMyJWcdfM=;
	h=To:Subject:From:Message-Id:Date; b=gOvnHqojyOm0ztgLgq0d23FW+U53GxkpYQcw5cNlVmI49x9ygiwD8hwWipNGDsd7dYu/UN+19E01WfU/IiOsKP0ukpqItrNS38OQ41ujHELS6s6XE4G8ajrsH3WPDiemFUOcNnvqARX0aSRAZgrp/T6EAfW4KO/8WbKz3Ssdpqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzfcwQ17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzfcwQ17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F957C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755637793;
	bh=0s8KPn4UsAKa0JQrhVFy1Xk7lRxyoxvIegtMyJWcdfM=;
	h=To:Subject:From:Date:From;
	b=HzfcwQ178yJM3KQQ5k4MTcWckw090Y49KWWtprx8hvB13ml1sf9zQaaaidI1C00ie
	 4lXXLYDM0sCLtswBJV0pxNQ3pX78SBIY0D+hT2Qp6kyy3JCwCUmpPmfyrZZrXXjdaz
	 OdzawnxPa2F/iOJ4AgaUnN8B5drhYxoIj5omQLcSML1w54GgyNyY+suSR+BdGQxNk+
	 cRa3CmzbcPADbZQsHx1nsyh5nr46Gvai3fyOrvCMIbPNzGcWe+pv4YKQnBaN0f0ZJ1
	 lX8kZA6ozde1X4/s2u/5Mk7byKuvKdL6A6Qx/AXhOhxnjrF42cLKZUa90C1czRMrqx
	 gyUiYDH6KJ6Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F196CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175563779357.13896.992824921808514399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0535a2b2b51109a37ccf9e6966391c2c03595af2c4080208a3009ff15403cd0
Date: Tue, 19 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755637793
